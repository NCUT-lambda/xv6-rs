// Simple print.

#![no_std]
#![no_main]

#[macro_use]
extern crate user;

#[no_mangle]
fn main() -> i32 {
	println!("Hello World!");
	println!("return 0");
	0
}