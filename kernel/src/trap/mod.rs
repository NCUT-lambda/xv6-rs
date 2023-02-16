use core::arch::global_asm;
use riscv::register::{
    mtvec::TrapMode,
    scause::{self, Exception, Trap},
    stval, stvec,
};

use crate::{batch::run_next_app, syscall::syscall};

use self::trapframe::TrapFrame;

global_asm!(include_str!("trampolion.S"));

pub mod trapframe;

pub fn init() {
    extern "C" {
        fn uservec();
    }
    unsafe { stvec::write(uservec as usize, TrapMode::Direct) }
}

#[no_mangle]
pub fn usertrap() {
    let mut tf = unsafe { TrapFrame::from_trapframe() };
	let scause = scause::read(); // get trap cause
    let stval = stval::read(); // get extra value
    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            tf.epc += 4;
            tf.x[10] = syscall(tf.x[17], [tf.x[10], tf.x[11], tf.x[12]]) as usize;
        }
        Trap::Exception(Exception::StoreFault) | Trap::Exception(Exception::StorePageFault) => {
            println!("[kernel] PageFault in application, kernel killed it.");
            run_next_app();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, kernel killed it.");
            run_next_app();
        }
        _ => {
            panic!(
                "Unsupported trap {:?}, stval = {:#x}!",
                scause.cause(),
                stval
            );
        }
    }
}

#[no_mangle]
pub fn usertrapret() {
	extern "C" {
		fn userret();
	}
	unsafe {
		userret();
	}
}
