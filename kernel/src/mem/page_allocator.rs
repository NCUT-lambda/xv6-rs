use super::{
    address::{PhysAddr, PhysPageNum},
    param::{PAGE_SIZE, PHYSTOP},
};

use crate::sync::UPSafeCell;
use alloc::vec::Vec;
use core::{
    fmt::{self, Debug, Formatter},
    ptr::null_mut,
};
use lazy_static::*;

/// manage a page which has the same lifecycle as the tracker

pub struct PageTracker {
    ppn: PhysPageNum,
}

impl PageTracker {
    pub fn empty() -> Self {
        Self {
            ppn: PhysPageNum::empty(),
        }
    }
    pub fn new(ppn: PhysPageNum) -> Self {
        Self { ppn }
    }
    pub fn get(&self) -> PhysPageNum {
        self.ppn
    }
    pub fn set(&mut self, ppn: PhysPageNum) {
        self.ppn = ppn;
    }
}

impl Debug for PageTracker {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        f.write_fmt(format_args!("PageTracker: ppn = {:#x}", self.get().get()))
    }
}

impl Drop for PageTracker {
    fn drop(&mut self) {
        kfree(self.ppn);
    }
}

// a page allocator must implement this trait
trait PageAlloc {
    fn empty() -> Self;
    fn init(&mut self, start: PhysPageNum, end: PhysPageNum);
    fn alloc(&mut self) -> Option<PhysPageNum>;
    fn dealloc(&mut self, ppn: PhysPageNum);
}

struct Run {
    next: *mut Run,
}
// linked-list page allocator
pub struct PageAllocator {
    next: PhysPageNum,
    end: PhysPageNum,
    freelist: *mut Run,
}

impl PageAlloc for PageAllocator {
    fn empty() -> Self {
        Self {
            next: PhysPageNum::empty(),
            end: PhysPageNum::empty(),
            freelist: null_mut(),
        }
    }
    fn init(&mut self, start: PhysPageNum, end: PhysPageNum) {
        self.next = start;
        self.end = end;
    }
    fn alloc(&mut self) -> Option<PhysPageNum> {
        if self.next >= self.end {
            let head = self.freelist;
            if head.is_null() {
                None
            } else {
                unsafe {
                    self.freelist = (*head).next;
                }
                Some(PhysAddr::from(head).into())
            }
        } else {
            let current = self.next;
            self.next = self.next.add(1);
            Some(current.into())
        }
    }
    fn dealloc(&mut self, ppn: PhysPageNum) {
        let ptr: *mut Run = PhysAddr::from(ppn).into();
        unsafe {
            (*ptr).next = self.freelist;
        }
        self.freelist = ptr;
    }
}

lazy_static! {
    pub static ref PAGE_ALLOCATOR: UPSafeCell<PageAllocator> =
        unsafe { UPSafeCell::new(PageAllocator::empty()) };
}

pub fn kinit() {
    extern "C" {
        fn ekernel();
    }
    PAGE_ALLOCATOR.get_mut().init(
        PhysAddr::new(ekernel as usize).align_up().into(),
        PhysAddr::new(PHYSTOP).align_down().into(),
    );
}

pub fn kalloc() -> Option<PageTracker> {
    PAGE_ALLOCATOR.get_mut().alloc().map(PageTracker::new)
}

fn kfree(ppn: PhysPageNum) {
    PAGE_ALLOCATOR.get_mut().dealloc(ppn);
}

pub fn page_allocator_test() {
    let mut v: Vec<PageTracker> = Vec::new();
    for i in 0..5 {
        let page = kalloc().unwrap();
        println!("{:?}", page);
        v.push(page);
    }
    v.clear();
    for i in 0..5 {
        let page = kalloc().unwrap();
        println!("{:?}", page);
        v.push(page);
    }
    v.clear();
    for i in 0..5 {
        let page = kalloc().unwrap();
        println!("{:?}", page);
        v.push(page);
    }
    drop(v);
    println!("page allocator test passed!");
}
