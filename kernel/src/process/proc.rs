use core::cell::Cell;

use crate::{lock::spinlock::Spinlock, param::NPROC, sync::upcell::UPCell};
use lazy_static::*;

pub struct Proc {
    lock: Spinlock,
}

impl Proc {
    pub const fn new() -> Self {
        Self {
            lock: Spinlock::new("proc"),
        }
    }
}

pub fn procinit() {}
