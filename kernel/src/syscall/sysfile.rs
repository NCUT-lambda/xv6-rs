use crate::{process::proc::myproc, riscv::{intr_off, intr_on}};

const FD_STDIN: usize = 0;
const FD_STDOUT: usize = 1;
const FD_STDERR: usize = 2;

pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> usize {
    match fd {
        FD_STDOUT => {
            let uvm = unsafe {&(&*myproc()).uvm};
            0
        }
        _ => {
            panic!("unsupported fd in sys_write");
        }
    }
}

pub fn write_test() {
    intr_off();
    println!("Hello world");
    intr_on();
}