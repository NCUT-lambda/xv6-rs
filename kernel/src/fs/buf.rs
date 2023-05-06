use core::ptr::null_mut;

use crate::{
    lock::{sleeplock::Sleeplock, spinlock::Spinlock},
    param::NBUF,
    sync::upcell::UPCell,
};
use array_macro::array;
use lazy_static::*;

pub const BSIZE: usize = 1024; // Buf 块大小

pub struct Buf {
    valid: bool, // 是否已经从磁盘读取
    disk: bool,  // 是否已写入磁盘

    dev: usize,
    blockno: usize,
    lock: Sleeplock,
    refcnt: usize,
    prev: *mut Buf, // LRU 链表
    next: *mut Buf,
    data: [u8; BSIZE],
}

impl Buf {
    pub fn new() -> Self {
        Self {
            valid: false,
            disk: false,
            dev: 0,
            blockno: 0,
            lock: Sleeplock::new("buffer"),
            refcnt: 0,
            prev: null_mut(),
            next: null_mut(),
            data: [0; BSIZE],
        }
    }

    // pub fn bget<'a>(dev: usize, blockno: usize) -> &'a mut Buf {}
}

pub struct Bcache {
    lock: Spinlock,
    buf: [Buf; NBUF],

    // 缓冲块链表
    // 使用最近最少使用算法
    // head.next 是最常使用的，head.prev 是最不常使用的
    head: Buf,
}

lazy_static! {
    static ref BCACHE: UPCell<Bcache> = UPCell::new(Bcache {
        lock: Spinlock::new("bcache"),
        buf: array![_ => Buf::new(); NBUF],
        head: Buf::new()
    });
}
