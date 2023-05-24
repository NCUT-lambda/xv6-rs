use core::{ptr::null_mut};
use lazy_static::*;
use rustsbi::spec::base::impl_id::KVM;

use crate::{
    lock::spinlock::Spinlock,
    riscv::{Addr, PGSIZE},
    string::memset, sync::upcell::UPCell,
};

use super::{memlayout::PHYSTOP, pgroundup};

extern "C" {
    fn ekernel(); // 定义在 kernel.ld 中
}

#[derive(Clone, Copy)]
#[repr(C)]
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

    fn freerange(&mut self, pa_start: Addr, pa_end: Addr) {
        let mut pa = pgroundup(pa_start);
        while pa < pa_end - PGSIZE {
            self.kfree(pa);
            pa += PGSIZE;
        }
    }

    fn kfree(&mut self, pa: Addr) {
        if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
            panic!("kfree");
        }

		// 填充垃圾数据避免垂悬引用
        memset(pa as *mut u8, 1, PGSIZE);

        let pa = pa as *mut Run;
        self.lock.acquire();
        unsafe { (*pa).next = self.freelist }
        self.freelist = pa;
        self.lock.release();
    }

    fn kalloc(&mut self) -> Addr {
        let mut r: *mut Run = null_mut();

        self.lock.acquire();
        r = self.freelist;
        if r != null_mut() {
            unsafe { self.freelist = (*r).next }
        }
        self.lock.release();

        if r != null_mut() {
            memset(r as *mut u8, 5, PGSIZE);
        }

        r as Addr
    }
}

lazy_static! {
    static ref KMEM: UPCell<Kmem> = UPCell::new(Kmem::new());
}

pub fn kinit() {
    KMEM.get_mut().freerange(ekernel as Addr, PHYSTOP);
    println!("kinit success!");
}

pub fn kalloc() -> Addr {
    KMEM.get_mut().kalloc()
}

pub fn kfree(pa: Addr) {
	KMEM.get_mut().kfree(pa);
}
