#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(const_mut_refs)]
#![feature(allocator_api)]
#![allow(unused)]
#![feature(alloc_error_handler)]
#![feature(sync_unsafe_cell)]

use core::{
    arch::global_asm,
    sync::atomic::{fence, AtomicBool, Ordering}, cell::{Cell, UnsafeCell},
};

use process::proc::Proc;
use ::riscv::register::sstatus;
use sync::upcell::UPCell;

use crate::{
    console::{consoleinit, printfinit},
    driver::virtio_disk_init,
    fs::{binit, fileinit, iinit},
    logo::print_logo,
    memory::{
        kalloc::kinit,
        kvm::{kvminit, kvminithart},
    },
    process::{cpu::cpuid, proc::{procinit, proc_test}, scheduler, userinit},
    sbi::start_hart,
    trap::{plicinit, plicinithart, trapinit, trapinithart},
    riscv::{r_tp, intr_get, intr_off, intr_on},
};

extern crate alloc;

#[macro_use]
mod console;
mod lang_items;
mod logo;
mod param;
mod sbi;

#[macro_use]
pub mod riscv;
pub mod allocator;
pub mod string;
pub mod sync;

mod driver;
mod fs;
pub mod lock;
pub mod memory;
pub mod process;
pub mod syscall;
pub mod trap;
pub mod exec;

global_asm!(include_str!("entry.S"));
global_asm!(include_str!("link_app.S"));

static STARTED: AtomicBool = AtomicBool::new(false);
static FIRST: AtomicBool = AtomicBool::new(true);
static SECOND: AtomicBool = AtomicBool::new(false);

use lazy_static::lazy_static;
lazy_static! {
    static ref A: UPCell<Proc> = UPCell::new(Proc::new());
}

extern "C" {
    fn boot_stack_bottom();
    fn boot_stack_top();
}

use crate::riscv::r_sp;

#[no_mangle]
pub fn main(sp: usize) {
    clear_bss();
    allocator::init_heap();
    // start_hart();


    if FIRST.swap(false, Ordering::SeqCst){
        consoleinit(); 		// 初始化控制台
        printfinit();
        print_logo();
        println!("xv6-rust kernel is booting...");
        println!("");
        kinit(); 			// 初始化物理页分配器
        kvminit(); 			// 创建内核页表
        kvminithart(); 		// 打开分页管理
        procinit(); 		// 初始化进程表
        trapinit(); 		// 中断初始化
        trapinithart(); 	// 设置中断向量
        plicinit(); 		// 开启中断控制器
        plicinithart(); 	// 向 PLIC 请求设备中断
        // // binit(); 		    // 初始化缓冲区
        // // iinit(); 		    // 初始化 inode 表
        // // fileinit(); 		    // 初始化文件表
        // // virtio_disk_init(); // 初始化磁盘设备
        userinit(); 		// 初始化第 0 个进程

        STARTED.store(true, Ordering::SeqCst);
    } else {
        while !STARTED.load(Ordering::SeqCst) {}

        println!("hart {} starting...", cpuid());
        kvminithart();
        trapinithart();
        plicinithart();
        SECOND.store(true, Ordering::SeqCst);
    }

    scheduler();

    // while !SECOND.load(Ordering::SeqCst){}


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
