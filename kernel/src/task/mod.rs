use core::arch::global_asm;

use lazy_static::lazy_static;

use crate::sync::UPSafeCell;

use self::{
    context::TaskContext,
    loader::{get_app_num, init_app_context},
    param::MAX_APP_NUM,
    task::{TaskControlBlock, TaskStatus},
};

global_asm!(include_str!("switch.S"));

mod context;
mod loader;
pub mod param;
mod stack;
#[allow(clippy::module_inception)]
mod task;

extern "C" {
    fn switch(old_cx: *mut TaskContext, new_cx: *const TaskContext);
}

pub fn init() {
    unsafe {
        loader::load_apps();
    }
}

pub struct TaskManager {
    task_num: usize,
    tasks: [TaskControlBlock; MAX_APP_NUM],
    current_task: usize,
}

lazy_static! {
    pub static ref TASK_MANAGER: UPSafeCell<TaskManager> = unsafe {
        UPSafeCell::new({
            let task_num = get_app_num();
            let mut tasks = [TaskControlBlock {
                status: TaskStatus::UNUSED,
                context: TaskContext::new(),
            }; MAX_APP_NUM];
            for (app_id, task) in tasks.iter_mut().enumerate() {
                task.status = TaskStatus::RUNNABLE;
                task.context.init(init_app_context(app_id));
            }
            TaskManager {
                task_num,
                tasks,
                current_task: 0,
            }
        })
    };
}

impl TaskManager {}
