#![no_std]
#![no_main]

#[macro_use]
extern crate user;

const MOD: usize = 1e9 as usize + 7;

#[no_mangle]
pub fn main() -> usize {
	for i in 1..=10 {
		println!("[task1] 5 power {} = {}", i, 5usize.pow(i) % MOD);
	}
	0
}