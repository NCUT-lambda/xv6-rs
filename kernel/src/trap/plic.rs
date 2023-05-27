//
// the riscv Platform Level Interrupt Controller (PLIC).
// riscv 的平台级中断控制器 (PLIC)

use crate::{
    memory::{
        memlayout::{plic_senable, plic_spriority, PLIC, UART0_IRQ, VIRTIO0_IRQ},
        write,
    },
    process::cpu::cpuid,
};

pub fn plicinit() {
    // 设置中断请求 (IRQ) 优先级非0，否则处于关闭状态
    write(PLIC + UART0_IRQ * 4, 1u32);
    write(PLIC + VIRTIO0_IRQ * 4, 1u32);
    // println!("plicinit success!");
}

pub fn plicinithart() {
    let hart = cpuid();

    // 对于 uart 和 virtio disk 设备，设置此 hart 的 S 模式使能位
    write(
        plic_senable(hart),
        (1u32 << UART0_IRQ) | (1u32 << VIRTIO0_IRQ),
    );

    // 将此 hart 的 S 模式优先级阈值设置为 0。
    write(plic_spriority(hart), 0u32);
    // println!("plicinithart success!");
}
