use core::{
    mem::transmute,
    ptr::null_mut,
    sync::atomic::{fence, AtomicBool, Ordering},
};
use riscv::register::sstatus;

use crate::process::cpu::{mycpu, Cpu};

pub struct Spinlock {
    locked: AtomicBool,

    // 用于调试
    name: &'static str,
    cpu: *mut Cpu,
}

impl Spinlock {
    pub const fn new(name: &'static str) -> Self {
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
        {} // 自旋等待
        fence(Ordering::SeqCst);

        self.cpu = mycpu();
    }

    pub fn release(&mut self) {
        if !self.holding() {
            panic!("release");
        }

        self.cpu = null_mut();

        fence(Ordering::SeqCst);

        self.locked.store(false, Ordering::Release);

        pop_off();
    }

    pub fn holding(&self) -> bool {
        self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
    }
}

pub fn push_off() {
    let old = sstatus::read().sie();

    unsafe { sstatus::clear_sie() }
    let mut mc = unsafe { &mut *mycpu() };

    if mc.noff == 0 {
        mc.intena = old;
    }
    mc.noff += 1;
}

pub fn pop_off() {
    let mc: &mut Cpu = unsafe { transmute(mycpu()) };
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
