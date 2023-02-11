// Try to access an invalid address, kernel should prevent doing that.

#![no_std]
#![no_main]

#[macro_use]
extern crate user;

#[no_mangle]
fn main() -> i32 {
    let x = 0;
    unsafe {
        (x as *mut i32).write_volatile(1234);
		println!("{}", (x as *mut i32).read_volatile());
    }
    0
}
