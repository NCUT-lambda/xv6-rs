use core::{cell::Cell, mem::transmute};

// 一个能够多线程容器，但可能会存在数据竞争
// 若要保证多线程安全，应配合 Spinlock 使用
pub struct UPCell<T> {
    data: Cell<T>,
}

unsafe impl<T> Sync for UPCell<T> {}
unsafe impl<T> Send for UPCell<T> {}

impl<T> UPCell<T> {
    pub fn new(value: T) -> Self {
        Self {
            data: Cell::new(value),
        }
    }

    pub fn get_mut<'a>(&self) -> &'a mut T {
        unsafe {&mut  *self.data.as_ptr() }
    }
}
