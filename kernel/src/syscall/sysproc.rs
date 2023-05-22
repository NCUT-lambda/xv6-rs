use crate::process::proc::myproc;

// 退出当前的进程，不返回
// 退出的进程会保持在 Zombie 状态
// 直到父进程调用 wait()
pub fn sys_exit(status: i32) -> usize {
    let p = unsafe {&mut *myproc()};


    0
}