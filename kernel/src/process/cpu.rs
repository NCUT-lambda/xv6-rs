use core::{arch::asm, ptr::null_mut};

use crate::{param::NPROC, riscv::r_tp, sync::upcell::UPCell};

use super::{context::Context, proc::Proc};
use array_macro::array;
use lazy_static::lazy_static;

// #[derive(Clone, Copy)]
pub struct Cpu {
    pub proc: *mut Proc,
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

lazy_static! {
    static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
}

pub fn cpuid() -> usize {
    r_tp()
}

pub fn mycpu() -> *mut Cpu {
    let id = cpuid();
	&mut CPUS.get_mut()[id]
}
