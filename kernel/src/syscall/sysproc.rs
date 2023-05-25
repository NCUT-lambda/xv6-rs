use core::panic;

use crate::exec;
use crate::exec::apps::get_app_data;
use crate::process::proc::myproc;

use crate::process::proc::{PIDCNT, PROC, WAIT_LOCK, INITPROC};
use crate::riscv::Addr;

use super::BUFFER_SIZE;


// 退出当前的进程，不返回
// 退出的进程会保持在 Zombie 状态
// 直到父进程调用 wait()
pub fn sys_exit(status: i32) -> usize {
    panic!("sys_exit");
    // let p = unsafe {&mut *myproc()};

    // let wait_lock = WAIT_LOCK.get_mut();


    // wait_lock.acquire();


    // 0
}

pub fn sys_exec(path: *const u8, len: usize) -> usize {
    println!("sys exec");
    let mut buf: [u8; 128] = [0; 128];
    let p = unsafe {&mut *myproc()};
    if p.uvm.copyin(&mut buf, path as Addr, len) < 0 {
        panic!("sys_exec: copyin");
    }

    let name = unsafe {core::str::from_utf8(&buf[0..len]).unwrap()};

    let src = get_app_data(name);


    exec::exec(src) as usize
}