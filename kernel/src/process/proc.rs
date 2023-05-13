use core::{mem::transmute, ptr::null_mut};

use crate::{
    fs::{File, Inode},
    lock::{
        sleeplock::Sleeplock,
        spinlock::{pop_off, push_off, Spinlock},
    },
    memory::{memlayout::kstack, pagetable::PagetableT, kalloc::{kalloc, kfree}, uvm::Uvm},
    param::{NOFILE, NPROC},
    riscv::Addr,
    sync::upcell::UPCell,
    trap::trapframe::Trapframe,
};
extern crate alloc;

use alloc::string::String;
use array_macro::array;
use lazy_static::*;

use super::{
    context::Context,
    cpu::{mycpu, Cpu},
};

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
    chan: *mut Sleeplock, // 如果非空，处于休眠态并等待睡眠锁 chan
    killed: bool,         // 如果为 true，进程被杀死
    xstate: isize,        // 退出时的状态，会返回给正在等待的父进程
    pub pid: usize,       // 进程号

    // 当使用这个域时必须持有 wait_lock
    parent: *mut Proc, // 父进程

    // 这些是进程的私有属性，不必持有 p->lock
    kstack: Addr,                   // 内核栈的虚拟地址
    sz: usize,                      // 进程占用内存大小 (单位: 字节)
    uvm: Uvm, 						// 进程页表
    trapframe: *mut Trapframe,      // 用于切换到内核时保存用户信息
    context: Context,               // swtch() 从这切换进程
    ofile: [*mut File; NOFILE],     // 打开的文件
    cwd: *mut Inode,                // 当前工作目录
    name: String,                   // 进程名
}

impl Proc {
    pub fn new() -> Self {
        Self {
            lock: Spinlock::new("proc"),
            state: ProcState::Unused,
            chan: null_mut(),
            killed: false,
            xstate: 0,
            pid: 0,
            parent: null_mut(),
            kstack: 0,
            sz: 0,
            uvm: Uvm::new(),
            trapframe: null_mut(),
            context: Context {},
            ofile: [null_mut(); NOFILE],
            cwd: null_mut(),
            name: String::new()
        }
    }

	fn freeproc(&mut self) {
		if self.trapframe != null_mut() {
			kfree(self.trapframe as Addr);
		}
		self.trapframe = null_mut();
		if self.uvm.valid() {

		}
	}

	fn proc_pagetable(&mut self) -> PagetableT {
		todo!()
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

pub fn allocpid() -> usize {
	let pid:usize;
	let pidcnt = PIDCNT.get_mut();
	
	pidcnt.pid_lock.acquire();
	pid = pidcnt.nextpid;
	pidcnt.nextpid += 1;
	pidcnt.pid_lock.release();

	pid
}

fn allocproc() -> *mut Proc {
	let proc = PROC.get_mut();
	for i in 0..NPROC {
		let p = &mut proc[i];
		p.lock.acquire();
		if p.state == ProcState::Unused {	// found
			p.pid = allocpid();
			p.state = ProcState::Used;

			// 分配一个 trapframe 页
			let pa = kalloc();
			if pa == 0 {
				p.freeproc();
				p.lock.release();
				return null_mut();
			}

			// 创建一个空的用户页表
			

			return p
		} else {
			p.lock.release();
		}
	}
	return null_mut()
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
