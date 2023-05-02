use crate::riscv::{Addr, PGSIZE};

pub mod kalloc;
pub mod kvm;
pub mod memlayout;
pub mod pagetable;
pub mod uvm;

pub fn pgroundup(addr: usize) -> Addr {
    (addr + PGSIZE - 1) & !(PGSIZE - 1)
}

pub fn pgrounddown(addr: usize) -> Addr {
    addr & !(PGSIZE - 1)
}

pub fn write<T: Sized>(addr: Addr, val: T) {
    unsafe { (addr as *mut T).write(val) }
}

pub fn read<T: Sized>(addr: Addr) -> T {
    unsafe { (addr as *const T).read() }
}
