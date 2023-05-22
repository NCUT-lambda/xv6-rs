use crate::process::proc::myproc;

use crate::process::proc::{PIDCNT, PROC, WAIT_LOCK, INITPROC};


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