
	.align 4
	.section .data
	.global _app_num
_app_num:
	.quad 3
	.quad app0_start
	.quad app1_start
	.quad app2_start
	.quad app2_end

	.section .data
	.global app0_start
	.global app0_end
app0_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/app1"
app0_end:

	.section .data
	.global app1_start
	.global app1_end
app1_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/app2"
app1_end:

	.section .data
	.global app2_start
	.global app2_end
app2_start:
	.incbin "../user/target/riscv64gc-unknown-none-elf/release/app3"
app2_end:
