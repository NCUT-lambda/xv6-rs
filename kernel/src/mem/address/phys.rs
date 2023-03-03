//! physical address structure and physical page number structure

use super::super::page_table::PageTableEntry;
use super::super::param::{MAX_PHYS_ADDR, MAX_PPN, PAGE_BITS, PAGE_SIZE, PTE_NUM_PER_PAGE};

// physical address structure
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct PhysAddr(usize);

impl PhysAddr {
    // with zero initialized
    pub fn zero() -> Self {
        Self(0usize)
    }
    pub fn new(pa: usize) -> Self {
        Self(pa & MAX_PHYS_ADDR)
    }
    pub fn get(&self) -> usize {
        self.0
    }
    pub fn set(&mut self, pa: usize) {
        self.0 = pa & MAX_PHYS_ADDR;
    }
    pub fn add(&self, offset: usize) -> Self {
        Self((self.0 + offset) & MAX_PHYS_ADDR)
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
        Self(self.get() & (!(PAGE_SIZE - 1)))
    }
    // align up
    pub fn align_up(&self) -> Self {
        Self((self.get() + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
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

// cast between PhysAddr and raw pointer
impl<T> From<*const T> for PhysAddr {
    fn from(ptr: *const T) -> Self {
        Self::new(ptr as usize)
    }
}
impl<T> Into<*const T> for PhysAddr {
    fn into(self) -> *const T {
        self.get() as *const T
    }
}

impl<T> From<*mut T> for PhysAddr {
    fn from(ptr: *mut T) -> Self {
        Self::new(ptr as usize)
    }
}
impl<T> Into<*mut T> for PhysAddr {
    fn into(self) -> *mut T {
        self.get() as *mut T
    }
}

// physical page number structure
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct PhysPageNum(usize);

impl PhysPageNum {
    // with zero initialized
    pub fn zero() -> Self {
        Self(0usize)
    }
    pub fn new(ppn: usize) -> Self {
        Self(ppn & MAX_PPN)
    }
    pub fn get(&self) -> usize {
        self.0
    }
    pub fn set(&mut self, ppn: usize) {
        self.0 = ppn & MAX_PPN;
    }
    pub fn add(&self, offset: usize) -> Self {
        Self((self.0 + offset) & MAX_PPN)
    }

    pub fn get_byte_array(&self) -> &'static mut [u8] {
        PhysAddr::from(*self).from_raw_parts_mut(PAGE_SIZE)
    }
    pub fn get_pte_array(&self) -> &'static mut [PageTableEntry] {
        PhysAddr::from(*self).read::<[PageTableEntry; PTE_NUM_PER_PAGE]>()
    }
}

// cast between PhysPageNum and PhysAddr
impl From<PhysPageNum> for PhysAddr {
    fn from(ppn: PhysPageNum) -> Self {
        Self::new(ppn.get() << PAGE_BITS)
    }
}
impl Into<PhysPageNum> for PhysAddr {
    fn into(self) -> PhysPageNum {
        PhysPageNum::new(self.page_number())
    }
}
