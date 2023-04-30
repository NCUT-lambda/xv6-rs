pub fn memset(dst: usize, c: u8, n: usize) -> usize {
    unsafe { (dst as *mut u8).write_bytes(c, n) }
    dst
}

pub fn memcmp(v1: usize, v2: usize, n: usize) -> isize {
    todo!()
}
