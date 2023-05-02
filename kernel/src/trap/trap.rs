#[no_mangle]
pub fn usertrap() {}

#[no_mangle]
pub fn usertrapret() {}

#[no_mangle]
pub fn kerneltrap() {}

pub fn clockintr() {}

pub fn devintr() {}
