.altmacro
.macro SAVE_GP n
	sd x\n, \n*8(a0)
.endm
.macro LOAD_GP n
	ld x\n, \n*8(a0)
.endm

TRAPFRAME = 0x80ffe000;

.section .text
.global uservec
.align 4
uservec:      
	# save user a0 in sscratch 
	# a0 can be used to get at TRAPFRAME.
	csrw sscratch, a0

	li a0, TRAPFRAME

	# save the user registers in TRAPFRAME, except x0
	.set n, 1
	.rept 31
		SAVE_GP %n
		.set n, n+1
	.endr

	# save the user a0 in TRAPFRAME.
	csrr t0, sscratch
	sd t0, 10*8(a0)

	# load kernel stack pointer, from PTRAMFRAME->kernel_sp
	ld sp, 33*8(a0)

	# jump to usertrap(), which does not return
	j usertrap
.global userret
.align 4
userret:
	li a0, TRAPFRAME
	# restore all registers but a0 from TRAPFRAME
	.set n, 1
	.rept 9
		LOAD_GP %n
		.set n, n+1
	.endr
	.set n, 11
	.rept 21
		LOAD_GP %n
		.set n, n+1
	.endr

	ld a0, 10*8(a0)

    sret
