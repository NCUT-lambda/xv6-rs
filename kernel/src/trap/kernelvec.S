.macro SAVE_GP_SP n
	sd x\n, \n*8(sp)
.endm
.macro LOAD_GP_SP n
	ld x\n, \n*8(sp)
.endm

	.global kernel_trap
	.global kernelvec
	.align 4
kernelvec:

	addi sp, sp, -256

	# save the registers
	.set n, 1
	.rept 31
		SAVE_GP_SP %n
		.set n, n+1
	.endr

	# call the rust trap handler in trap.rs
	call kerneltrap

	# restore registers
	.set n, 1
	.rept 3
		LOAD_GP_SP %n
		.set n, n+1
	.endr
	# not contains tp, in case we moved CPUS
	.set n, 5
	.rept 27
		LOAD_GP_SP %n
		.set n, n+1
	.endr

	sret

	.global timervec
	.align 4
timervec:
	# todo