#![no_std]
#![no_main]

#[macro_use]
extern crate user;

#[no_mangle]
pub fn main() -> usize {
    for i in 0..5 {
        for _ in 0..10 {
            print!("B");
        }
        println!(" [{}/5]", i + 1);
    }
    println!("Task2 OK!");
    0
}
