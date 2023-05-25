use core::mem::transmute;

use self::elf::{Elfhdr, ELF_MAGIC};

pub mod elf;
pub mod apps;

pub fn exec(src: &[u8]) -> i32 {
	let elf: &Elfhdr = unsafe {&*(src.as_ptr() as *const Elfhdr)};

	// 检查 ELF header
	if elf.magic != ELF_MAGIC {
		return -1;
	}


	

	0
}