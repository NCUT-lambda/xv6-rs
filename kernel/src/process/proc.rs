use core::{mem::{transmute, size_of}, ptr::{null_mut, null}, borrow::BorrowMut};

use crate::{
    fs::{File, Inode},
    lock::{
        sleeplock::Sleeplock,
        spinlock::{pop_off, push_off, Spinlock},
    },
    memory::{memlayout::{kstack, TRAMPOLINE, TRAPFRAME}, kalloc::{kalloc, kfree}, uvm::Uvm},
    param::{NOFILE, NPROC},
    riscv::{Addr, PGSIZE, PTE_R, PTE_X},
    sync::upcell::UPCell,
    trap::trapframe::Trapframe, string::memset,
};
extern crate alloc;

use alloc::string::String;
use array_macro::array;
use lazy_static::*;

use super::{
    context::Context,
    cpu::{mycpu, Cpu},
};

extern "C" {
    fn trampoline();
    fn forkret();
}

// 分配 pid 的计数器
// 使用时必须持有 pid_lock
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

// 用于保证对正在 wake() 的父进程的唤醒不会丢失
// 当需要使用 p->parent 时，必须在获取 p->lock
// 之前获取此锁
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

// 进程控制块
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
            context: Context::new(),
            ofile: [null_mut(); NOFILE],
            cwd: null_mut(),
            name: String::new()
        }
    }

    // 释放一个进程，包括释放为其分配的所有资源
    // 必须持有 p->lock
	fn freeproc(&mut self) {
		if self.trapframe != null_mut() {
			kfree(self.trapframe as Addr);
		}
		self.trapframe = null_mut();
		if self.uvm.valid() {
            self.proc_freeuvm();
		}
        self.uvm = Uvm::new();
        self.sz = 0;
        self.pid = 0;
        self.parent = null_mut();
        self.name = String::new();
        self.chan = null_mut();
        self.killed = false;
        self.xstate = 0;
        self.state = ProcState::Unused;
	}

    // 创建一个用户程序的 struct Uvm，不含用户物理内存
    // 但是包含 trapoline 和 trapframe 两个页面
	fn proc_uvm(&mut self) -> Uvm {
        // 创建一个空页表
        let mut uvm = Uvm::from_pagetable(Uvm::uvmcreate());
        if !uvm.valid() {
            return uvm;
        }

        // 映射 trampoline 页面到虚拟地址的最高处
        // 只有在 S 模式下，也就是在往返用户空间时才会访问这块空间
        // 所以不需要设置 PTE_U 位
        if uvm.pagetable.mappages(TRAMPOLINE, PGSIZE, trampoline as Addr, PTE_R | PTE_X) < 0 {
            uvm.uvmfree(0);
            return Uvm::new();
        }

        // 紧接着 trapframe 页面映射 trapoline 页面
        if uvm.pagetable.mappages(TRAPFRAME, PGSIZE, self.trapframe as Addr, PTE_R | PTE_X) < 0 {
            uvm.uvmfree(0);
            return Uvm::new();
        }

        uvm
	}

    // 释放一个进程的 struct Uvm，并且会释放所有的物理内存
    fn proc_freeuvm(&mut self) {
        self.uvm.uvmunmap(TRAMPOLINE, 1, false);
        self.uvm.uvmunmap(TRAPFRAME, 1, false);
        self.uvm.uvmfree(self.sz);
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

// 初始化进程表
pub fn procinit() {
    let proc = PROC.get_mut();
    for i in 0..NPROC {
        proc[i].kstack = kstack(i);
    }

    println!("procinit success!");
}

// 返回当前进程的指针，否则返回空指针
pub fn myproc() -> *mut Proc {
    push_off();
    let c: &Cpu = unsafe { transmute(mycpu()) };
    let p = c.proc;
    pop_off();
    p
}

// 返回一个当前最小的 pid
pub fn allocpid() -> usize {
	let pid:usize;
	let pidcnt = PIDCNT.get_mut();
	
	pidcnt.pid_lock.acquire();
	pid = pidcnt.nextpid;
	pidcnt.nextpid += 1;
	pidcnt.pid_lock.release();

	pid
}

// 在进程表中寻找一个状态为 Unused 的进程
// 如果找到就将其初始化
// 返回时会持有 p->lock
// 如果没有找到空闲进程，或者初始化失败（内存不足），就返回空指针
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
            p.uvm = p.proc_uvm();
            if !p.uvm.valid() {
                p.freeproc();
                p.lock.release();
                return null_mut();
            }
			
            // 设置进程的初始 context 在 forkret()，
            // 进程会从这里返回用户空间
            memset(&p.context as *const Context as Addr, 0, size_of::<Context>());
            p.context.ra = forkret as usize;
            p.context.sp = p.kstack + PGSIZE;

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
