#![allow(unused)]
pub const MAXVA: usize = 1 << (9 + 9 + 9 + 12 - 1);
pub const PGSIZE: usize = 4096;
pub const KERNBASE: usize = 0x80200000;
pub const PHYSTOP: usize = KERNBASE + 128 * 1024 * 1024;
pub const TRAPOLINE: usize = MAXVA - PGSIZE;
pub const TRAPFRAME: usize = 0x80ffe000;