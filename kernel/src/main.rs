#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]

use core::arch::global_asm;

use crate::{
    console::{consoleinit, printfinit},
    logo::print_logo,
    todo::proc::cpuid,
};

#[macro_use]
mod console;
mod lang_items;
mod logo;
mod sbi;

pub mod r#const;

pub mod allocator;
mod lock;
mod mem;

pub mod todo;

global_asm!(include_str!("asm/entry.S"));

#[no_mangle]
static mut started: u64 = 0;

#[no_mangle]
pub fn main() {
    clear_bss();

    if cpuid() == 0 {
        consoleinit();
        printfinit();
        print_logo();
        println!("xv6-rust kernel is booting...");
        println!("");
    } else {
        while unsafe { started } == 0 {}
    }

    panic!("Shutdown!");
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
