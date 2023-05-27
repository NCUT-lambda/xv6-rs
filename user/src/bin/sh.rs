#![no_std]
#![no_main]

use user::{print, println, read_line};
extern crate user;

#[no_mangle]
pub fn main() {
    let mut buf: [u8; 1024] = [0; 1024];
    loop {
        print!("$ ");
        let n = read_line(&mut buf) as usize;
        let str = core::str::from_utf8(&buf[0..n]).unwrap();
        println!("{}", str);
    }
}
