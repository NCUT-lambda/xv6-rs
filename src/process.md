# 进程管理
目前的进程结构的实现与 xv6 保持一致。
```rust
pub struct Proc {
    pub lock: Spinlock,

    // 当使用这些时必须持有 p->lock
    pub state: ProcState, // 进程状态
    chan: *mut u8,    // 如果非空，处于休眠态并等待睡眠锁 chan
    killed: bool,     // 如果为 true，进程被杀死
    xstate: isize,    // 退出时的状态，会返回给正在等待的父进程
    pub pid: usize,   // 进程号

    // 当使用这个域时必须持有 wait_lock
    parent: *mut Proc, // 父进程

    // 这些是进程的私有属性，不必持有 p->lock
    pub kstack: Addr,              // 内核栈的虚拟地址
    pub sz: usize,                     // 进程占用内存大小 (单位: 字节)
    pub uvm: Uvm,                  // 进程页表
    pub trapframe: *mut Trapframe, // 用于切换到内核时保存用户信息
    context: Context,              // swtch() 从这切换进程
    ofile: [*mut File; NOFILE],    // 打开的文件
    cwd: *mut Inode,               // 当前工作目录
    pub name: String,              // 进程名
}
```

## shell 程序
由于目前尚未实现文件系统，所以我们实现了一个简单的用户程序 `sh` 来测试进程相关的功能，并把 `sh` 编译得到的 `elf` 格式可执行文件硬链接进入内核的数据段，这样可以直接从内核加载用户程序并启动。

```rust
pub fn main() {
    ...
    exec_app("sh");
    ...
}
```