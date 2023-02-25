use super::TaskContext;

#[derive(Clone, Copy)]
pub struct TaskControlBlock {
    pub status: TaskStatus,
    pub context: TaskContext,
}

#[derive(Clone, Copy)]
pub enum TaskStatus {
    UNUSED,
    USED,
    SLEEPING,
    RUNNABLE,
    RUNNING,
    ZOMBIE,
}