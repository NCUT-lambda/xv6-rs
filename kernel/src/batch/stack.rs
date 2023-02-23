use crate::trap::TrapContext;

const KSTACK_SIZE: usize = 4096 * 2;
const USTACK_SIZE: usize = 4096 * 2;

#[repr(align(4096))]
pub struct KernelStack {
	data: [u8; KSTACK_SIZE]
}

#[repr(align(4096))]
pub struct UserStack {
	data: [u8; USTACK_SIZE]
}

pub static KERNEL_STACK: KernelStack = KernelStack {
    data: [0; KSTACK_SIZE],
};

pub static USER_STACK: UserStack = UserStack {
    data: [0; USTACK_SIZE],
};

impl KernelStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + KSTACK_SIZE;
        ret
    }
    pub fn push_trapcontext(&self, cx: TrapContext) -> &'static mut TrapContext {
        let cx_ptr = (self.get_sp() - core::mem::size_of::<TrapContext>()) as *mut TrapContext;

        unsafe {
            *cx_ptr = cx;
        }
        unsafe { cx_ptr.as_mut().unwrap() }
    }
}

impl UserStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + USTACK_SIZE;
        ret
    }
}