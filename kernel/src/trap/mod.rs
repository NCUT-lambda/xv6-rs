use crate::{lock::spinlock::Spinlock, riscv::Addr, sync::upcell::UPCell};
use core::arch::global_asm;
use lazy_static::*;
use riscv::register::stvec;

global_asm!(include_str!("trampoline.S"));
global_asm!(include_str!("kernelvec.S"));

mod plic;
mod trap;
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

pub fn trapinit() {
    println!("trapinit success!");
}

pub fn trapinithart() {
    unsafe { stvec::write(kernelvec as Addr, riscv::register::utvec::TrapMode::Direct) }
    println!("trapinithart success!");
}
