#![no_std]
#![no_main]
#![feature(panic_info_message)]

use core::arch::global_asm;

#[macro_use]
mod console;
mod lang_items;
mod logo;
mod sbi;

pub mod const;

mod mem;

global_asm!(include_str!("asm/entry.S"));

#[no_mangle]
pub fn main() {
    clear_bss();
    println!("Hello world");
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
