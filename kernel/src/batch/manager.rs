use super::stack::{KERNEL_STACK, USER_STACK};
use crate::board::{QEMUExit, QEMU_EXIT_HANDLE};
use crate::sync::UPSafeCell;
use crate::trap::{user_trap_return, TrapContext};
use core::arch::asm;
use lazy_static::*;

const MAX_APP_NUM: usize = 16;
const MAX_APP_SIZE: usize = 0x20000;
const APP_BASE_ADDRESS: usize = 0x80400000;

pub struct AppManager {
    app_num: usize,
    current_app: usize,
    app_start: [usize; MAX_APP_NUM + 1],
}

impl AppManager {
    fn print_app_info(&self) {
        println!("[kernel] Application infomations.");
        println!("[kernel] app_num: {}", self.app_num);
        for i in 0..self.app_num {
            println!(
                "[kernel] app_{}: {:#x}..{:#x}",
                i,
                self.app_start[i],
                self.app_start[i + 1]
            );
        }
    }

    unsafe fn load_apps(&self) {
        // clear application area
        let area = core::slice::from_raw_parts_mut(
            APP_BASE_ADDRESS as *mut u8,
            MAX_APP_NUM * MAX_APP_SIZE,
        );
        area.fill(0);

        for app_id in 0..self.app_num {
            println!(
                "[kernel] loading task{}: {:#x}..{:#x}",
                app_id + 1,
                APP_BASE_ADDRESS + app_id * MAX_APP_SIZE,
                APP_BASE_ADDRESS + (app_id + 1) * MAX_APP_SIZE
            );
            let src = core::slice::from_raw_parts(
                self.app_start[app_id] as *const u8,
                self.app_start[app_id + 1] - self.app_start[app_id],
            );
            let dst = core::slice::from_raw_parts_mut(
                (APP_BASE_ADDRESS + app_id * MAX_APP_SIZE) as *mut u8,
                src.len(),
            );
            dst.copy_from_slice(src);
        }
    }

    pub fn get_current_app(&self) -> usize {
        self.current_app
    }

    pub fn move_to_next_app(&mut self) {
        self.current_app += 1;
    }
}

pub fn init() {
    print_app_info();
    let mut app_manager = APP_MANAGER.get_mut();
    unsafe {
        app_manager.load_apps();
    }
    drop(app_manager);
}

pub fn print_app_info() {
    APP_MANAGER.get_mut().print_app_info();
}

pub fn run_next_app() -> ! {
    let mut app_manager = APP_MANAGER.get_mut();
    let current_app_id = app_manager.get_current_app();
    if current_app_id == app_manager.app_num {
        println!("[kernel] all tasks completed");
        println!("[kernel] machine will shutdown");
        QEMU_EXIT_HANDLE.exit_success();
    }

    app_manager.move_to_next_app();
    drop(app_manager);

	println!("[kernel] task{} running", current_app_id + 1);
    user_trap_return(KERNEL_STACK.push_trapcontext(TrapContext::app_init_context(
        APP_BASE_ADDRESS + current_app_id * MAX_APP_SIZE,
        USER_STACK.get_sp(),
    )) as *const _ as usize);

    panic!("Unreachable in batch::run_current_app!");
}

lazy_static! {
    pub static ref APP_MANAGER: UPSafeCell<AppManager> = unsafe {
        UPSafeCell::new({
            extern "C" {
                fn _app_num();
            }
            let app_num_ptr = _app_num as usize as *const usize;
            let app_num = app_num_ptr.read_volatile();
            let mut app_start: [usize; MAX_APP_NUM + 1] = [0; MAX_APP_NUM + 1];
            for i in 0..=app_num {
                app_start[i] = app_num_ptr.add(i + 1).read_volatile();
            }
            AppManager {
                app_num,
                current_app: 0,
                app_start,
            }
        })
    };
}
