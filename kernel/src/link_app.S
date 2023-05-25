
	.align 4
	.section .data
	.global _app_num
_app_num:
	.quad 5
	.quad app0_start
	.quad app1_start
	.quad app2_start
	.quad app3_start
	.quad app4_start
	.quad app4_end

	.section .data
	.global app0_start
	.global app0_end
app0_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/init"
app0_end:

	.section .data
	.global app1_start
	.global app1_end
app1_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/ls"
app1_end:

	.section .data
	.global app2_start
	.global app2_end
app2_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/ps"
app2_end:

	.section .data
	.global app3_start
	.global app3_end
app3_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/sh"
app3_end:

	.section .data
	.global app4_start
	.global app4_end
app4_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/sleep"
app4_end:
