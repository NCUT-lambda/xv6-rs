use alloc::vec;
use alloc::vec::Vec;
use bitflags::*;

use crate::mm::address::VirtPageNum;
use crate::mm::param::MAX_VIRT_ADDR;

use super::address::VirtAddr;
use super::{
    address::{PhysAddr, PhysPageNum},
    kalloc,
    page_allocator::PageTracker,
    param::{MAX_PPN, PAGE_BITS, PTE_FLAGS_BITS},
};

bitflags! {
    pub struct PTEFlags: u8 {
        const V = 1 << 0;
        const R = 1 << 1;
        const W = 1 << 2;
        const X = 1 << 3;
        const U = 1 << 4;
    }
}

// page table entry
#[derive(Copy, Clone)]
#[repr(C)]
pub struct PageTableEntry {
    pub bits: usize,
}

impl From<PhysAddr> for PageTableEntry {
    fn from(pa: PhysAddr) -> Self {
        Self {
            bits: (usize::from(pa) >> PAGE_BITS) << PTE_FLAGS_BITS,
        }
    }
}

impl From<PhysPageNum> for PageTableEntry {
    fn from(ppn: PhysPageNum) -> Self {
        Self {
            bits: usize::from(ppn) << PTE_FLAGS_BITS,
        }
    }
}

impl PageTableEntry {
    fn new(ppn: PhysPageNum, flags: PTEFlags) -> Self {
        Self {
            bits: (usize::from(ppn) << PTE_FLAGS_BITS) | flags.bits as usize,
        }
    }

    fn clear_flags(&mut self) {
        self.bits &= !((1 << PTE_FLAGS_BITS) - 1);
    }

    fn set_flags(&mut self, flags: PTEFlags) {
        self.bits = self.bits & !((1 << PTE_FLAGS_BITS) - 1) | flags.bits as usize;
    }

    pub fn get_ppn(&self) -> PhysPageNum {
        PhysPageNum::from(self.bits >> PTE_FLAGS_BITS & MAX_PPN)
    }

    pub fn get_flags(&self) -> PTEFlags {
        PTEFlags::from_bits(self.bits as u8).unwrap()
    }

    pub fn valid(&self) -> bool {
        (self.get_flags() & PTEFlags::V) != PTEFlags::empty()
    }

    pub fn readable(&self) -> bool {
        (self.get_flags() & PTEFlags::R) != PTEFlags::empty()
    }

    pub fn writable(&self) -> bool {
        (self.get_flags() & PTEFlags::W) != PTEFlags::empty()
    }

    pub fn executable(&self) -> bool {
        (self.get_flags() & PTEFlags::X) != PTEFlags::empty()
    }

    pub fn user_access(&self) -> bool {
        (self.get_flags() & PTEFlags::U) != PTEFlags::empty()
    }
}

pub struct PageTable {
    pa: PhysAddr,
    pages: Vec<PageTracker>,
}

impl PageTable {
    pub fn new() -> Self {
        let page = kalloc().unwrap();
        PageTable {
            pa: page.pa,
            pages: vec![page],
        }
    }

    // return mutable reference of PTE at pagetable[idx]
    pub fn index(&self, idx: usize) -> &mut PageTableEntry {
        let pte_ptr: *mut PageTableEntry = (*self).pa.into();
        unsafe { pte_ptr.as_mut().unwrap() }
    }

    // given a virtual address, return its zero level pte
    pub fn walk(&self, va: VirtAddr) -> Option<&mut PageTableEntry> {
        assert!(va <= VirtAddr::from(MAX_VIRT_ADDR));

        let vpn = VirtPageNum::from(va);
        let idxs = vpn.indexes();

        let mut ret: Option<&mut PageTableEntry> = None;
        for level in (0..3).rev() {
            let pte = self.index(idxs[level]);
			if level == 2 {
				ret = Some(pte);
				break;
			}
			
        }
        ret
    }
}
