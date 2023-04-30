use core::{
    ptr::null_mut,
    sync::atomic::{fence, AtomicBool, Ordering},
};
use riscv::register::sstatus;

use crate::todo::proc::{mycpu, Cpu};

pub struct Spinlock {
    locked: AtomicBool,

    // 用于调试
    name: &'static str,
    cpu: *mut Cpu,
}

impl Spinlock {
    pub fn new(name: &'static str) -> Self {
        Self {
            name,
            locked: AtomicBool::new(false),
            cpu: null_mut(),
        }
    }

    pub fn acquire(&mut self) {
        push_off(); // 关中断，避免死锁
        if self.holding() {
            panic!("acquire");
        }

        while self
            .locked
            .compare_exchange(false, true, Ordering::Acquire, Ordering::Acquire)
            .is_err()
        {} // 自选等待
        fence(Ordering::SeqCst);

        self.cpu = mycpu();
    }

    pub fn release(&mut self) {
        if !self.holding() {
            panic!("release");
        }

        self.cpu = null_mut();
        fence(Ordering::SeqCst);
        pop_off();
    }

    pub fn holding(&self) -> bool {
        self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
    }
}

fn push_off() {
    let old = sstatus::read().sie();

    unsafe { sstatus::clear_sie() }
    let mc = &mut unsafe { *mycpu() };

    if mc.noff == 0 {
        mc.intena = old.into();
        mc.noff += 1;
    }
}

fn pop_off() {
    let mc = &mut unsafe { *mycpu() };
    if sstatus::read().sie() {
        panic!("pop_off - interruptible");
    }
    if mc.noff < 1 {
        panic!("pop_off");
    }
    if mc.noff == 0 && mc.intena {
        unsafe { sstatus::set_sie() }
    }
}
