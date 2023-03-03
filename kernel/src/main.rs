#![no_std]
#![no_main]
#![feature(panic_info_message)]
// #![allow(unused)]
#![feature(alloc_error_handler)]

#[path = "board/qemu.rs"]
mod board;

#[macro_use]
mod console;
mod lang_items;
mod mem;
mod sbi;
mod sync;
pub mod syscall;
mod task;
mod trap;

use core::arch::global_asm;
extern crate alloc;

global_asm!(include_str!("entry.S"));
global_asm!(include_str!("link_app.S"));

#[no_mangle]
pub fn main() {
    clear_bss();
    println!("[kernel] Hello world!");
    trap::init();
    mem::init_heap();
    mem::kernel_heap_test();
    mem::kinit();
    mem::page_allocator_test();
    task::load_apps();
    task::run_first_task();
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
