use crate::trap::TrapContext;

use super::{
    param::*,
    stack::{KERNEL_STACK, USER_STACK},
};
use core::{arch::asm, ptr::read_volatile};

extern "C" {
    fn _app_num();
}

fn get_app_ptr() -> *const usize {
    _app_num as usize as *const usize
}

pub fn get_app_num() -> usize {
    unsafe { get_app_ptr().read_volatile() }
}

fn get_app_start() -> &'static [usize] {
    unsafe { core::slice::from_raw_parts(get_app_ptr().add(1), get_app_num()) }
}

fn get_base_i(app_id: usize) -> usize {
    APP_BASE_ADDRESS + app_id * MAX_APP_SIZE
}

pub unsafe fn load_apps() {
    asm!("fence.i");

    let app_ptr = get_app_ptr();
    let app_num = get_app_num();
    let app_start = get_app_start();

    // clear application area
    let area =
        core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, MAX_APP_NUM * MAX_APP_SIZE);
    area.fill(0);

    for app_id in 0..app_num {
        println!(
            "[kernel] loading task{}: {:#x}..{:#x}",
            app_id + 1,
            APP_BASE_ADDRESS + app_id * MAX_APP_SIZE,
            APP_BASE_ADDRESS + (app_id + 1) * MAX_APP_SIZE
        );
        let src = core::slice::from_raw_parts(
            app_start[app_id] as *const u8,
            app_start[app_id + 1] - app_start[app_id],
        );
        let dst = core::slice::from_raw_parts_mut(get_base_i(app_id) as *mut u8, src.len());
        dst.copy_from_slice(src);
    }
}

pub fn init_app_context(app_id: usize) -> usize {
    KERNEL_STACK[app_id].push_trapcontext(TrapContext::app_init_context(
        get_base_i(app_id),
        USER_STACK[app_id].get_sp(),
    ))
}
