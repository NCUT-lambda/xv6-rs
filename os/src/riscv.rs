#![allow(unused)]

use core::arch::asm;

// which hart (core) is this?
#[inline(always)]
pub fn r_mhatid() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, mhartid",
            out(reg) x
        );
    }
    x
}

/// Machine Status Register, mstatus

pub const MSTATUS_MPP_MASK: usize = 3 << 11; // previous mode.
pub const MSTATUS_MPP_M: usize = 3 << 11;
pub const MSTATUS_MPP_S: usize = 1 << 11;
pub const MSTATUS_MPP_U: usize = 0 << 11;
pub const MSTATUS_MIE: usize = 1 << 11; // machine-mode interrupt enable.

#[inline(always)]
pub fn r_mstatus() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, mstatus",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_mstatus(x: usize) {
    unsafe {
        asm! (
            "csrw mstatus, {0}",
            in(reg) x
        );
    }
}

// machine exception program counter, holds the
// instruction address to which a return from
// exception will go.
#[inline(always)]
pub fn w_mepc(x: usize) {
    unsafe {
        asm! (
            "csrw mepc, {0}",
            in(reg) x
        );
    }
}

// Supervisor Status Register, sstatus

pub const SSTATUS_SPP: usize = 1 << 8;
pub const SSTATUS_SPIE: usize = 1 << 5;
pub const SSTATUS_UPIE: usize = 1 << 4;
pub const SSTATUS_SIE: usize = 1 << 1;
pub const SSTATUS_UIE: usize = 1 << 0;

#[inline(always)]
pub fn r_sstatus() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, sstatus",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_sstatus(x: usize) {
    unsafe {
        asm! (
            "csrw sstatus, {0}",
            in(reg) x
        );
    }
}

// Supervisor Interrupt Pending
#[inline(always)]
pub fn r_sip() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, sip",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_sip(x: usize) {
    unsafe {
        asm! (
            "csrw sip, {0}",
            in(reg) x
        );
    }
}

// Supervisor Interrupt Enable

pub const SIE_SEIE: usize = 1 << 9; // external
pub const SIE_STIE: usize = 1 << 5; // timer
pub const SIE_SSIE: usize = 1 << 1; // software

#[inline(always)]
pub fn r_sie() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, sie",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_sie(x: usize) {
    unsafe {
        asm! (
            "csw sie, {0}",
            in(reg) x
        );
    }
}

// Machine-mode Interrupt Enable

pub const MIE_MEIE: usize = 1 << 11;
pub const MIE_MTIE: usize = 1 << 7;
pub const MIE_MSIE: usize = 1 << 3;

#[inline(always)]
pub fn r_mie() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, mie",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_mie(x: usize) {
    unsafe {
        asm! (
            "csrw mie, {0}",
            in(reg) x
        );
    }
}

// supervisor exception program counter, holds the
// instruction address to which a return from
// exception will go.
#[inline(always)]
pub fn r_sepc() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, sepc",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_sepc(x: usize) {
    unsafe {
        asm! (
            "csrw sepc, {0}",
            in(reg) x
        );
    }
}

// Machine Exception Delegation
#[inline(always)]
pub fn r_medeleg() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, medeleg",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_medeleg(x: usize) {
    unsafe {
        asm! (
            "csrw medeleg, {0}",
            in(reg) x
        );
    }
}

// Machine Interrupt Delegation
#[inline(always)]
pub fn r_mideleg() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, mideleg",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_mideleg(x: usize) {
    unsafe {
        asm! (
            "csrw mideleg, {0}",
            in(reg) x
        );
    }
}

// Supervisor Trap-Vector Base Address
// low two bits are mode.
#[inline(always)]
pub fn r_stvec() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, stvec",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_stvec(x: usize) {
    unsafe {
        asm! (
            "csrw stvec, {0}",
            in(reg) x
        );
    }
}

// Machine-mode interrupt vector
#[inline(always)]
pub fn w_mtvec(x: usize) {
    unsafe {
        asm! (
            "csrw mtvec, {0}",
            in(reg) x
        );
    }
}

// Physical Memory Protection
#[inline(always)]
pub fn w_pmpcfg0(x: usize) {
    unsafe {
        asm! (
            "csrw pmpcfg0, {0}",
            in(reg) x
        );
    }
}

#[inline(always)]
pub fn w_pmpaddr0(x: usize) {
    unsafe {
        asm! (
            "csrw pmpaddr0, {0}",
            in(reg) x
        );
    }
}

// use riscv's sv39 page table scheme.
pub const SATP_SV39: usize = 8 << 60;

#[macro_export]
macro_rules! MAKE_SATP {
    ($pagetable: expr) => {
        SATP_SV39 | ((($pagetable) as usize) >> 12)
    };
}

// supervisor address translation and protection;
// holds the address of the page table.
#[inline(always)]
pub fn r_satp() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, satp",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_satp(x: usize) {
    unsafe {
        asm! (
            "csrw satp, {0}",
            in(reg) x
        );
    }
}

#[inline(always)]
pub fn w_mscratch(x: usize) {
    unsafe {
        asm! (
            "csrw mscratch, {0}",
            in(reg) x
        );
    }
}

#[inline(always)]
pub fn r_scause() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, scause",
            out(reg) x
        );
    }
    x
}

// Supervisor Trap Value
#[inline(always)]
pub fn r_stval() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, stval",
            out(reg) x
        );
    }
    x
}

// Machine-mode Counter-Enable
#[inline(always)]
pub fn r_mcounteren() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, mcounteren",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_mcounteren(x: usize) {
    unsafe {
        asm! (
            "csrw mcounteren, {0}",
            in(reg) x
        );
    }
}

// machine-mode cycle counter
#[inline(always)]
pub fn r_time() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, time",
            out(reg) x
        );
    }
    x
}

// enable device interrupts
#[inline(always)]
pub fn intr_on() {
    w_sstatus(r_sstatus() | SSTATUS_SIE);
}

// disable device interrupts
#[inline(always)]
pub fn intr_off() {
    w_sstatus(r_sstatus() & !SSTATUS_SIE);
}

// are device interrupts enabled?
#[inline(always)]
pub fn intr_get() -> bool {
    let x = r_sstatus();
    (x & SSTATUS_SIE) != 0
}

#[inline(always)]
pub fn r_sp() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, sp",
            out(reg) x
        );
    }
    x
}

// read and write tp, the thread pointer, which xv6 uses to hold
// this core's hartid (core number), the index into cpus[].
#[inline(always)]
pub fn r_tp() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, tp",
            out(reg) x
        );
    }
    x
}
#[inline(always)]
pub fn w_tp(x: usize) {
    unsafe {
        asm! (
            "csrw tp, {0}",
            in(reg) x
        );
    }
}

#[inline(always)]
pub fn r_ra() -> usize {
    let mut x: usize;
    unsafe {
        asm! (
            "csrr {0}, ra",
            out(reg) x
        );
    }
    x
}

// flush the TLB.
#[inline(always)]
pub fn sfence_vma() {
    // the zero, zero means flush all TLB entries.
    unsafe {
        asm!("sfence_vma zero, zero");
    }
}

#[allow(non_camel_case_types)]
type pte_t = usize;
#[allow(non_camel_case_types)]
type pagetable_t = *mut usize;

pub const PGSIZE: usize = 4096; // bytes per page
pub const PGSHIFT: usize = 12; // bits of offset within a page

#[macro_export]
macro_rules! PGROUNDUP {
	($sz: expr) => {
		((sz) + PGSIZE -1) & ~(PGSIZE - 1)
	}
}
#[macro_export]
macro_rules! PGROUNDDOWN {
	($sz: expr) => {
		(sz) & ~(PGSIZE - 1)
	}
}

pub const PTE_V: usize = 1 << 0; // valid
pub const PTE_R: usize = 1 << 1;
pub const PTE_W: usize = 1 << 2;
pub const PTE_X: usize = 1 << 3;
pub const PTE_U: usize = 1 << 4; // user can access

// shift a physical address to the right place for a PTE.
#[macro_export]
macro_rules! PA2PTE {
    ($pa: expr) => {
        (($pa) as usize >> 12) << 10
    };
}
#[macro_export]
macro_rules! PTE2PA {
    ($pte: expr) => {
        (($pte) >> 10) << 12
    };
}
#[macro_export]
macro_rules! PTE_FLAGS {
    ($pte: expr) => {
        ($pte) & 0x3ff
    };
}

// extract the three 9-bit page table indices from a virtual address.
pub const PXMASK: usize = 0x1ff; // 9 bits
#[macro_export]
macro_rules! PXSHIFT {
    ($level: expr) => {
        PGSHIFT + (9 * (level))
    };
}
#[macro_export]
macro_rules! PX {
    ($level: expr, $va: expr) => {
        ((($va) as usize) >> PXSHIFT!($level)) & PXMASK
    };
}

// one beyond the highest possible virtual address.
// MAXVA is actually one bit less than the max allowed by
// Sv39, to avoid having to sign-extend virtual addresses
// that have the high bit set.
pub const MAXVA: usize = (1 << (9 + 9 + 9 + 12 - 1));
