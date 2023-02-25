use core::arch::global_asm;

use lazy_static::lazy_static;

use crate::{
    board::{QEMUExit, QEMU_EXIT_HANDLE},
    sync::UPSafeCell,
};

use self::{
    context::TaskContext,
    loader::{get_app_num, init_app_context},
    param::MAX_APP_NUM,
    task::{TaskControlBlock, TaskOption, TaskStatus},
};

global_asm!(include_str!("switch.S"));

mod context;
mod loader;
pub mod param;
mod stack;
#[allow(clippy::module_inception)]
pub mod task;

extern "C" {
    fn switch(old_cx: *mut TaskContext, new_cx: *const TaskContext);
}

pub struct TaskManagerInner {
    tasks: [TaskControlBlock; MAX_APP_NUM],
    current: usize,
}

pub struct TaskManager {
    task_num: usize,
    inner: UPSafeCell<TaskManagerInner>,
}

lazy_static! {
    pub static ref TASK_MANAGER: TaskManager = TaskManager {
        task_num: get_app_num(),
        inner: UPSafeCell::new({
            let mut tasks = [TaskControlBlock::new(); MAX_APP_NUM];
            for (i, task) in tasks.iter_mut().enumerate() {
                task.status = TaskStatus::Runable;
                task.context.init(init_app_context(i));
            }
            TaskManagerInner { tasks, current: 0 }
        })
    };
}

impl TaskManager {
    fn run_first_task(&self) -> ! {
        let mut inner = self.inner.get_mut();
        let current = inner.current;
        inner.tasks[current].status = TaskStatus::Running;
        let mut zero = TaskContext::new();
        let first_cx = &mut inner.tasks[current].context as *const TaskContext;
        drop(inner);
        unsafe {
            switch(&mut zero as *mut TaskContext, first_cx);
        }
        panic!("Unreachaable in run_first_task!");
    }

    fn mark_current_runnable(&self) {
        let mut inner = self.inner.get_mut();
        let current = inner.current;
        inner.tasks[current].status = TaskStatus::Runable;
    }

    fn mark_current_zombie(&self) {
        let mut inner = self.inner.get_mut();
        let current = inner.current;
        inner.tasks[current].status = TaskStatus::Zombie;
    }

    fn find_next_task(&self) -> Option<usize> {
        let inner = self.inner.get_mut();
        let current = inner.current;
        ((current + 1)..(current + 1 + self.task_num))
            .map(|x| x % self.task_num)
            .find(|&id| inner.tasks[id].status == TaskStatus::Runable)
    }

    fn run_next_task(&self) {
        if let Some(next) = self.find_next_task() {
            let mut inner = self.inner.get_mut();
            let current = inner.current;
            inner.tasks[next].status = TaskStatus::Running;
            inner.current = next;
            let mut old_cx = &mut inner.tasks[current].context as *mut TaskContext;
            let new_cx = &inner.tasks[next].context as *const TaskContext;

            drop(inner);
            unsafe {
                switch(old_cx, new_cx);
            }
        } else {
            println!("[kernel] All tasks completed!");
            QEMU_EXIT_HANDLE.exit_success();
        }
    }
}

pub fn run_first_task() {
    TASK_MANAGER.run_first_task();
}

pub fn run_next_task(action: TaskOption) {
    match action {
        TaskOption::Suspend => {
            TASK_MANAGER.mark_current_runnable();
            TASK_MANAGER.run_next_task();
        }
        TaskOption::Kill => {
            TASK_MANAGER.mark_current_zombie();
            TASK_MANAGER.run_next_task();
        }
        _ => panic!("Invalid operation in run_next_task!"),
    }
}

pub use loader::load_apps;
