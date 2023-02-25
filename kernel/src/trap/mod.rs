use core::arch::global_asm;

use riscv::register::{
    scause::{self, Exception, Trap},
    sstatus::{self, SPP},
    stval, stvec,
    utvec::TrapMode,
};

use crate::{
    syscall::syscall,
    task::{run_next_task, task::TaskStatus},
};

pub mod context;
global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" {
        fn user_trap();
    }
    unsafe {
        stvec::write(user_trap as usize, TrapMode::Direct);
    }
}

#[no_mangle]
pub fn user_trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    if sstatus::read().spp() != SPP::User {
        panic!("user_trap_handler: not from user mode");
    }

    let scause = scause::read();
    let stval = stval::read();
    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            cx.sepc += 4;
            cx.x[10] = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
        }
        Trap::Exception(Exception::StoreFault) | Trap::Exception(Exception::StorePageFault) => {
            println!("[kernel] PageFault in application, kernel killed it.");
            run_next_task(crate::task::task::TaskStatus::Zombie)
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, kernel killed it.");
            run_next_task(TaskStatus::Zombie)
        }
        _ => {
            panic!(
                "Unsupported trap {:?}, stval = {:#x}, sepc = {:#x}!",
                scause.cause(),
                stval,
                riscv::register::sepc::read()
            );
        }
    }
    cx
}

pub fn user_trap_return() {
    unsafe {
        sstatus::set_spp(SPP::User);
    }
    extern "C" {
        fn user_return();
    }
    unsafe {
        user_return();
    }
}

pub use context::TrapContext;
