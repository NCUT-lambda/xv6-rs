mod buf;
mod file;
mod inode;
mod log;
mod pipe;

pub const ROOTOIN: usize = 1; // 根 inode 编号

pub use buf::binit;
pub use file::fileinit;
pub use file::File;
pub use inode::iinit;
pub use inode::Inode;
