use core::ptr::null_mut;

#[derive(Clone, Copy)]
pub struct Cpu {
    proc: *mut Proc,
    context: Context,
    pub noff: i32,
    pub intena: bool,
}

pub struct Proc {}

#[derive(Clone, Copy)]
pub struct Context {}

pub fn mycpu() -> *mut Cpu {
    null_mut()
}

pub fn cpuid() -> u64 {
    0
}
