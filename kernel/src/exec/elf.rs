// ELF 文件格式

use crate::riscv::{PTE_X, PTE_W};

pub const ELF_MAGIC: u32 = 0x464C457F;

// elf file header
#[repr(C)]
pub struct Elfhdr {
    pub magic: u32,
    elf: [u8; 12],
    type_: u16,
    machine: u16,
    version: u32,
    pub entry: usize,
    pub phoff: usize,
    shoff: usize,
    flags: u32,
    ehsize: u16,
    phentsize: u16,
    pub phnum: u16,
    shentsize: u16,
    shnum: u16,
    shstrndx: u16,
}

// program section header
#[repr(C)]
pub struct Proghdr {
    pub type_: u32,
    pub flags: u32,
    pub off: usize,
    pub vaddr: usize,
    pub paddr: usize,
    pub filesz: usize,
    pub memsz: usize,
    pub align: usize,
}

// values for proghdr type
pub const ELF_PROG_LOAD: u32 = 1;

// flag bits for proghdr flags
pub const ELF_PROG_FLAG_EXEC: u32 = 1;
pub const ELF_PROG_FLAG_WRITE: u32 = 2;
pub const ELF_PROG_FLAG_READ: u32 = 4;

pub fn flags2perm(flags: u32) -> usize {
	let mut perm: usize = 0;
	if flags & ELF_PROG_FLAG_EXEC != 0 {
		perm |= PTE_X;
	}
	if flags & ELF_PROG_FLAG_WRITE != 0 {
		perm |= PTE_W;
	}
	perm
}