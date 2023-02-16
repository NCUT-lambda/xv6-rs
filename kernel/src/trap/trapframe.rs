use crate::mem::TRAPFRAME;
#[repr(C)]
pub struct TrapFrame {
    pub x: [usize; 32],   // 32 gerneral registers
    pub epc: usize,       // saved user program counter
    pub kernel_sp: usize, // kernel stack pointer
}

impl TrapFrame {
    pub fn set_sp(&mut self, sp: usize) {
        self.x[2] = sp;
    }
    pub fn app_init_trapframe(entry: usize, ksp: usize, usp: usize) {
		println!("in app init");
        let mut tf = Self {
            x: [0; 32],
            epc: entry,
            kernel_sp: ksp,
        };
        tf.set_sp(usp);
		println!("set ok!");
        unsafe {
            tf.to_trapframe();
        }
		println!("save ok!");
    }
    unsafe fn to_trapframe(&self) {
		core::ptr::copy(self as *const Self, TRAPFRAME as *mut Self, core::mem::size_of::<Self>());
		println!("save success!");
	}
	pub unsafe fn from_trapframe() -> Self {
		let mut tf: TrapFrame = TrapFrame { x: [0;32], epc: 0, kernel_sp: 0 };
		core::ptr::copy(TRAPFRAME as *const Self, &mut tf, core::mem::size_of::<Self>());
		tf
	}
}
