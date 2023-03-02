use super::param::{MAX_PHYS_ADDR, MAX_PPN, MAX_VIRT_ADDR, MAX_VPN, PAGE_SIZE, PAGE_BITS};

// physical address
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct PhysAddr(usize);

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

impl PhysAddr {
	pub fn round_down(&self) -> Self {
		Self (self.0 & (!(PAGE_SIZE - 1)))
	}
	pub fn round_up(&self) -> Self {
		Self ((self.0 + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
	}
	pub fn page_offset(&self) -> usize {
		self.0 & (PAGE_SIZE - 1)
	}
	pub fn aligned(&self) -> bool {
		self.page_offset() == 0
	}
}

impl VirtAddr {
	pub fn round_down(&self) -> Self {
		Self (self.0 & (!(PAGE_SIZE - 1)))
	}
	pub fn round_up(&self) -> Self {
		Self ((self.0 + PAGE_SIZE - 1) & (!(PAGE_SIZE - 1)))
	}
	pub fn page_offset(&self) -> usize {
		self.0 & (PAGE_SIZE - 1)
	}
	pub fn aligned(&self) -> bool {
		self.page_offset() == 0
	}
}

// between physical address and physical page number
impl From<PhysAddr> for PhysPageNum {
	fn from(v: PhysAddr) -> Self {
		Self (usize::from(v.round_down()) >> PAGE_BITS)
	}
}

impl From<PhysPageNum> for PhysAddr {
	fn from(v: PhysPageNum) -> Self {
		Self (usize::from(v.0) << PAGE_BITS)
	}
}

// between virtual address and virtual page number
impl From<VirtAddr> for VirtPageNum {
	fn from(v: VirtAddr) -> Self {
		Self (usize::from(v.round_down()) >> PAGE_BITS)
	}
}

impl From<VirtPageNum> for VirtAddr {
	fn from(v: VirtPageNum) -> Self {
		Self (usize::from(v.0) << PAGE_BITS)
	}
}