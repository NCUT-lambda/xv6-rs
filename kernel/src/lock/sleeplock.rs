use core::sync::atomic::AtomicBool;

use crate::todo;

use super::spinlock::Spinlock;

pub struct Sleeplock {
	locked: bool,
	lk: Spinlock,

	name: &'static str,
	pid: i32
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
		todo!()
	}

	pub fn release(&mut self) {
		todo!()
	}
}