use core::{cell::Cell, mem::transmute};

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
        unsafe { transmute(self.data.as_ptr()) }
    }
}
