use crate::{
    riscv::{sfence_vma, Addr, PGSIZE, PTE_R, PTE_W, PTE_X},
    string::memset,
    sync::upcell::UPCell,
};

use super::{
    kalloc::kalloc,
    memlayout::{KERNBASE, PHYSTOP, PLIC, TRAMPOLINE, UART0, VIRTIO0},
    pagetable::PagetableT,
};
use lazy_static::*;
use riscv::register::satp;

extern "C" {
    fn etext();
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
        let etext = etext as Addr;

        self.kvmmap(UART0, UART0, PGSIZE, PTE_R | PTE_W);

        self.kvmmap(VIRTIO0, VIRTIO0, PGSIZE, PTE_R | PTE_W);

        self.kvmmap(PLIC, PLIC, 0x400000, PTE_R | PTE_W);

        self.kvmmap(KERNBASE, KERNBASE, etext as Addr - KERNBASE, PTE_R | PTE_X);

        self.kvmmap(etext, etext, PHYSTOP - etext, PTE_R | PTE_W);

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
    static ref KVM: UPCell<Kvm> = UPCell::new(Kvm::new());
}

pub fn kvminit() {
    KVM.get_mut().kvmmake();
    println!("kvminit success!");
}

pub fn kvminithart() {
    sfence_vma();

    satp::write(KVM.get_mut().kernel_pagetable.make_satp());

    sfence_vma();

    println!("kvminithart success!");
}

pub fn kvmtest() {
    let va: [usize; 3] = [0x823f8000, KERNBASE, 0x87fff000];
    let mut pa: [usize; 3] = [0; 3];

    let mut kvm = KVM.get_mut();

    for i in 0..3 {
        pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
        if pa[i] != va[i] {
            println!("pa: {:#x}, va: {:#x}", pa[i], va[i]);
        }
    }
}
