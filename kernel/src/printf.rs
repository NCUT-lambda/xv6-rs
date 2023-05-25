use crate::{sbi::console_putchar, lock::spinlock::Spinlock, sync::upcell::UPCell};
use core::fmt::{self, Write};
use lazy_static::lazy_static;

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        for c in s.chars() {
            console_putchar(c as usize);
        }
        Ok(())
    }
}

pub fn print(args: fmt::Arguments) {
    let pr = PR.get_mut();
    // pr.acquire();
    Stdout.write_fmt(args).unwrap();
    // pr.release();
}

#[macro_export]
macro_rules! print {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::printf::print(format_args!($fmt $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! println {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::printf::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}


// 目前使用的是 RustSBI 提供的接口
pub fn consoleinit() {}

// 目前使用的是 RustSBI 提供的接口
pub fn printfinit() {}



lazy_static! {
    static ref PR: UPCell<Spinlock> = UPCell::new(Spinlock::new("pr"));
}