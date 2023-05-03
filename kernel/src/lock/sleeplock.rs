use core::mem::transmute;

use crate::process::proc::{sleep, myproc, Proc, wakeup};

use super::spinlock::Spinlock;

// 用于长时处理的锁
pub struct Sleeplock {
    locked: bool,	// 此锁是否被持有
    lk: Spinlock,	// 用于保护此锁的自旋锁

	// 用于调试
    name: &'static str,	// 锁的名字
    pid: usize,			// 拥有锁的进程
}

impl Sleeplock {
    pub fn new(name: &'static str) -> Self {
        Self {
            locked: false,
            lk: Spinlock::new("sleep lock"),
            name,
            pid: 0,
        }
    }

    pub fn acquire(&mut self) {
        self.lk.acquire();
		while self.locked {
			sleep(self as *mut Sleeplock, &mut self.lk);
		}
		self.locked = true;
		let p: &mut Proc = unsafe {transmute(myproc())};
		self.pid = p.pid;
		self.lk.release();
    }

    pub fn release(&mut self) {
        self.lk.acquire();
		self.locked = false;
		self.pid = 0;
		wakeup(self as *mut Sleeplock);
		self.lk.release();
    }
}
