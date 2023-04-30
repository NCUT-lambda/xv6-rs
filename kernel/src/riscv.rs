use core::arch::asm;

#[inline]
pub fn r_sp() -> usize {
    let x: usize;
    unsafe { asm!("mv {}, sp", out(reg) x) }
    x
}

#[inline]
pub fn w_sp(x: usize) {
    unsafe { asm!("mv sp, {}", in(reg) x) }
}

#[inline]
pub fn r_tp() -> usize {
    let x: usize;
    unsafe { asm!("mv {}, tp", out(reg) x) }
    x
}

#[inline]
pub fn w_tp(x: usize) {
    unsafe { asm!("mv tp, {}", in(reg) x) }
}

#[inline]
pub fn sfence_vma() {
    unsafe { asm!("sfence.vma zero, zero") }
}
