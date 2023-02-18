#![no_std]
#![no_main]
#![feature(panic_info_message)]


#[macro_use]
mod console;
mod mem;
mod sync;
pub mod syscall;
mod trap;
mod batch;
mod lang_items;
mod sbi;

use core::arch::global_asm;

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("link_app.S"));

#[no_mangle]
pub fn main() {
    clear_bss();
    println!("[kernel] Hello world!");
	trap::init();
	batch::init();
	batch::run_next_app();
}

// init .bss segment.
fn clear_bss() {
    // import external symbols.
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|x| unsafe { (x as *mut u8).write_volatile(0) });
}
