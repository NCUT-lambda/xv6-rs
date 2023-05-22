use core::{arch::asm, ptr::null_mut};

use crate::{param::NPROC, riscv::r_tp, sync::upcell::UPCell};

use super::{context::Context, proc::Proc};
use array_macro::array;
use lazy_static::lazy_static;

// CPU 控制块
pub struct Cpu {
    pub proc: *mut Proc,    // 运行在此 cpu 上的进程，可以为空
    pub context: Context,       // 内核调度器 scheduler() 线程的上下文
    pub noff: isize,        // push_off() 的层数
    pub intena: bool,       // 在 push_off 之前中断是否开启
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

// 调用时必须先关中断
// 确保进程不会被移动给另外一个 cpu
pub fn cpuid() -> usize {
    r_tp()
}

// 调用时必须先关中断
// 返回一个 struct Cpu
pub fn mycpu() -> *mut Cpu {
    let id = cpuid();
	&mut CPUS.get_mut()[id]
}
