use crate::{
    riscv::{Addr, PGSIZE, PTE_R, PTE_W, PTE_X},
    string::memset,
    sync::upsafecell::UPSafeCell,
};

use super::{
    kalloc::kalloc,
    memlayout::{KERNBASE, PHYSTOP, PLIC, TRAMPOLINE, UART0, VIRTIO0},
    pagetable::PagetableT,
};
use lazy_static::*;

extern "C" {
    fn ekernel();
    fn trampoline();
}

pub struct Kvm {
    kernel_pagetable: PagetableT<'static>,
}

impl Kvm {
    fn new() -> Self {
        let kpgtbl = PagetableT::addr2pagetablet(kalloc());
        memset(kpgtbl.pagetablet2addr(), 0, PGSIZE);
        Self {
            kernel_pagetable: kpgtbl,
        }
    }

    fn kvmmake(&mut self) {
        let ekernel = ekernel as Addr;

        self.kvmmap(UART0, UART0, PGSIZE, PTE_R | PTE_W);

        self.kvmmap(VIRTIO0, VIRTIO0, PGSIZE, PTE_R | PTE_W);

        self.kvmmap(PLIC, PLIC, 0x400000, PTE_R | PTE_W);

        self.kvmmap(KERNBASE, KERNBASE, ekernel - KERNBASE, PTE_R | PTE_X);

        self.kvmmap(ekernel, ekernel, PHYSTOP - ekernel, PTE_R | PTE_W);

        self.kvmmap(TRAMPOLINE, trampoline as Addr, PGSIZE, PTE_R | PTE_X);
    }

    fn kvmmap(&mut self, va: Addr, pa: Addr, sz: Addr, perm: usize) {
        if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
            panic!("kvmmap");
        }
        // println!("kvmmap: va: {:#x}, pa: {:#x}", va, pa);
    }
}

lazy_static! {
    static ref KVM: UPSafeCell<Kvm> = UPSafeCell::new(Kvm::new());
}

pub fn kvminit() {
    KVM.access_exclusive().kvmmake();
    println!("kvminit success!");
}
