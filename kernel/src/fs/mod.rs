mod buf;
mod file;
mod log;
mod pipe;

pub const ROOTOIN: usize = 1;	// 根 inode 号
pub const BSIZE: usize = 1024;	// Buf 块大小