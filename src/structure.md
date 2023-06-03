# 代码结构
```
.
├── bootloader
│   └── rustsbi-qemu.bin
├── kernel
│   ├── build.rs
│   ├── Cargo.toml
│   ├── Makefile
│   └── src
│       ├── allocator
│       │   └── mod.rs
│       ├── console.rs
│       ├── driver
│       │   ├── mod.rs
│       │   └── virtio_disk.rs
│       ├── entry.S
│       ├── exec
│       │   ├── apps.rs
│       │   ├── elf.rs
│       │   └── mod.rs
│       ├── fs
│       │   ├── buf.rs
│       │   ├── file.rs
│       │   ├── inode.rs
│       │   ├── log.rs
│       │   ├── mod.rs
│       │   └── pipe.rs
│       ├── kernel.ld
│       ├── lang_items.rs
│       ├── lock
│       │   ├── mod.rs
│       │   ├── sleeplock.rs
│       │   └── spinlock.rs
│       ├── logo
│       │   ├── logo
│       │   └── mod.rs
│       ├── main.rs
│       ├── memory
│       │   ├── kalloc.rs
│       │   ├── kvm.rs
│       │   ├── memlayout.rs
│       │   ├── mod.rs
│       │   ├── pagetable.rs
│       │   └── uvm.rs
│       ├── param.rs
│       ├── printf.rs
│       ├── process
│       │   ├── context.rs
│       │   ├── cpu.rs
│       │   ├── mod.rs
│       │   ├── proc.rs
│       │   └── switch.S
│       ├── riscv.rs
│       ├── sbi.rs
│       ├── string.rs
│       ├── sync
│       │   ├── mod.rs
│       │   └── upcell.rs
│       ├── syscall
│       │   ├── mod.rs
│       │   ├── sysfile.rs
│       │   └── sysproc.rs
│       └── trap
│           ├── kernelvec.S
│           ├── mod.rs
│           ├── plic.rs
│           ├── trampoline.S
│           └── trapframe.rs
├── Makefile
└── user
    ├── Cargo.toml
    ├── Makefile
    └── src
        ├── bin
        │   └── sh.rs
        ├── console.rs
        ├── lang_items.rs
        ├── lib.rs
        ├── syscall.rs
        └── user.ld
```