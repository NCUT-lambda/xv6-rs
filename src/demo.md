# 功能演示

目前基于 RustSBI 的 `console_getchar` 接口，实现了系统调用 `read`。并实现了一个用户程序 `sh`，其功能是接受用户输入的一行字符串，然后重新输出这个字符串。  
```
[rustsbi] RustSBI version 0.3.0-alpha.4, adapting to RISC-V SBI v1.0.0
.______       __    __      _______.___________.  _______..______   __
|   _  \     |  |  |  |    /       |           | /       ||   _  \ |  |
|  |_)  |    |  |  |  |   |   (----`---|  |----`|   (----`|  |_)  ||  |
|      /     |  |  |  |    \   \       |  |      \   \    |   _  < |  |
|  |\  \----.|  `--'  |.----)   |      |  |  .----)   |   |  |_)  ||  |
| _| `._____| \______/ |_______/       |__|  |_______/    |______/ |__|
[rustsbi] Implementation     : RustSBI-QEMU Version 0.2.0-alpha.2
[rustsbi] Platform Name      : riscv-virtio,qemu
[rustsbi] Platform SMP       : 3
[rustsbi] Platform Memory    : 0x80000000..0x88000000
[rustsbi] Boot HART          : 0
[rustsbi] Device Tree Region : 0x87000000..0x8700117a
[rustsbi] Firmware Address   : 0x80000000
[rustsbi] Supervisor Address : 0x80200000
[rustsbi] pmp01: 0x00000000..0x80000000 (-wr)
[rustsbi] pmp02: 0x80000000..0x80200000 (---)
[rustsbi] pmp03: 0x80200000..0x88000000 (xwr)
[rustsbi] pmp04: 0x88000000..0x00000000 (-wr)
__  ____     ____         ____  _   _ ____ _____ 
\ \/ /\ \   / / /_       |  _ \| | | / ___|_   _|
 \  /  \ \ / / '_ \ _____| |_) | | | \___ \ | |  
 /  \   \ V /| (_) |_____|  _ <| |_| |___) || |  
/_/\_\   \_/  \___/      |_| \_\\___/|____/ |_|  
                                                 
    where there is a shell, there is a way

xv6-rust kernel is booting...

$ hello world
hello world
$ shell
shell
$ xv6-rust
xv6-rust
$ 
```

## 视频演示
<video src="images/MP4_20230815_104140VLOG.mp4">演示视频</video>