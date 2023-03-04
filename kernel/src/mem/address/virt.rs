//! virtual address structure and virtual page number structure

use super::super::page_table::PageTableEntry;
use super::super::param::{
    MAX_VIRT_ADDR, MAX_VPN, PAGE_BITS, PAGE_SIZE, PTE_NUM_PER_PAGE, PTE_NUM_PER_PAGE_BITS,
};
use core::fmt::{self, Debug, Formatter};

// virtual address structure
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct VirtAddr(usize);

impl Debug for VirtAddr {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        f.write_fmt(format_args!("VA:{:#x}", self.0))
    }
}

impl VirtAddr {
    // with empty initialized
    pub fn empty() -> Self {
        Self(0usize)
    }
    pub fn new(va: usize) -> Self {
        Self(va)
    }
    pub fn get(&self) -> usize {
        self.0
    }
    pub fn set(&mut self, va: usize) {
        self.0 = va & MAX_VIRT_ADDR;
    }
    pub fn add(&mut self, offset: usize) -> Self {
        self.0 = (self.0 + offset) & MAX_VIRT_ADDR;
        *self
    }

    // get page number
    pub fn page_number(&self) -> usize {
        self.get() >> PAGE_BITS
    }
    // get page offset
    pub fn page_offset(&self) -> usize {
        self.get() & (PAGE_SIZE - 1)
    }

    // aligned
    pub fn aligned(&self) -> bool {
        self.page_offset() == 0
    }
    // align down
    pub fn align_down(&self) -> Self {
        Self::new(self.get() & (!(PAGE_SIZE - 1)))
    }
    // align up
    pub fn align_up(&self) -> Self {
        Self::new((self.get() + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
    }

    // read
    pub fn read<T>(&self) -> &'static mut T {
        let src: *mut T = (*self).into();
        unsafe { src.as_mut().unwrap() }
    }

    // from raw parts
    pub fn from_raw_parts(&self, len: usize) -> &'static [u8] {
        assert!(self.aligned());

        let src: *const u8 = (*self).into();
        unsafe { core::slice::from_raw_parts(src, len) }
    }
    pub fn from_raw_parts_mut(&self, len: usize) -> &'static mut [u8] {
        assert!(self.aligned());

        let src: *mut u8 = (*self).into();
        unsafe { core::slice::from_raw_parts_mut(src, len) }
    }
}

// cast between VirtAddr and raw pointer
impl<T> From<*const T> for VirtAddr {
    fn from(ptr: *const T) -> Self {
        Self::new(ptr as usize)
    }
}
impl<T> Into<*const T> for VirtAddr {
    fn into(self) -> *const T {
        self.get() as *const T
    }
}

impl<T> From<*mut T> for VirtAddr {
    fn from(ptr: *mut T) -> Self {
        Self::new(ptr as usize)
    }
}
impl<T> Into<*mut T> for VirtAddr {
    fn into(self) -> *mut T {
        self.get() as *mut T
    }
}

// virtual page number structure
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct VirtPageNum(usize);

impl Debug for VirtPageNum {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        f.write_fmt(format_args!("VPN:{:#x}", self.0))
    }
}

impl VirtPageNum {
    // with empty initialized
    pub fn empty() -> Self {
        Self(0usize)
    }
    pub fn new(vpn: usize) -> Self {
        Self(vpn & MAX_VPN)
    }
    pub fn get(&self) -> usize {
        self.0
    }
    pub fn set(&mut self, vpn: usize) {
        self.0 = vpn & MAX_VPN;
    }
    pub fn add(&self, offset: usize) -> Self {
        Self((self.0 + offset) & MAX_VPN)
    }

    pub fn indexs(&self) -> [usize; 3] {
        let mut idxs = [0usize; 3];
        let mut offset = self.get();
        for i in 0..3 {
            idxs[i] = offset & ((1 << PTE_NUM_PER_PAGE_BITS) - 1);
            offset >>= PTE_NUM_PER_PAGE_BITS;
        }
        idxs
    }

    pub fn get_byte_array(&self) -> &'static mut [u8] {
        VirtAddr::from(*self).from_raw_parts_mut(PAGE_SIZE)
    }
    pub fn get_pte_array(&self) -> &'static mut [PageTableEntry] {
        VirtAddr::from(*self).read::<[PageTableEntry; PTE_NUM_PER_PAGE]>()
    }
}

// cast between VirtPageNum and VirtAddr
impl From<VirtPageNum> for VirtAddr {
    fn from(vpn: VirtPageNum) -> Self {
        Self::new(vpn.get() << PAGE_BITS)
    }
}

impl Into<VirtPageNum> for VirtAddr {
    fn into(self) -> VirtPageNum {
        VirtPageNum::new(self.get() >> PAGE_BITS)
    }
}
