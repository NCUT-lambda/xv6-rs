// 内核切换时保存内核的上下文
#[repr(C)]
pub struct Context {
    pub ra: usize, 
    pub sp: usize,
    s: [usize; 12]  // 12 个 callee-saved 寄存器
}

impl Context {
    pub const fn new() -> Self {
        Self {
            ra: 0,
            sp: 0,
            s: [0; 12]
        }
    }
}
