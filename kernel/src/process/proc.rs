use core::{
    borrow::BorrowMut,
    mem::{size_of, transmute},
    ptr::{null, null_mut},
};

use crate::{
    fs::{File, Inode},
    lock::{sleeplock::Sleeplock, spinlock::Spinlock, push_off, pop_off},
    memory::{
        kalloc::{kalloc, kfree},
        memlayout::{kstack, TRAMPOLINE, TRAPFRAME, KERNEL_STACK_SIZE},
        uvm::Uvm,
    },
    param::{NOFILE, NPROC},
    riscv::{intr_get, intr_on, Addr, PGSIZE, PTE_R, PTE_X, PTE_W},
    string::memset,
    sync::upcell::UPCell,
    trap::{usertrapret, trapframe::Trapframe},
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
}

// 分配 pid 的计数器
// 使用时必须持有 pid_lock
pub struct PidCnt {
    pid_lock: Spinlock,
    nextpid: usize,
}

impl PidCnt {
    pub const fn new(name: &'static str) -> Self {
        Self {
            pid_lock: Spinlock::new(name),
            nextpid: 0,
        }
    }
}
lazy_static! {
    pub static ref PIDCNT: UPCell<PidCnt> = UPCell::new(PidCnt::new("nextpid"));
}

// 用于保证对正在 wake() 的父进程的唤醒不会丢失
// 当需要使用 p->parent 时，必须在获取 p->lock
// 之前获取此锁
lazy_static! {
    pub static ref WAIT_LOCK: UPCell<Spinlock> = UPCell::new(Spinlock::new("wait_lock"));
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
    state: ProcState, // 进程状态
    chan: *mut u8,    // 如果非空，处于休眠态并等待睡眠锁 chan
    killed: bool,     // 如果为 true，进程被杀死
    xstate: isize,    // 退出时的状态，会返回给正在等待的父进程
    pub pid: usize,   // 进程号

    // 当使用这个域时必须持有 wait_lock
    parent: *mut Proc, // 父进程

    // 这些是进程的私有属性，不必持有 p->lock
    pub kstack: Addr,              // 内核栈的虚拟地址
    pub sz: usize,                     // 进程占用内存大小 (单位: 字节)
    pub uvm: Uvm,                  // 进程页表
    pub trapframe: *mut Trapframe, // 用于切换到内核时保存用户信息
    context: Context,              // swtch() 从这切换进程
    ofile: [*mut File; NOFILE],    // 打开的文件
    cwd: *mut Inode,               // 当前工作目录
    pub name: String,              // 进程名
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
            name: String::new(),
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
        if uvm
            .pagetable
            .mappages(TRAMPOLINE, PGSIZE, trampoline as Addr, PTE_R | PTE_X)
            < 0
        {
            uvm.uvmfree(0);
            return Uvm::new();
        }

        // 紧接着 trapframe 页面映射 trapoline 页面
        if uvm
            .pagetable
            .mappages(TRAPFRAME, PGSIZE, self.trapframe as Addr, PTE_R | PTE_W)
            < 0
        {
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

    // 将 p 的子进程给 init 进程
    // 调用者必须持有 wait_lock
    pub fn reparent(&mut self) {
        let proc = PROC.get_mut();
        for cp in proc {
            if cp.parent == self {
                let initproc = *INITPROC.get_mut();
                cp.parent = initproc;
                wakeup(initproc);
            }
        }
    }
}

lazy_static! {
    pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
    pub static ref INITPROC: UPCell<*mut Proc> = UPCell::new(allocproc());
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
    let c = unsafe { &*mycpu() };
    let p = c.proc;
    pop_off();
    p
}

// 返回一个当前最小的 pid
pub fn allocpid() -> usize {
    let pid: usize;
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
        if p.state == ProcState::Unused {
            // found
            p.pid = allocpid();
            p.state = ProcState::Used;

            // 分配一个 trapframe 页
            let pa = kalloc();
            p.trapframe = pa as *mut Trapframe;
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
            memset(&mut p.context, 0, size_of::<Context>());
            p.context.ra = forkret as usize;
            p.context.sp = p.kstack + KERNEL_STACK_SIZE;

            return p;
        } else {
            p.lock.release();
        }
    }
    return null_mut();
}

static INITCODE: [u8; 39] = [
    0x17, 0x05, 0x00, 0x00, 0x13, 0x05, 0x05, 0x02,
    0x9b, 0x05, 0x40, 0x00, 0x93, 0x08, 0x70, 0x00,
    0x73, 0x00, 0x00, 0x00, 0x93, 0x08, 0x20, 0x00,
    0x73, 0x00, 0x00, 0x00, 0xef, 0xf0, 0x9f, 0xff,
    0x69, 0x6e, 0x69, 0x74, 0x00, 0x00, 0x00
];

// 设置第一个用户程序
pub fn userinit() {
    let p = unsafe { &mut *(*INITPROC.get_mut()) };

    // 为第一个用户程序内存，并且将 initcode 的指令复制到代码段
    p.uvm.uvmfirst(&INITCODE as *const u8, INITCODE.len());

    // 设置初始 context
    let tf = unsafe { &mut *p.trapframe };
    tf.epc = 0;
    tf.x[2] = PGSIZE; // sp

    p.name = String::from("initcode");
    // p.cwd = namei("/");

    p.state = ProcState::Runable;

    p.lock.release();

    println!("userinit success!");
}

pub fn sched() {
    extern "C" {
        fn switch(old: *mut Context, new: *const Context);
    }
    let p = unsafe { &mut *myproc() };
    let mc = unsafe { &mut *mycpu() };

    if !p.lock.holding() {
        panic!("sched p->lock");
    }
    if mc.noff != 1 {
        panic!("sched locks");
    }
    if p.state == ProcState::Running {
        panic!("sched running");
    }
    if intr_get() {
        panic!("sched interrupible");
    }

    let intena = mc.intena;
    unsafe {
        switch(&mut p.context, &mc.context);
    }
    mc.intena = intena;
}

#[no_mangle]
pub fn scheduler() {
    extern "C" {
        fn switch(old: *mut Context, new: *const Context);
    }
    let c = unsafe { &mut *mycpu() };
    let proc = PROC.get();

    c.proc = null_mut();
    loop {
        // 开启中断，避免死锁
        intr_on();

        for i in 0..NPROC {
            let p = unsafe {&mut (*proc)[i]};
            p.lock.acquire();
            if p.state == ProcState::Runable {
                //
                p.state = ProcState::Running;
                c.proc = p;
                unsafe {
                    switch(&mut c.context, &p.context);
                }

                c.proc = null_mut();
            }
            p.lock.release();
        }
    }
}

pub fn sleep<T>(chan: *mut T, lk: *mut Spinlock) {
    let mut p = unsafe { &mut *myproc() };

    let lk = unsafe { &mut *lk };

    // 为了改变 p->state 然后调用 sched()必须持有 p->lock
    // 一旦持有 p->lock，就能保证不会丢失任何 wakeup，
    // 因为 wakeup() 会尝试获取这把锁
    // 所以可以可以释放 lk
    // 调度器会在换下当前进程后释放 p->lock
    // 保证不会出现进程无法唤醒的情况
    p.lock.acquire();
    lk.release();

    // 进入睡眠
    p.chan = chan as *mut u8;
    p.state = ProcState::Sleeping;

    sched();

    p.chan = null_mut();

    // 重新获取原来的锁
    p.lock.release();
    lk.acquire();
}

pub fn wakeup<T>(chan: *mut T) {
    let mut proc = PROC.get_mut();
    for p in proc.iter_mut() {
        // if (p as *mut Proc) != myproc() {
        //     p.lock.acquire();
        //     if p.state == ProcState::Sleeping && p.chan == chan as *mut u8 {
        //         p.state = ProcState::Runable;
        //     }
        //     p.lock.release();
        // }
    }
}

#[no_mangle]
fn forkret() {
    let p = unsafe { &mut *myproc() };

    p.lock.release();

    usertrapret();
}

pub fn proc_test() {
    let mut p = Proc::new();
    p.pid = allocpid();
    p.state = ProcState::Used;

    // 分配一个 trapframe 页
    let pa = kalloc();
    p.trapframe = pa as *mut Trapframe;
    if pa == 0 {
        panic!("error 1");
    }

    // 创建一个空的用户页表
    p.uvm = p.proc_uvm();
    if !p.uvm.valid() {
        panic!("error 2");
    }

    // 设置进程的初始 context 在 forkret()，
    // 进程会从这里返回用户空间
    memset(&mut p.context, 0, size_of::<Context>());
    p.context.ra = forkret as usize;
    p.context.sp = p.kstack + PGSIZE;

    let tf = unsafe { &mut *p.trapframe };
    for i in 0..32 {
        tf.x[i] = i;
    }
    for i in 0..32 {
        assert_eq!(i, tf.x[i]);
    }

    let mut arr = [32; 0usize];
    p.uvm.copyin(&mut arr, TRAPFRAME, 32 * 8);
    for i in 0..32 {
        assert_eq!(i, tf.x[i]);
    }

    println!("proc_test passed!");
}
