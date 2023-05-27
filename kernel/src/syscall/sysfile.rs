use alloc::string::String;

use crate::{process::proc::myproc, riscv::{intr_off, intr_on, Addr}, console};

const FD_STDIN: usize = 0;
const FD_STDOUT: usize = 1;
const FD_STDERR: usize = 2;

pub fn sys_write(buf: *const u8, len: usize) -> usize {
    let p = unsafe {&mut *myproc()};
    let mut buffer = [0u8; 128];
    p.uvm.copyin(buffer.as_mut_ptr() as *mut u8, buf as Addr, len);
    let str = core::str::from_utf8(&buffer[0..len]).unwrap();
    print!("{}", str);
    len
}

pub fn sys_read(buf: *mut u8, len: usize) -> usize {
    let mut str = String::new();
    console::read_line(&mut str);

    let p = unsafe {&mut *myproc()};
    let str = str.as_str();
    p.uvm.copyout(buf as Addr, str.as_ptr(), str.len());
    str.len()
}

pub fn write_test() {
    intr_off();
    println!("Hello world");
    intr_on();
}