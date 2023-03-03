use super::param::{MAX_PHYS_ADDR, MAX_PPN, MAX_VIRT_ADDR, MAX_VPN, PAGE_BITS, PAGE_SIZE};

// physical address
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct PhysAddr(pub usize);

// virtual address
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct VirtAddr(pub usize);

// physical page number
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct PhysPageNum(pub usize);

// virtual page number
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct VirtPageNum(pub usize);

// from usize

impl From<usize> for PhysAddr {
    fn from(v: usize) -> Self {
        Self(v & MAX_PHYS_ADDR)
    }
}

impl From<usize> for PhysPageNum {
    fn from(v: usize) -> Self {
        Self(v & MAX_PPN)
    }
}

impl From<usize> for VirtAddr {
    fn from(v: usize) -> Self {
        Self(v & MAX_VIRT_ADDR)
    }
}

impl From<usize> for VirtPageNum {
    fn from(v: usize) -> Self {
        Self(v & MAX_VPN)
    }
}

// to usize

impl From<PhysAddr> for usize {
    fn from(v: PhysAddr) -> usize {
        if v.0 > MAX_PHYS_ADDR {
            v.0 | (!MAX_PHYS_ADDR)
        } else {
            v.0
        }
    }
}

impl From<PhysPageNum> for usize {
    fn from(v: PhysPageNum) -> usize {
        if v.0 > MAX_PPN {
            v.0 | (!MAX_PPN)
        } else {
            v.0
        }
    }
}

impl From<VirtAddr> for usize {
    fn from(v: VirtAddr) -> usize {
        if v.0 > MAX_VIRT_ADDR {
            v.0 | (!MAX_VIRT_ADDR)
        } else {
            v.0
        }
    }
}

impl From<VirtPageNum> for usize {
    fn from(v: VirtPageNum) -> usize {
        if v.0 > MAX_VPN {
            v.0 | (!MAX_VPN)
        } else {
            v.0
        }
    }
}

// impl PhysAddr
impl PhysAddr {
    pub fn offset(&mut self, offset: usize) -> Self {
        Self::from(self.0 + offset)
    }
    pub fn add(&mut self, offset: usize) -> Self {
        self.0 += offset;
        *self
    }
    pub fn round_down(&self) -> Self {
        Self(self.0 & (!(PAGE_SIZE - 1)))
    }
    pub fn round_up(&self) -> Self {
        Self((self.0 + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
    }
    pub fn page_offset(&self) -> usize {
        self.0 & (PAGE_SIZE - 1)
    }
    pub fn aligned(&self) -> bool {
        self.page_offset() == 0
    }
}

// impl VirtAddr
impl VirtAddr {
    pub fn add(&mut self, offset: usize) -> Self {
        self.0 += offset;
        *self
    }
    pub fn round_down(&self) -> Self {
        Self(self.0 & (!(PAGE_SIZE - 1)))
    }
    pub fn round_up(&self) -> Self {
        Self((self.0 + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
    }
    pub fn page_offset(&self) -> usize {
        self.0 & (PAGE_SIZE - 1)
    }
    pub fn aligned(&self) -> bool {
        self.page_offset() == 0
    }
}

impl PhysPageNum {
    pub fn page_clear(&self) {
        let ptr: *mut u8 = PhysAddr::from(*self).into();
        unsafe {
            ptr.write_bytes(0, PAGE_SIZE);
        }
    }
}

impl VirtPageNum {
    pub fn indexes(&self) -> [usize; 3] {
        let mut bits = self.0;
        let mut idx = [0usize; 3];
        for i in (0..3).rev() {
            idx[i] = bits & ((1 << 9) - 1);
            bits >>= 9;
        }
        idx
    }
}

// between physical address and physical page number
impl From<PhysAddr> for PhysPageNum {
    fn from(v: PhysAddr) -> Self {
        Self(usize::from(v.round_down()) >> PAGE_BITS)
    }
}

impl From<PhysPageNum> for PhysAddr {
    fn from(v: PhysPageNum) -> Self {
        Self(usize::from(v.0) << PAGE_BITS)
    }
}

// between virtual address and virtual page number
impl From<VirtAddr> for VirtPageNum {
    fn from(v: VirtAddr) -> Self {
        Self(usize::from(v.round_down()) >> PAGE_BITS)
    }
}

impl From<VirtPageNum> for VirtAddr {
    fn from(v: VirtPageNum) -> Self {
        Self(usize::from(v.0) << PAGE_BITS)
    }
}

// between physical address and *mut T
impl<T> From<*mut T> for PhysAddr {
    fn from(v: *mut T) -> Self {
        Self(v as usize)
    }
}

impl<T> Into<*mut T> for PhysAddr {
    fn into(self) -> *mut T {
        self.0 as *mut T
    }
}
