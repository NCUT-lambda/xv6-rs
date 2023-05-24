use core::arch::{global_asm, asm};

use crate::memory::memlayout::TRAMPOLINE;
use crate::process::proc::myproc;
use crate::riscv::{PGSIZE, r_tp, intr_off};
use crate::{lock::spinlock::Spinlock, riscv::Addr, sync::upcell::UPCell};
use lazy_static::*;
use riscv::register::{satp, sstatus, sepc};
use riscv::register::sstatus::SPP;
use riscv::register::stvec;

global_asm!(include_str!("trampoline.S"));
global_asm!(include_str!("kernelvec.S"));

mod plic;
pub mod trapframe;

pub use plic::plicinit;
pub use plic::plicinithart;

extern "C" {
    fn kernelvec();
}

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
    fn uservec();
    fn trampoline();
    fn userret();
}

#[no_mangle]
pub fn usertrap() {}

#[no_mangle]
pub fn usertrapret() {
    let p = unsafe { &*myproc() };

    intr_off();

    let trammpoline_uservec = TRAMPOLINE + (uservec as Addr - trampoline as Addr);
    unsafe {
        stvec::write(
            trammpoline_uservec,
            riscv::register::utvec::TrapMode::Direct,
        );
    }

    let tf = unsafe { &mut *p.trapframe };
    tf.kernel_satp = unsafe { satp::read().bits() };
    tf.kernel_sp = p.kstack + PGSIZE;
    tf.kernel_trap = usertrap as Addr;
    tf.kernel_hartid = r_tp();

    unsafe {
        sstatus::set_spp(SPP::User);
        sstatus::set_spie();
    }

    sepc::write(tf.epc);

    let satp = p.uvm.pagetable.make_satp();

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
