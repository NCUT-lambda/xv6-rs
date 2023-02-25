use riscv::register::{sie, time};

use crate::sbi::set_timer;

const CLOCK_FREQ: usize = 12500000;
const TICKS_PER_SEC: usize = 1000;

pub fn enable_clock_interrupt() {
    unsafe {
        sie::set_stimer();
    }
}

pub fn unable_clock_interrupt() {
    unsafe {
        sie::clear_stimer();
    }
}

pub fn set_next_clock_interrupt() {
    set_timer(time::read() + CLOCK_FREQ / TICKS_PER_SEC);
}
