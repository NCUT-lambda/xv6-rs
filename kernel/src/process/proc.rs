use core::{mem::transmute, ptr::null_mut};

use crate::{
    lock::{
        sleeplock::Sleeplock,
        spinlock::{pop_off, push_off, Spinlock},
    },
    memory::memlayout::kstack,
    param::NPROC,
    riscv::Addr,
    sync::upcell::UPCell,
};
use array_macro::array;
use lazy_static::*;

use super::cpu::{mycpu, Cpu};

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

    // 当使用这些时必须持有 p->lock
    state: ProcState,     // 进程状态
    chan: *mut Sleeplock, // 如果非空，处于休眠态并持有睡眠锁 chan
    pub pid: usize,       // 进程号

    kstack: Addr,
}

impl Proc {
    pub const fn new() -> Self {
        Self {
            lock: Spinlock::new("proc"),
            state: ProcState::Unused,
            chan: null_mut(),
            pid: 0,
            kstack: 0,
        }
    }

    fn sleep(&mut self, chan: *mut Sleeplock, lk: *mut Spinlock) {
        let lk: &mut Spinlock = unsafe { transmute(lk) };

        // 为了改变 p->state 然后调用 sched()必须持有 p->lock
        // 一旦持有 p->lock，就能保证不会丢失任何 wakeup，
        // 因为 wakeup() 会尝试获取这把锁
        // 所以可以可以释放 lk
        // 调度器会在换下当前进程后释放 p->lock
        // 保证不会出现进程无法唤醒的情况
        self.lock.acquire();
        lk.release();
        self.chan = chan;
        self.state = ProcState::Sleeping;

        sched();

        self.chan = null_mut();

        // 重新获取原来的锁
        self.lock.release();
        lk.acquire();
    }

    fn wakeup(&mut self, chan: *mut Sleeplock) {
        self.lock.acquire();
        if self.state == ProcState::Sleeping && self.chan == chan {
            self.state = ProcState::Runable;
        }
        self.lock.release();
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

pub fn myproc() -> *mut Proc {
    push_off();
    let c: &Cpu = unsafe { transmute(mycpu()) };
    let p = c.proc;
    pop_off();
    p
}

pub fn sched() {
    todo!()
}

pub fn sleep(chan: *mut Sleeplock, lk: *mut Spinlock) {
    let p: &mut Proc = unsafe { transmute(myproc()) };

    p.sleep(chan, lk);
}

pub fn wakeup(chan: *mut Sleeplock) {
    let proc = PROC.get_mut();
    for p in proc {
        if (p as *mut Proc) != myproc() {
            p.wakeup(chan);
        }
    }
}
