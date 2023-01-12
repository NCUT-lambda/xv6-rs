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
pub fn rust_main() -> ! {
	clear_bss();
	println!("Hello World!");
	panic!("Shutdown machine!");
}

// 初始化 .bss 数据段
fn clear_bss() {
	extern "C" {
		// 并不存在这两个外部函数
		// 这里只是引用linker.ld里的符号以便使用
		fn sbss();
		fn ebss();
	}
	(sbss as usize..ebss as usize).for_each(|x| {
		unsafe { (x as *mut u8).write_volatile(0)}
	});
}