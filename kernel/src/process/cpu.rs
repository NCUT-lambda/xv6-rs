use core::{arch::asm, ptr::null_mut};

use crate::riscv::r_tp;

use super::{context::Context, proc::Proc};

#[derive(Clone, Copy)]
pub struct Cpu {
    proc: *mut Proc,
    context: Context,
    pub noff: isize,
    pub intena: bool,
}

impl Cpu {
    pub const fn new() -> Self {
        Self {
            proc: null_mut(),
            context: Context::new(),
            noff: 0,
            intena: false,
        }
    }
}

static mut CPUS: [Cpu; 8] = [Cpu::new(); 8];

pub fn cpuid() -> usize {
    r_tp()
}

pub fn mycpu() -> *mut Cpu {
    let id = cpuid();
    unsafe { &mut CPUS[id] }
}
