pub fn memset<T>(dst: *mut T, c: u8, n: usize) -> *mut T {
    unsafe { (dst as *mut u8).write_bytes(c, n) }
    dst
}

pub fn memcmp(v1: usize, v2: usize, n: usize) -> isize {
    todo!()
}

pub fn memmove<T>(dst: *mut T, src: *const T, n: usize) -> *mut T {
	unsafe {(dst as *mut u8).copy_from(src as *const u8, n)}
	dst
}

pub fn memcpy<T>(dst: *mut T, src: *const T, n: usize) -> *mut T {
	memmove(dst, src, n)
}