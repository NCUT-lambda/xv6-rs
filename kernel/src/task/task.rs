use super::TaskContext;

#[derive(Clone, Copy)]
pub struct TaskControlBlock {
    pub status: TaskStatus,
    pub context: TaskContext,
}

impl TaskControlBlock {
    pub fn new() -> Self {
        Self {
            status: TaskStatus::Unused,
            context: TaskContext::new(),
        }
    }
}

#[derive(Clone, Copy, PartialEq)]
pub enum TaskStatus {
    Unused,
    Used,
    Sleeping,
    Runable,
    Running,
    Zombie,
}

// action to transfer status of task
#[derive(PartialEq)]
pub enum TaskOption {
    Suspend,
    Kill,
}
