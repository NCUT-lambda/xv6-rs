pub mod context;
pub mod cpu;
pub mod proc;

global_asm!(include_str!("switch.S"));

use core::arch::global_asm;


pub use proc::{userinit, scheduler};



#[no_mangle]
fn forkret() {

}