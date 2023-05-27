use crate::{sbi::{console_putchar, console_getchar}, lock::spinlock::Spinlock, sync::upcell::UPCell};
use core::fmt::{self, Write};
use alloc::string::String;
use lazy_static::lazy_static;

struct Stdout;
struct Stdin;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.chars() {
            console_putchar(c as usize);
        }
        Ok(())
    }
}

pub fn print(args: fmt::Arguments) {
    Stdout.write_fmt(args).unwrap();
}

#[macro_export]
macro_rules! print {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!($fmt $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! println {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}

pub fn read() -> char {
    console_getchar()
}

pub fn read_line(buf: &mut String) {
    loop {
        let c = console_getchar();
        if c == '\r' {
            println!("");
            break;
        }
        else {
            buf.push(c);
            print!("{}", c);
        }
    }
}


// 目前使用的是 RustSBI 提供的接口
pub fn consoleinit() {}

// 目前使用的是 RustSBI 提供的接口
pub fn printfinit() {}