#![no_std]
#![no_main]
#![feature(panic_info_message)]

#[macro_use]
mod lang_items;
mod sbi;
mod console;

use core::arch::global_asm;
global_asm!(include_str!("entry.asm"));

#[no_mangle]
pub fn main() {
	clear_bss();
	println!("Hello World!");
	panic!("Shutdown machine!");
}

// init .bss segment.
fn clear_bss() {
	// import external symbols.
	extern "C" {
		fn sbss();
		fn ebss();
	}
	(sbss as usize..ebss as usize).for_each(|x| {
		unsafe { (x as *mut u8).write_volatile(0)}
	});
}