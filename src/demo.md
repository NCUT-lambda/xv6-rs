# 功能演示

目前基于 RustSBI 的 `console_getchar` 接口，实现了系统调用 `read`。并实现了一个用户程序 `sh`，其功能是接受用户输入的一行字符串，然后重新输出这个字符串。  
```
xv6-rust kernel is booting...

$ ls
ls
$ pwd
pwd
$ cd
cd
$ hello world
hello world
$ 
```