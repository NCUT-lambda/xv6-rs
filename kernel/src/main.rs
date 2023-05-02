#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]

use core::{
    arch::global_asm,
    sync::atomic::{fence, AtomicBool, Ordering},
};

use crate::{
    console::{consoleinit, printfinit},
    logo::print_logo,
    memory::{
        kalloc::kinit,
        kvm::{kvminit, kvminithart},
    },
    process::{cpu::cpuid, proc::procinit},
    trap::{plicinit, plicinithart, trapinit, trapinithart},
};

#[macro_use]
mod console;
mod lang_items;
mod logo;
mod param;
mod sbi;

#[macro_use]
pub mod riscv;
pub mod string;
pub mod sync;
pub mod allocator;

pub mod lock;
mod memory;
mod trap;
mod fs;
mod syscall;
mod driver;
pub mod process;

global_asm!(include_str!("entry.S"));

static STATED: AtomicBool = AtomicBool::new(false);

#[no_mangle]
pub fn main() {
    clear_bss();

    if cpuid() == 0 {
        consoleinit();
        printfinit();
        print_logo();
        println!("xv6-rust kernel is booting...");
        println!("");
        kinit();
        kvminit();
        kvminithart();
        procinit();
        trapinit();
        trapinithart();
        plicinit();
        plicinithart();

        STATED.store(true, Ordering::SeqCst);
    } else {
        while !STATED.load(Ordering::SeqCst) {}

        println!("hart {} starting...", cpuid());
        kvminithart();
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
