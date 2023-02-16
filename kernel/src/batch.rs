use crate::{sync::UPSafeCell, trap::{trapframe::TrapFrame, usertrapret}};
use core::arch::asm;
use lazy_static::*;

const MAX_APP_NUM: usize = 16;
const MAX_APP_SIZE: usize = 0x8000;
const APP_BASE_ADDRESS: usize = 0x80400000;
const KSTACK_SIZE: usize = 4096 * 2;
const USTACK_SIZE: usize = 4096 * 2;

#[repr(align(4096))]
struct KernelStack {
    data: [u8; KSTACK_SIZE],
}

#[repr(align(4096))]
struct UserStack {
    data: [u8; USTACK_SIZE],
}

static KERNEL_STACK: KernelStack = KernelStack {
    data: [0; KSTACK_SIZE],
};

static USER_STACK: UserStack = UserStack {
    data: [0; USTACK_SIZE],
};

impl KernelStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + KSTACK_SIZE;
		ret
    }
}

impl UserStack {
    pub fn get_sp(&self) -> usize {
        let ret = self.data.as_ptr() as usize + USTACK_SIZE;
		ret
    }
}

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

    unsafe fn load_app(&self, app_id: usize) {
        if app_id >= self.app_num {
            println!("All applications completed!");
            println!("The machine will shutdown!");
            panic!("Shutdown machine!");
        }

        println!("[kernel] Loading app_{}", app_id);
        // clear area
        core::slice::from_raw_parts_mut(self.app_start[app_id] as *mut u8, MAX_APP_SIZE).fill(0);
        let app_src = core::slice::from_raw_parts(
            self.app_start[app_id] as *const u8,
            self.app_start[app_id + 1] - self.app_start[app_id],
        );
        let app_dst = core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, app_src.len());

        app_dst.copy_from_slice(app_src);
        // clear icache
        asm!("fence.i");
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
}

pub fn print_app_info() {
    APP_MANAGER.get_mut().print_app_info();
}

pub fn run_next_app() -> !{
    let mut app_manager = APP_MANAGER.get_mut();
    let current_app = app_manager.get_current_app();
    unsafe {
        app_manager.load_app(current_app);
    }
	app_manager.move_to_next_app();
	drop(app_manager);
	TrapFrame::app_init_trapframe(APP_BASE_ADDRESS, KERNEL_STACK.get_sp(), USER_STACK.get_sp());
	usertrapret();
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
                app_start[i] = app_num_ptr.add(1).read_volatile();
            }
            AppManager {
                app_num,
                current_app: 0,
                app_start,
            }
        })
    };
}
