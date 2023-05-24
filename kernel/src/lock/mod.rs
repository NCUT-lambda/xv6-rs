use riscv::register::sstatus;

use crate::{process::cpu::{Cpu, mycpu}, riscv::{intr_get, intr_off}};

pub mod sleeplock;
pub mod spinlock;

pub fn push_off() {
    let old = intr_get();

    intr_off();
    let mut mc = unsafe { &mut *mycpu() };

    if mc.noff == 0 {
        mc.intena = old;
    }
    mc.noff += 1;
}

pub fn pop_off() {
    let mc: &mut Cpu = unsafe { &mut *mycpu() };
    if sstatus::read().sie() {
        panic!("pop_off - interruptible");
    }
    if mc.noff < 1 {
        panic!("pop_off");
    }
    mc.noff -= 1;
    if mc.noff == 0 && mc.intena {
        unsafe { sstatus::set_sie() }
    }
}