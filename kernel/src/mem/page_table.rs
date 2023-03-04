use alloc::collections::BTreeMap;
use bitflags::*;
use core::fmt::{self, Debug, Formatter};

use crate::param::SIZEOF_USIZE;

use super::{
    address::{PhysAddr, PhysPageNum, VirtAddr, VirtPageNum},
    kalloc,
    page_allocator::PageTracker,
    param::{MAX_PPN, MAX_VIRT_ADDR, MAX_VPN, PTE_FLAGS_BITS, PTE_NUM_PER_PAGE},
};

bitflags! {
    pub struct PTEFlags: u8 {
        const V = 1 << 0;
        const R = 1 << 1;
        const W = 1 << 2;
        const X = 1 << 3;
        const U = 1 << 4;
        const G = 1 << 5;
        const A = 1 << 6;
        const D = 1 << 7;
    }
}

#[derive(Clone, Copy)]
#[repr(C)]
pub struct PageTableEntry(usize);

impl Debug for PageTableEntry {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        f.write_fmt(format_args!("PTE:{:#x}", self.0))
    }
}

impl From<PhysPageNum> for PageTableEntry {
    fn from(ppn: PhysPageNum) -> Self {
        Self(ppn.get() << 10)
    }
}

impl PageTableEntry {
    pub fn empty() -> Self {
        Self(0)
    }
    pub fn new(ppn: PhysPageNum, flags: PTEFlags) -> Self {
        Self((ppn.get() << PTE_FLAGS_BITS) | flags.bits() as usize)
    }
    pub fn get(&self) -> usize {
        self.0
    }

    pub fn ppn(&self) -> PhysPageNum {
        PhysPageNum::new((self.0 >> PTE_FLAGS_BITS) & MAX_PPN)
    }
    pub fn flags(&self) -> PTEFlags {
        PTEFlags::from_bits(self.0 as u8).unwrap()
    }
    pub fn valid(&self) -> bool {
        (self.flags() & PTEFlags::V) != PTEFlags::empty()
    }
    pub fn readable(&self) -> bool {
        (self.flags() & PTEFlags::R) != PTEFlags::empty()
    }
    pub fn writable(&self) -> bool {
        (self.flags() & PTEFlags::W) != PTEFlags::empty()
    }
    pub fn executable(&self) -> bool {
        (self.flags() & PTEFlags::X) != PTEFlags::empty()
    }
    pub fn user_access(&self) -> bool {
        (self.flags() & PTEFlags::U) != PTEFlags::empty()
    }
}

pub struct PageTable {
    pub ppn: PhysPageNum,                          // this pagetable's ppn
    pub pages: BTreeMap<PhysPageNum, PageTracker>, // pages allocated
}

impl PageTable {
    pub fn empty() -> Self {
        let page = kalloc().unwrap();
        let ppn = page.get();
        let mut pages: BTreeMap<PhysPageNum, PageTracker> = BTreeMap::new();
        pages.insert(ppn, page);
        Self { ppn, pages }
    }
    pub fn remove_tracker(&mut self, ppn: PhysPageNum) {
        self.pages.remove(&ppn);
    }

    pub fn print_pagetable(&self) {
        let mut ppn = self.ppn;
        println!("pagetable: {:?}", ppn);
        for (i, pte) in ppn.get_pte_array().into_iter().enumerate() {
            if !pte.valid() {
                continue;
            }
            println!(
                "  ..{:?}, {:?}",
                VirtAddr::from(VirtPageNum::new(ppn.get())).add(i * SIZEOF_USIZE),
                pte.ppn(),
            );
            ppn = pte.ppn();

            for (i, pte) in ppn.get_pte_array().into_iter().enumerate() {
                if !pte.valid() {
                    continue;
                }
                println!(
                    "    ..{:?}, {:?}",
                    VirtAddr::from(VirtPageNum::new(ppn.get())).add(i * SIZEOF_USIZE),
                    pte.ppn()
                );
                ppn = pte.ppn();

                for (i, pte) in ppn.get_pte_array().into_iter().enumerate() {
                    if pte.valid() {
                        println!(
                            "      ..{:?}, {:?}",
                            VirtAddr::from(VirtPageNum::new(ppn.get())).add(i * SIZEOF_USIZE),
                            pte.ppn()
                        );
                    }
                }
            }
        }
        println!("print kernel pagetable success!");
    }

    pub fn walk(&self, vpn: VirtPageNum) -> Option<&mut PageTableEntry> {
        assert!(vpn.get() <= MAX_VPN);

        let idxs = vpn.indexs();
        let mut ppn = self.ppn;
        let mut res: Option<&mut PageTableEntry> = None;
        for level in (0..3).rev() {
            let pte = &mut ppn.get_pte_array()[idxs[level]];
            if level == 0 {
                res = Some(pte);
                break;
            }
            if !pte.valid() {
                break;
            }
            ppn = pte.ppn();
        }
        res
    }
    pub fn walk_alloc(&mut self, vpn: VirtPageNum) -> Option<&mut PageTableEntry> {
        assert!(vpn.get() <= MAX_VPN);

        let idxs = vpn.indexs();
        let mut ppn = self.ppn;
        let mut res: Option<&mut PageTableEntry> = None;
        for level in (0..3).rev() {
            let pte = &mut ppn.get_pte_array()[idxs[level]];
            if level == 0 {
                res = Some(pte);
                break;
            }
            if !pte.valid() {
                if let Some(page) = kalloc() {
                    page.get().zero(); // clear this page
                    *pte = PageTableEntry::new(page.get(), PTEFlags::V);
                    self.pages.insert(page.get(), page);
                } else {
                    break;
                }
            }
            ppn = pte.ppn();
        }
        res
    }

    // Look up a virtual address, return the physical address,
    // or 0 if not mapped.
    // Can only be used to look up user pages.
    pub fn walkaddr(&self, vpn: VirtPageNum) -> Option<PhysPageNum> {
        assert!(vpn.get() <= MAX_VPN);

        if let Some(pte) = self.walk(vpn) {
            if !pte.valid() {
                None
            } else {
                Some(pte.ppn().into())
            }
        } else {
            None
        }
    }

    pub fn map(&mut self, vpn: VirtPageNum, ppn: PhysPageNum, flags: PTEFlags) {
        assert!(vpn.get() <= MAX_VPN);
        assert!(ppn.get() <= MAX_PPN);

        let pte = self.walk_alloc(vpn).unwrap();
        // println!("{:?} {:?} {:?}", vpn, ppn, *pte);
        assert!(!pte.valid());
        *pte = PageTableEntry::new(ppn, flags | PTEFlags::V);
        // println!("{:?}", *pte);
    }

    pub fn map_range(&mut self, vpn: VirtPageNum, ppn: PhysPageNum, num: usize, flags: PTEFlags) {
        for i in 0..num {
            self.map(vpn.add(i), ppn.add(i), flags);
        }
    }

    pub fn unmap(&mut self, vpn: VirtPageNum) {
        assert!(vpn.get() <= MAX_VPN);

        let pte = self.walk(vpn).unwrap();
        assert!(pte.valid());
        assert!(pte.flags() != PTEFlags::V, "not a leaf");
        *pte = PageTableEntry::empty();
        self.remove_tracker(pte.ppn());
    }
    pub fn unmap_range(&mut self, vpn: VirtPageNum, num: usize) {
        for i in 0..num {
            self.unmap(vpn.add(i));
        }
    }
    pub fn make_satp(&self) -> usize {
        (8usize << 60) | self.ppn.get()
    }

    pub fn walktest(&self) {
        let vpn1 = VirtPageNum::new(0x80201);
        let vpn2 = VirtPageNum::new(0x80305);
        println!("{:?} {:?}", vpn1, self.walkaddr(vpn1));
        println!("{:?} {:?}", vpn2, self.walkaddr(vpn2));
    }
}
