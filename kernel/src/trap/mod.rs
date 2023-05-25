use core::arch::{global_asm, asm};
use core::panic;

use crate::memory::memlayout::{TRAMPOLINE, KERNEL_STACK_SIZE};
use crate::process::proc::myproc;
use crate::riscv::{PGSIZE, r_tp, intr_off};
use crate::syscall::syscall;
use crate::{lock::spinlock::Spinlock, riscv::Addr, sync::upcell::UPCell};
use lazy_static::*;
use riscv::register::scause::{Trap, Exception, Interrupt};
use riscv::register::{satp, sstatus, sepc, scause, stval};
use riscv::register::sstatus::SPP;
use riscv::register::stvec::{self, Stvec};

global_asm!(include_str!("trampoline.S"));
global_asm!(include_str!("kernelvec.S"));

mod plic;
pub mod trapframe;

pub use plic::plicinit;
pub use plic::plicinithart;

pub struct TicksCnt {
    tickslock: Spinlock,
    ticks: usize,
}

lazy_static! {
    static ref TICKSCNT: UPCell<TicksCnt> = UPCell::new(TicksCnt {
        tickslock: Spinlock::new("time"),
        ticks: 0
    });
}

extern "C" {
    fn trampoline();
    fn uservec();
    fn userret();
    fn kernelvec();
}

#[no_mangle]
pub fn usertrap() {
    if sstatus::read().spp() != SPP::User {
        panic!("usertrap: not from user mode");
    }

    // 由于我们现在已经在内核中，所以要将中断
    // 和异常转发到 kernelvec 进行处理
    unsafe {stvec::write(kernelvec as usize, riscv::register::utvec::TrapMode::Direct);}

    let p = unsafe{ &mut *myproc()};
    let tf = unsafe {&mut *p.trapframe};

    // 保存用户 pc
    tf.epc = sepc::read();

    let scause = scause::read();
    let stval = stval::read();
    match scause.cause() {
        // 系统调用
        Trap::Exception(Exception::UserEnvCall) => {
            tf.epc += 4;
            let res = syscall(tf.x[17], [tf.x[10], tf.x[11], tf.x[12]]) as usize;
            tf.x[10] = res;
        }
        Trap::Exception(Exception::StoreFault) | Trap::Exception(Exception::StorePageFault) => {
            panic!("[kernel] PageFault in application, kernel killed it.");
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            panic!("[kernel] IllegalInstruction in application, kernel killed it.");
        }
        Trap::Interrupt(Interrupt::SupervisorTimer) => {
            
        }
        _ => {
            panic!(
                "Unsupported trap {:?}, stval = {:#x}, sepc = {:#x}!",
                scause.cause(),
                stval,
                riscv::register::sepc::read()
            );
        }
    }

    usertrapret();
}

#[no_mangle]
pub fn usertrapret() {
    let p = unsafe { &*myproc() };

    // 我们即将将 trap 地址从 kernelvec 改变为 usertvec
    // 所以关闭中断直到回到用户空间，从而确保用户的 trap 
    // 能够正确地被 usertrap() 处理
    intr_off();

    // 用户的系统调用，中断以及异常会被转发到 trampoline.S 中的 uservec 处理
    let trammpoline_uservec = TRAMPOLINE + (uservec as Addr - trampoline as Addr);
    unsafe {
        stvec::write(
            trammpoline_uservec,
            riscv::register::utvec::TrapMode::Direct,
        );
    }

    // 设置一些下次 trap 时 uservec 会使用的 trapframe 的一些值
    let tf = unsafe { &mut *p.trapframe };
    tf.kernel_satp = unsafe { satp::read().bits() };
    tf.kernel_sp = p.kstack + KERNEL_STACK_SIZE;
    tf.kernel_trap = usertrap as Addr;
    tf.kernel_hartid = r_tp();

    // 下面是设置一些为 trampoline.S 的 sret 指令
    // 作准备的寄存器

    unsafe {
        sstatus::set_spp(SPP::User);  // 将 sstatus 寄存器的 SPP 位设置为 User
        sstatus::set_spie();          // 开启用户模式的中断
    }

    // 写回之前保存的 sepc
    sepc::write(tf.epc);

    let satp = p.uvm.pagetable.make_satp();

    // 跳转到 trampoline.S 中的 userret
    let trampoline_userret = TRAMPOLINE + (userret as Addr - trampoline as Addr);
    unsafe {
        asm! {
            "jr {0}",
            in(reg) trampoline_userret,
            in("a0") satp
        }
    }
}

#[no_mangle]
pub fn kerneltrap() {}

pub fn clockintr() {}

pub fn devintr() {}


pub fn trapinit() {
    println!("trapinit success!");
}

pub fn trapinithart() {
    unsafe { stvec::write(kernelvec as Addr, riscv::register::utvec::TrapMode::Direct) }
    println!("trapinithart success!");
}
