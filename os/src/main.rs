#![no_std]
#![no_main]
#![feature(panic_info_message)]

#[macro_use]
mod lang_items;
mod sbi;
mod console;
mod riscv;

use core::arch::global_asm;
use core::arch::asm;

#[no_mangle]
pub static stack: usize = 0;

global_asm!(include_str!("entry.asm"));

fn test() {
    unsafe {
        asm! (
			"la a0, stack"
        );
    }
}
 
#[no_mangle]
pub fn main() {
	clear_bss();
	println!("Hello World!");
	test();
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