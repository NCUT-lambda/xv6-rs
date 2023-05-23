#![no_std]
#![feature(linkage)]
#![feature(panic_info_message)]
#![allow(unused)]

pub mod console;
mod lang_items;
mod syscall;

#[no_mangle]
#[link_section = ".text.entry"]
pub extern "C" fn _main() -> ! {
    let ret = main();
    exit(ret);
    panic!("unreachable after sys_exit!");
}

#[linkage = "weak"]
#[no_mangle]
fn main() -> i32 {
    panic!("cannot find main!");
}

// fn clear_bss() {
//     extern "C" {
//         fn start_bss();
//         fn end_bss();
//     }
//     (start_bss as usize..end_bss as usize)
//         .for_each(|x| unsafe { (x as *mut u8).write_volatile(0) });
// }

use syscall::*;

pub fn write(fd: usize, buf: &[u8]) -> isize {
    sys_write(fd, buf)
}

pub fn exit(exit_code: i32) -> i32 {
    sys_exit(exit_code) as i32
}
