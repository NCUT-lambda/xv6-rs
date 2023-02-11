#![no_std]
#![no_main]

fn main() -> i32{
	let x = 0;
	(x as *mut i32).write_volatile(0);
	0
}