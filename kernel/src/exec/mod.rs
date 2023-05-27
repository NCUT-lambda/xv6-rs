use core::mem::transmute;

use crate::{
    exec::elf::{flags2perm, Proghdr, ELF_PROG_LOAD},
    memory::{uvm::Uvm, memlayout::USER_STACK_SIZE, pgroundup},
    process::{proc::{allocproc, myproc, Proc, ProcState}, cpu::mycpu},
    riscv::{intr_on, PGSIZE, PTE_W}, trap::usertrapret,
};

use self::{
    apps::get_app_data,
    elf::{Elfhdr, ELF_MAGIC},
};

pub mod apps;
pub mod elf;

pub fn exec_app(name: &str) -> i32 {
    intr_on();
    let src = get_app_data(name);
    exec(src)
}

pub fn exec(src: &[u8]) -> i32 {
    // println!("exec");
    let elf: &Elfhdr = unsafe { &*(src.as_ptr() as *const Elfhdr) };
    let src = src.as_ptr() as *const u8;

    // 检查 ELF header
    if elf.magic != ELF_MAGIC {
        return -1;
    }

    let p = unsafe { &mut *allocproc() };
    p.proc_uvm();

    // 将程序加载进入内存
    let mut off = elf.phoff;
    let mut sz = 0usize;
    for i in 0..elf.phnum {
        let ph = unsafe { &*(src.add(off) as *const Proghdr) };

        if ph.type_ != ELF_PROG_LOAD {
            continue;
        }
        if ph.memsz < ph.filesz {
            panic!("exec: 1");
        }
        if ph.vaddr + ph.memsz < ph.vaddr {
            panic!("exec: 2");
        }
        if ph.vaddr % PGSIZE != 0 {
            panic!("exec: 3");
        }

        let sz1 = p
            .uvm
            .uvmalloc(sz, ph.vaddr + ph.memsz, flags2perm(ph.flags));
        if sz1 == 0 {
            panic!("exec: 4");
        }
        sz = sz1;

        p.uvm
            .copyout(ph.vaddr, unsafe { src.add(ph.off) }, ph.filesz);
        // println!("copy {}", i);

        off += core::mem::size_of::<Proghdr>();
    }

	// 设置用户堆栈
	let old_sz = sz;

	sz = pgroundup(sz);

	let sz1 = p.uvm.uvmalloc(sz, sz + USER_STACK_SIZE, PTE_W);
	if sz1 == 0 {
		panic!("exec 5");
	}
	sz = sz1;
	let base = sz;
	// println!("sz {:#x}", sz);

	let tf = unsafe {&mut *p.trapframe};
	p.sz = sz;
	tf.epc = elf.entry;
	tf.x[2] = base;

	let c = unsafe {&mut *mycpu()};
	c.proc = p;
	p.state = ProcState::Running;

	usertrapret();

    0
}
