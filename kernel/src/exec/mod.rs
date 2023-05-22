use core::mem::transmute;

use self::elf::{Elfhdr, ELF_MAGIC};

pub mod elf;

pub fn exec(src: *const u8) -> i32 {
	let elf: &Elfhdr = unsafe {&*(src as *const Elfhdr)};

	if elf.magic != ELF_MAGIC {
		return -1;
	}

	

	0
}