# 并发控制

## 多线程容器
在 Rust 中对可变静态变量的访问是不安全的，直接使用会导致代码中很多 `unsafe` 块。所以我们需要一个具有内部可变性的容器，将静态变量包含起来，来实现对静态变量的安全访问。  
实际上在 Rust 库中已经实现了类似的实现如 `RefCell`和`UnSafeCell`，`RefCell` 由于多个可变引用存在时会 `panic`，无法实现更加精细的并发控制，`UnSafeCell` 在多线程下是不安全的。   
所以我们使用 `UnSafeCell` 封装成容器 `UPCell` ，并为其实现 `trait Sync`，就可以在多线程中访问，同时允许多个可变借用存在。其实现如下：
```rust
pub struct UPCell<T> {
    data: UnsafeCell<T>,
}

unsafe impl<T> Sync for UPCell<T> {}
unsafe impl<T> Send for UPCell<T> {}

impl<T> UPCell<T> {
    pub fn new(value: T) -> Self {
        Self {
            data: UnsafeCell::new(value),
        }
    }

    pub fn get(&self) -> *mut T {
        self.data.get()
    }

    pub fn get_mut(&self) -> &mut T {
        unsafe { &mut *self.data.get() }
    }
}

```
实际上这个容器在多线程下也是不安全的，因为它允许多个可变借用存在，但这也是我们的目的。所以对于容器内部结构体中的可能会发生数据竞争的变量，需要通过加锁来避免数据竞争。  
通过组合使用 `UPCell` 和 自旋锁，可以提高程序的可并发性。

## 自旋锁
为了使锁的粒度尽量小，这里我们使用了和 xv6 同样风格的锁。
```rust
pub struct Spinlock {
    locked: AtomicBool,

    // 用于调试
    name: &'static str,
    cpu: *mut Cpu,
}
```

我们使用 Rust 中的原子类型 `AtomicBool` 的两个原子方法`compare_exchange` 和 `store` 来保证锁的获取和释放操作是原子性的。同时通过 `fence(Ordering::SeqCst)` 设置内存屏障来保证 cpu 或编译器不会将这个屏障后的指令优化到前面执行。
```rust
pub fn acquire(&mut self) {
    push_off(); // 关中断，避免死锁
    if self.holding() {
        panic!("acquire");
    }

    while self
        .locked
        .compare_exchange(false, true, Ordering::Acquire, Ordering::Acquire)
        .is_err()
    {} // 自旋等待
    fence(Ordering::SeqCst);

    self.cpu = mycpu();
}

pub fn release(&mut self) {
    if !self.holding() {
        panic!("release");
    }

    self.cpu = null_mut();

    fence(Ordering::SeqCst);

    self.locked.store(false, Ordering::Release);

    pop_off();
}
```
同时还应该注意到，在上述代码中，有两个额外的操作 `push_off` 和 `pop_off`。考虑当 `aquire` 或 `release` 时，如果发生中断，则可能会导致一个锁被多个 cpu 持有或者被多次释放，所以要保证获取锁和释放锁时中断处于关闭状态，并且还要在操作结束后恢复原来的中断状态，所以就有了如下的实现。
```rust
pub fn push_off() {
    let old = intr_get();

    intr_off();
    let mut mc = unsafe { &mut *mycpu() };

    // 第一次 push_off，需要记录之前的中断开启状态
    if mc.noff == 0 {
        mc.intena = old;
    }
    mc.noff += 1;
}

pub fn pop_off() {
    let mc: &mut Cpu = unsafe { &mut *mycpu() };
    if intr_get() {
        panic!("pop_off - interruptible");
    }
    if mc.noff < 1 {
        panic!("pop_off {}", mc.noff);
    }
    mc.noff -= 1;
    if mc.noff == 0 && mc.intena {
        intr_on();
    }
}
```

## 睡眠锁
睡眠锁主要用于需要长时间处理的资源的互斥访问，如磁盘读写。当一个睡眠锁被一个进程持有之后，后续试图获取这个锁的进程会进入休眠状态，从而避免了`自旋锁`那样的忙等。  
其实现如下：
```rust
pub struct Sleeplock {
    locked: bool, // 此锁是否被持有
    lk: Spinlock, // 用于保护此锁的自旋锁

    // 用于调试
    name: &'static str, // 锁的名字
    pid: usize,         // 拥有锁的进程
}

pub fn acquire(&mut self) {
    self.lk.acquire();
    while self.locked {
        sleep(self as *mut Sleeplock, &mut self.lk);
    }
    self.locked = true;
    let p = unsafe {  & *myproc()};
    self.pid = p.pid;
    self.lk.release();
}

pub fn release(&mut self) {
    self.lk.acquire();
    self.locked = false;
    self.pid = 0;
    wakeup(self as *mut Sleeplock);
    self.lk.release();
}
```
在实现睡眠锁时要注意两个问题：
1. 避免唤醒丢失的问题
2. 避免出现死锁

考虑下面一种情况：
- 现有一把睡眠锁 lk 被进程 A 持有，进程 B 尝试获取 lk 失败，所以会进入睡眠，在它即将进入睡眠状态之前，进程 A 释放了 lk，由于这个时候进程 B 还没有完全进入睡眠状态，所以进程 A 不会释放进程 B，在 B 彻底进入睡眠状态后就无人将它唤醒了，所以这种问题也就是唤醒丢失问题。

很容易发现上述问题是由于睡眠操作和唤醒操作的非互斥进行造成的，所以我们在 `Sleeplock` 中加入了一个 `Spinlock` 来保证 `sleep()` 和 `wakeup()` 的原子性。但这样也引入了另外一个问题。
- 当进程进入睡眠状态时，会带着持有的 `lk` 一起进入睡眠，所以后续进程也就无法使用 `lk`，从而导致死锁。

实际上在 `sleep()` 内部，会释放 `lk` 并通过另一把进程锁 `p->lock` 来接替 `lk` 的任务，并且 `p->lock` 是会自动释放的，这样就避免了死锁的产生。在 `walkeup()` 中的实现也是类似的。

所以我们巧妙地使用了两把 `Spinlock` 来实现了 `Sleeplock`。