pub const NPROC: usize = 64; // 最大进程数
pub const NCPU: usize = 3; // 最大 cpu 数
pub const NOFILE: usize = 16; // 每个进程打开的最多文件数
pub const NFILE: usize = 100; // 系统最多打开的文件数
pub const NINODE: usize = 50; // 最多可用的 inode 数
pub const NDEV: usize = 10; // 最多设备数
pub const ROOTDEV: usize = 1; // 磁盘设备号
pub const MAXARG: usize = 32; // exec 可接受的最多参数
pub const MAXOPBLOCKS: usize = 10; // 文件系统写操作可打开最多 block 数
pub const LOGSIZE: usize = MAXOPBLOCKS * 3; // 最大 log 大小
pub const NBUF: usize = MAXOPBLOCKS; // 最大 buf 块的个数
pub const FSSIZE: usize = 2000; // 文件系统 block 数
pub const MAXPATH: usize = 128; // 路径最大长度