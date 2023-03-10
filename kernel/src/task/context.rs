use crate::trap::user_trap_return;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct TaskContext {
    s: [usize; 12],
    ra: usize,
    sp: usize,
}

impl TaskContext {
    pub fn new() -> Self {
        Self {
            s: [0; 12],
            ra: 0,
            sp: 0,
        }
    }
    pub fn init(&mut self, ksp: usize) {
        self.ra = user_trap_return as usize;
        self.sp = ksp;
    }
}
