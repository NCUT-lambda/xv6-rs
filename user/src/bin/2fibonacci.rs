// Switch between user and kernel constantly.

#![no_std]
#![no_main]

#[macro_use]
extern crate user;

#[no_mangle]
fn main() -> i32 {
    let mut ai: i64 = 1;
    let mut aj: i64 = 1;
    let mut ak: i64;
    for i in 3..50 {
        ak = ai + aj;
        println!("a{} = {}", i, ak);
        ai = aj;
        aj = ak;
    }
	0
}