use core::ptr::{null, null_mut};
use lazy_static::*;

use crate::{console::print, lock::spinlock::Spinlock, string::memset};

use super::{
    memlayout::{PGSIZE, PHYSTOP},
    pgroundup,
};

extern "C" {
    fn ekernel(); // 定义在 kernel.ld 中
}

#[derive(Clone, Copy)]
struct Run {
    next: *mut Run,
}

struct Kmem {
    lock: Spinlock,
    freelist: *mut Run,
}

impl Kmem {
    const fn new() -> Self {
        Self {
            lock: Spinlock::new("kmem"),
            freelist: null_mut(),
        }
    }

    fn freerange(&mut self, pa_start: usize, pa_end: usize) {
        let mut pa = pgroundup(pa_start);
        while pa < pa_end - PGSIZE {
            self.kfree(pa);
            pa += PGSIZE;
        }
    }

    fn kfree(&mut self, pa: usize) {
        if pa % PGSIZE != 0 || pa < ekernel as usize || pa >= PHYSTOP {
            panic!("kfree");
        }

        memset(pa, 1, PGSIZE);

        let pa = pa as *mut Run;
        self.lock.acquire();
        unsafe { (*pa).next = self.freelist }
        self.freelist = pa;
        self.lock.release();
    }

    fn kalloc(&mut self) -> usize {
        let mut r: *mut Run = null_mut();

        self.lock.acquire();
        r = self.freelist;
        if r != null_mut() {
            unsafe { self.freelist = (*r).next }
        }
        self.lock.release();

        if r != null_mut() {
            memset(r as usize, 5, PGSIZE);
        }

        r as usize
    }
}

static mut KMEM: Kmem = Kmem::new();

pub fn kinit() {
    unsafe { KMEM.freerange(ekernel as usize, PHYSTOP) }
    println!("kinit success!");
}

pub fn kalloc() -> usize {
    unsafe { KMEM.kalloc() }
}
