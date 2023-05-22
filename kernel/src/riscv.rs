use core::arch::asm;

use riscv::register::sstatus;

// 开启设备中断
#[inline]
pub fn intr_on() {
    unsafe { sstatus::set_sie() };
}

// 关闭设备中断
#[inline]
pub fn intr_off() {
    unsafe {sstatus::clear_sie()};
}

// 中断时候开启
#[inline]
pub fn intr_get() -> bool {
    unsafe {sstatus::read().sie()}
}


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

pub type Addr = usize;

pub const PGSIZE: usize = 4096;
pub const PGSHIFT: usize = 12;
pub const NPTE: usize = 512;

pub type PteT = usize;

pub const PTE_V: usize = 1 << 0;
pub const PTE_R: usize = 1 << 1;
pub const PTE_W: usize = 1 << 2;
pub const PTE_X: usize = 1 << 3;
pub const PTE_U: usize = 1 << 4;

pub fn pa2pte(pa: Addr) -> PteT {
    (pa >> 12) << 10
}

pub fn pte2pa(pte: PteT) -> Addr {
    (pte >> 10) << 12
}

pub fn pte_flags(pte: PteT) -> usize {
    pte & 0x3ff
}

const PXMASK: usize = 0x1ff;
pub fn pxshift(level: usize) -> usize {
    PGSHIFT + 9 * level
}
pub fn px(level: usize, va: Addr) -> usize {
    (va >> pxshift(level)) & PXMASK
}

pub const SATP_SV39: usize = 8 << 60;

pub const MAXVA: usize = 1 << (9 + 9 + 9 + 12 - 1);
