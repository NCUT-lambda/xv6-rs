use core::arch::asm;

use riscv::register::{
    satp,
    sstatus::{self, SPP},
    stvec, sepc,
};

use crate::{
    memory::memlayout::TRAMPOLINE,
    process::proc::myproc,
    riscv::{intr_off, r_tp, Addr, PGSIZE},
};

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
        }
    }
}

#[no_mangle]
pub fn kerneltrap() {}

pub fn clockintr() {}

pub fn devintr() {}
