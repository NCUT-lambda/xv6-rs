use core::arch::asm;

use crate::sync::UPSafeCell;

use super::{
    address::{PhysAddr, VirtAddr, VirtPageNum},
    page_table::{PTEFlags, PageTable},
    param::{KERNELBASE, PAGE_BITS, PAGE_SIZE, PHYSTOP, TRAMPOLINE, TRAPFRAME},
};
use lazy_static::*;
use riscv::register::satp;

extern "C" {
    fn etext();
    fn trampoline();
}

struct KernelSpace {
    pgtbl: PageTable,
}

impl KernelSpace {
    pub fn empty() -> Self {
        Self {
            pgtbl: PageTable::empty(),
        }
    }
    pub fn init(&mut self) {
        self.pgtbl.ppn().zero();

        // map kernel text executable and read-only
        self.pgtbl.map_range(
            VirtAddr::new(KERNELBASE).into(),
            PhysAddr::new(KERNELBASE).into(),
            (etext as usize - KERNELBASE) / PAGE_SIZE,
            PTEFlags::R | PTEFlags::X,
        );

        // map kernel data and the physical RAM we'll make use of
        self.pgtbl.map_range(
            VirtAddr::new(etext as usize).into(),
            PhysAddr::new(etext as usize).into(),
            (PHYSTOP - etext as usize) / PAGE_SIZE,
            PTEFlags::R | PTEFlags::W,
        );

        // map the trampoline for trap entry/exit
        self.pgtbl.map_range(
            VirtAddr::new(TRAMPOLINE).into(),
            PhysAddr::new(trampoline as usize).into(),
            1,
            PTEFlags::R | PTEFlags::X,
        );
    }
    pub fn active(&self) {
        unsafe {
            asm!("sfence.vma");
            satp::write(self.pgtbl.make_satp());
            asm!("sfence.vma");
        }
    }
    pub fn print_kernel_pagetable(&self) {
        self.pgtbl.print_pagetable();
    }
}

lazy_static! {
    static ref KERNEL_SPACE: UPSafeCell<KernelSpace> =
        unsafe { UPSafeCell::new(KernelSpace::empty()) };
}

pub fn kvminit() {
    let mut kernel_space = KERNEL_SPACE.get_mut();
    // println!("empty success!");
    kernel_space.init();
    // println!("init success!");
    kernel_space.active();
    // println!("kvminit success!");
}

pub fn print_kernel_pagetable() {
    KERNEL_SPACE.get_mut().print_kernel_pagetable();
}
