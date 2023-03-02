use core::cell::{RefCell, RefMut};

pub struct UPSafeCell<T> {
    value: RefCell<T>,
}

unsafe impl<T> Sync for UPSafeCell<T> {}
unsafe impl<T> Send for UPSafeCell<T> {}

impl<T> UPSafeCell<T> {
    pub fn new(value: T) -> Self {
        Self {
            value: RefCell::new(value),
        }
    }
    pub fn get_mut(&self) -> RefMut<'_, T> {
        self.value.borrow_mut()
    }
}
