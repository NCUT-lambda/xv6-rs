	.section .text.entry
	.global _start

.equ NCPU, 8
.equ BOOT_STACK_SIZE, 4096 * 16

_start:
	mv tp, a0				// 设置 tp

	// 为每一个 cpu 分配一个栈，大小为 4096 * 16 byte
	// sp = boot_stack_b + (tp * 4096 * 16)
	la sp, boot_stack_bottom
	li t0, BOOT_STACK_SIZE
	addi a0, a0, 1
	mul t0, t0, a0
	add sp, sp, t0
	call main

	.section .bss.stack
	.global boot_stack_bottom
boot_stack_bottom:
	.space BOOT_STACK_SIZE * NCPU
	.global boot_stack_top
boot_stack_top: