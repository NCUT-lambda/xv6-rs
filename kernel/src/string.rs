use crate::riscv::Addr;

pub fn memset(dst: Addr, c: u8, n: usize) -> usize {
    unsafe { (dst as *mut u8).write_bytes(c, n) }
    dst
}

pub fn memcmp(v1: usize, v2: usize, n: usize) -> isize {
    todo!()
}

pub fn memmove(dst: Addr, src: Addr, n: usize) -> Addr {
	unsafe {(dst as *mut u8).copy_from(src as *const u8, n)}
	dst
}

pub fn memcpy(dst: Addr, src: Addr, n: usize) -> Addr {
	memmove(dst, src, n)
}