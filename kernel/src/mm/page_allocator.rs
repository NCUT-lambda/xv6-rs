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
    pub pa: PhysAddr,
}

impl PageTracker {
    pub fn new(pa: PhysAddr) -> Self {
        PhysPageNum::from(pa).page_clear();
        Self { pa }
    }
}

impl Debug for PageTracker {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        f.write_fmt(format_args!(
            "PageTracker: pa = {:#x}",
            usize::from(self.pa)
        ))
    }
}

impl Drop for PageTracker {
    fn drop(&mut self) {
        kfree(self.pa);
    }
}

trait PageAlloc {
    fn new() -> Self;
    fn init(&mut self, start: PhysAddr, end: PhysAddr);
    fn alloc(&mut self) -> Option<PhysAddr>;
    fn dealloc(&mut self, pa: PhysAddr);
}

struct Run {
    next: *mut Run,
}

pub struct PageAllocator {
    next: PhysAddr,
    end: PhysAddr,
    freelist: *mut Run,
}

impl PageAllocator {
    // pa must be aligned
    fn push_head(&mut self, pa: PhysAddr) {
        assert!(pa.aligned());
        let ptr: *mut Run = pa.into();
        unsafe {
            (*ptr).next = self.freelist;
        }
        self.freelist = ptr;
    }
    fn pop_head(&mut self) -> Option<PhysAddr> {
        if self.next >= self.end {
            let head = self.freelist;
            if head.is_null() {
                None
            } else {
                unsafe {
                    self.freelist = (*head).next;
                }
                Some(PhysAddr::from(head))
            }
        } else {
            let head = self.next;
            self.next.add(PAGE_SIZE);
            Some(PhysAddr::from(head))
        }
    }
}

impl PageAlloc for PageAllocator {
    fn new() -> Self {
        Self {
            next: PhysAddr::from(0usize),
            end: PhysAddr::from(0usize),
            freelist: null_mut(),
        }
    }
    fn init(&mut self, start: PhysAddr, end: PhysAddr) {
        self.next = start;
        self.end = end;
    }
    fn alloc(&mut self) -> Option<PhysAddr> {
        self.pop_head()
    }
    // pa must be aligned
    fn dealloc(&mut self, pa: PhysAddr) {
        self.push_head(pa);
    }
}

lazy_static! {
    pub static ref PAGE_ALLOCATOR: UPSafeCell<PageAllocator> =
        unsafe { UPSafeCell::new(PageAllocator::new()) };
}

pub fn kinit() {
    extern "C" {
        fn ekernel();
    }
    PAGE_ALLOCATOR.get_mut().init(
        PhysAddr::from(ekernel as usize).round_up(),
        PhysAddr::from(PHYSTOP).round_down(),
    );
}

pub fn kalloc() -> Option<PageTracker> {
    PAGE_ALLOCATOR.get_mut().alloc().map(PageTracker::new)
}

fn kfree(pa: PhysAddr) {
    PAGE_ALLOCATOR.get_mut().dealloc(pa);
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
    drop(v);
    println!("page allocator test passed!");
}
