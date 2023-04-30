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
// unused RAM after 80000000.

// the kernel uses physical memory thus:
// 80200000 -- entry.S, then kernel text and data
// end -- start of kernel page allocation area
// PHYSTOP -- end RAM used by the kernel

pub const MAXVA: usize = 1 << (9 + 9 + 9 + 12 - 1);

pub const PGSIZE: usize = 4096;
pub const PGSHIFT: usize = 12;

pub const KERNBASE: usize = 0x80200000;
pub const PHYSTOP: usize = 0x88000000;

pub const TRAMPOLINE: usize = MAXVA - PGSIZE;

pub const TRAPFRAME: usize = TRAMPOLINE - PGSIZE;
