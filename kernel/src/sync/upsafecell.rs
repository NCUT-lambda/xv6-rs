use core::cell::{RefCell, RefMut};

pub struct UPSafeCell<T> {
    data: RefCell<T>,
}

unsafe impl<T> Sync for UPSafeCell<T> {}
unsafe impl<T> Send for UPSafeCell<T> {}

impl<T> UPSafeCell<T> {
    pub fn new(value: T) -> Self {
        Self {
            data: RefCell::new(value),
        }
    }
    pub fn access_exclusive(&self) -> RefMut<'_, T> {
        self.data.borrow_mut()
    }
}
