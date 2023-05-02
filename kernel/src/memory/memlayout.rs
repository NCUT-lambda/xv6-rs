// Physical memory layout

// qemu -machine virt is set up like this,
// based on qemu's hw/riscv/virt.c:
//
// 00001000 -- boot ROM, provided by qemu
// 02000000 -- CLINT
// 0C000000 -- PLIC
// 10000000 -- uart0
// 10001000 -- virtio disk
// 80200000 -- boot ROM jumps here in machine mode
//             -kernel loads the kernel here
// unused RAM after 80200000.

// the kernel uses physical memory thus:
// 80200000 -- entry.S, then kernel text and data
// end -- start of kernel page allocation area
// PHYSTOP -- end RAM used by the kernel

use crate::riscv::{Addr, MAXVA, PGSIZE};

pub const UART0: Addr = 0x10000000;
pub const UART0_IRQ: usize = 10;

pub const VIRTIO0: Addr = 0x10001000;
pub const VIRTIO0_IRQ: usize = 1;

pub const CLINT: Addr = 0x02000000;

pub const PLIC: Addr = 0x0c000000;

pub fn plic_senable(hart: usize) -> Addr {
    PLIC + 0x2080 + hart * 0x100
}
pub fn plic_spriority(hart: usize) -> Addr {
    PLIC + 0x201000 + hart * 0x2000
}

pub const KERNBASE: Addr = 0x80200000;
pub const PHYSTOP: Addr = 0x88000000;

pub const TRAMPOLINE: Addr = MAXVA - PGSIZE;

pub fn kstack(p: usize) -> Addr {
    TRAMPOLINE - (p + 1) * 2 * PGSIZE
}

pub const TRAPFRAME: Addr = TRAMPOLINE - PGSIZE;
