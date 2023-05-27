use crate::process::proc::myproc;

use self::{sysfile::{sys_write, sys_read}, sysproc::{sys_exit, sys_exec}};

pub mod sysfile;
pub mod sysproc;

pub const SYS_FORK: usize = 1;
pub const SYS_EXIT: usize = 2;
pub const SYS_WAIT: usize = 3;
pub const SYS_READ: usize = 5;
pub const SYS_KILL: usize = 6;
pub const SYS_EXEC: usize = 7;
pub const SYS_GETPID: usize = 11;
pub const SYS_SBRK: usize = 12;
pub const SYS_SLEEP: usize = 13;
pub const SYS_UPTIME: usize = 14;
pub const SYS_OPEN: usize = 15;
pub const SYS_WRITE: usize = 16;
pub const SYS_PSTATE: usize = 17;

pub const BUFFER_SIZE: usize = 1024;

#[no_mangle]
pub fn syscall(syscall_id: usize, args: [usize; 3]) -> usize {
    let p = unsafe { &*myproc() };

    let ret = match syscall_id {
        SYS_WRITE => sys_write(args[0] as *const u8, args[1]),
        SYS_READ => sys_read(args[0] as *mut u8, args[1]),
        SYS_EXEC => sys_exec(args[0] as *const u8, args[1]),
        SYS_EXIT => sys_exit(args[0] as i32),
        _ => {
            println!("{} {}: unknown syscall {}", p.pid, p.name, syscall_id);
            -1isize as usize
        }
    };

    ret
}
