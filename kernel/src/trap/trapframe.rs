#[repr(C)]
pub struct Trapframe {
    pub x: [usize; 32], // 通用寄存器
    pub kernel_satp: usize,
    pub kernel_sp: usize,
    pub kernel_trap: usize,
    pub epc: usize,
    pub kernel_hartid: usize, // 内核 tp
}
