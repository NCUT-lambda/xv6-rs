use core::str::{self, from_utf8};

extern "C" {
    fn _app_num();
}

pub const NAPPS: usize = 1;

static APPS: [&'static str; NAPPS] = ["sh"];

pub fn get_app_data(name: &str) -> &[u8] {
    let src = _app_num as *mut usize;
    let mut id = 0;
    for app in APPS {
        if  app == name {
            break;
        } else {
            id += 1;
        }
    }
    let src = unsafe { (_app_num as *const usize).add(id + 1) };
    unsafe { core::slice::from_raw_parts((*src) as *const u8, *(src.add(1)) - *(src)) }
}
