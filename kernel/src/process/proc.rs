use crate::{
    lock::spinlock::Spinlock, memory::memlayout::kstack, param::NPROC, riscv::Addr,
    sync::upcell::UPCell,
};
use array_macro::array;
use lazy_static::*;

struct PidCnt {
    pid_lock: Spinlock,
    nextpid: usize,
}

impl PidCnt {
    pub const fn new(name: &'static str) -> Self {
        Self {
            pid_lock: Spinlock::new(name),
            nextpid: 1,
        }
    }
}
lazy_static! {
    static ref PIDCNT: UPCell<PidCnt> = UPCell::new(PidCnt::new("nextpid"));
}

lazy_static! {
    static ref WAIT_LOCK: UPCell<Spinlock> = UPCell::new(Spinlock::new("wait_lock"));
}

#[derive(PartialEq, Eq, Clone, Copy)]
enum ProcState {
    Unused,
    Used,
    Sleeping,
    Runable,
    Running,
    Zombie,
}

pub struct Proc {
    pub lock: Spinlock,

    state: ProcState,
    kstack: Addr,
}

impl Proc {
    pub const fn new() -> Self {
        Self {
            lock: Spinlock::new("proc"),
            state: ProcState::Unused,
            kstack: 0,
        }
    }
}

lazy_static! {
    static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
}

pub fn procinit() {
    let proc = PROC.get_mut();
    for i in 0..NPROC {
        proc[i].kstack = kstack(i);
    }

    println!("procinit success!");
}
