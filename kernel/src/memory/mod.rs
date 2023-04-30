use self::memlayout::PGSIZE;

pub mod kalloc;
pub mod kvm;
pub mod memlayout;
pub mod pagetable;
pub mod uvm;

pub fn pgroundup(addr: usize) -> usize {
    (addr + PGSIZE - 1) & !(PGSIZE - 1)
}

pub fn pgrounddown(addr: usize) -> usize {
    addr & !(PGSIZE - 1)
}
