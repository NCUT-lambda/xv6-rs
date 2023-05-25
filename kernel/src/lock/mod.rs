use riscv::register::sstatus;

use crate::{process::cpu::{Cpu, mycpu}, riscv::{intr_get, intr_off, intr_on}};

pub mod sleeplock;
pub mod spinlock;

pub fn push_off() {
    let old = intr_get();

    intr_off();
    let mut mc = unsafe { &mut *mycpu() };

    // 第一次 push_off，需要记录之前的中断开启状态
    if mc.noff == 0 {
        mc.intena = old;
    }
    mc.noff += 1;
}

pub fn pop_off() {
    let mc: &mut Cpu = unsafe { &mut *mycpu() };
    if intr_get() {
        panic!("pop_off - interruptible");
    }
    if mc.noff < 1 {
        panic!("pop_off {}", mc.noff);
    }
    mc.noff -= 1;
    if mc.noff == 0 && mc.intena {
        intr_on();
    }
}