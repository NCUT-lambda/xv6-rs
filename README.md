# xv6-rust

## 环境配置
**！默认系统环境为 Ubuntu 20.04 及以上。**

### Rust 环境配置
首先安装 Rust 版本管理器 rustup 和 Rust 包管理器 cargo，这里我们用官方的安装脚本来安装：
```sh
curl https://sh.rustup.rs -sSf | sh
```
如果官方的脚本在运行时出现了网络速度较慢的问题，可选地可以通过修改 rustup 的镜像地址（修改为中国科学技术大学的镜像服务器）来加速：
```sh
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
curl https://sh.rustup.rs -sSf | sh
```
安装完成后，我们可以重新打开一个终端来让之前设置的环境变量生效。我们也可以手动将环境变量设置应用到当前终端，只需要输入以下命令：
```sh
source $HOME/.cargo/env
```
**！注意操作系统的开发只能使用 rustc 的 nightly 类型的版本。**  
可通过如下命令安装 rustc 的 nightly 版本，并把该版本设置为 rustc 的缺省版本。
```sh
rustup install nightly
rustup default nightly
```
接下来安装一些Rust相关的软件包
```sh
rustup target add riscv64gc-unknown-none-elf
cargo install cargo-binutils
rustup component add llvm-tools-preview
rustup component add rust-src
```
**！如果你换了另外一个rustc编译器（必须是nightly版的），需要重新安装上述rustc所需软件包。**

### QEMU 模拟器安装
我们需要使用 QEMU 7.0 版本，低版本的 QEMU 可能导致框架代码不能正常运行。
```sh
# 安装编译所需的依赖包
sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev \
              gawk build-essential bison flex texinfo gperf libtool patchutils bc \
              zlib1g-dev libexpat-dev pkg-config  libglib2.0-dev libpixman-1-dev libsdl2-dev \
              git tmux python3 python3-pip ninja-build
# 下载源码包
wget https://download.qemu.org/qemu-7.0.0.tar.xz
# 解压
tar xvJf qemu-7.0.0.tar.xz
# 编译安装并配置 RISC-V 支持
cd qemu-7.0.0
./configure --target-list=riscv64-softmmu,riscv64-linux-user  # 如果要支持图形界面，可添加 " --enable-sdl" 参数
make -j$(nproc)
```
之后我们可以在同目录下 `sudo make install` 将 QEMU 安装到 `/usr/local/bin` 目录下，但这样经常会引起冲突。个人来说更习惯的做法是，编辑 `~/.bashrc` 文件（如果使用的是默认的 bash 终端），在文件的末尾加入几行：
```sh
# 请注意，qemu-7.0.0 的父目录可以随着你的实际安装位置灵活调整
export PATH=$PATH:/path/to/qemu-7.0.0/build
```

### GDB 调试支持
目前仅支持基于 QEMU 模拟器进行调试。在 os 目录下 `make qemu-gdb` 可以调试我们的内核。安装支持 riscv64 指令集的 gdb 调试器 `gdb-multiarch`。
```sh
sudo apt-get install gdb-multiarch
```