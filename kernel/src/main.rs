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
    driver::virtio_disk_init,
    fs::{binit, fileinit, iinit},
    logo::print_logo,
    memory::{
        kalloc::kinit,
        kvm::{kvminit, kvminithart},
    },
    process::{cpu::cpuid, proc::procinit, scheduler, userinit},
    sbi::start_hart,
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
pub mod allocator;
pub mod string;
pub mod sync;

mod driver;
mod fs;
pub mod lock;
mod memory;
pub mod process;
mod syscall;
mod trap;
mod exec;

global_asm!(include_str!("entry.S"));

static STATED: AtomicBool = AtomicBool::new(false);

#[no_mangle]
pub fn main(hartid: usize) {
    clear_bss();
    // start_hart(hartid);

    if cpuid() == 0 {
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
        binit(); 			// 初始化缓冲区
        iinit(); 			// 初始化 inode 表
        fileinit(); 		// 初始化文件表
        virtio_disk_init(); // 初始化磁盘设备
        userinit(); 		// 启动第 0 个进程

        STATED.store(true, Ordering::SeqCst);
    } else {
        while !STATED.load(Ordering::SeqCst) {}

        println!("hart {} starting...", cpuid());
        kvminithart();
        trapinithart();
        plicinithart();
    }
    scheduler();

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
