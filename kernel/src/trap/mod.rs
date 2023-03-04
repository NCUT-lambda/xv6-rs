use core::arch::global_asm;

use riscv::register::{
    scause::{self, Exception, Interrupt, Trap},
    sstatus::{self, SPP},
    stval, stvec,
    utvec::TrapMode,
};

use crate::{
    syscall::syscall,
    task::{run_next_task, task::TaskOption},
    trap::interrupt::set_next_clock_interrupt,
};

pub mod context;
mod interrupt;
global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" {
        fn trampoline();
    }

    unsafe {
        stvec::write(trampoline as usize, TrapMode::Direct);
    }
    interrupt::enable_clock_interrupt();
    set_next_clock_interrupt();
}

#[no_mangle]
pub fn user_trap_handler(cx: &mut TrapContext) {
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
            run_next_task(TaskOption::Kill)
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, kernel killed it.");
            run_next_task(TaskOption::Kill)
        }
        Trap::Interrupt(Interrupt::SupervisorTimer) => {
            set_next_clock_interrupt();
            run_next_task(TaskOption::Suspend);
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
