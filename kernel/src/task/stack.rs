use super::param::MAX_APP_NUM;
use crate::trap::TrapContext;

const KSTACK_SIZE: usize = 4096 * 2;
const USTACK_SIZE: usize = 4096 * 2;

#[repr(align(4096))]
#[derive(Clone, Copy)]
pub struct KernelStack {
    data: [u8; KSTACK_SIZE],
}

#[repr(align(4096))]
#[derive(Clone, Copy)]
pub struct UserStack {
    data: [u8; USTACK_SIZE],
}

pub static KERNEL_STACK: [KernelStack; MAX_APP_NUM] = [KernelStack {
    data: [0; KSTACK_SIZE],
}; MAX_APP_NUM];

pub static USER_STACK: [UserStack; MAX_APP_NUM] = [UserStack {
    data: [0; USTACK_SIZE],
}; MAX_APP_NUM];

impl KernelStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + KSTACK_SIZE;
        ret
    }
    pub fn push_trapcontext(&self, cx: TrapContext) -> usize {
        let cx_ptr = (self.get_sp() - core::mem::size_of::<TrapContext>()) as *mut TrapContext;

        unsafe {
            *cx_ptr = cx;
        }
        cx_ptr as usize
    }
}

impl UserStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + USTACK_SIZE;
        ret
    }
}
