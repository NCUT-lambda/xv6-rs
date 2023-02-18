.altmacro
.macro SAVE_GP n
	sd x\n, \n*8(sp)
.endm
.macro LOAD_GP n
	ld x\n, \n*8(sp)
.endm

	.section .text
	.align 4
	.global user_trap
	.global user_return
user_trap:
	# new sp->user stack, sscratch->kernel stack
	# swap sp and sscratch
	csrrw sp, sscratch, sp

	# allocate space for user trapcontext
	addi sp, sp, -33*8
	
	# save general registers
	.set n, 1
	.rept 31
		SAVE_GP %n
		.set n, n+1
	.endr

	# save user sp
	csrr t0, sscratch
	sd t0, 2*8(sp)

	# save sepc
	csrr t0, sepc
	sd t0, 32*8(sp)

	# set input argument of user_trap_handler(cx: &mut TrapContext)
	mv a0, sp

	#jump to user_trap_handler() not return
	call user_trap_handler

# user_trap_handler() will return here
user_return:
	# now a0->kernel stack
	# move a0 to sp
	mv sp, a0

	# restore sepc
	ld t0, 32*8(sp)
	csrw sepc, t0

	# save user sp in sscratch
	ld t0, 2*8(sp)
	csrw sscratch, t0

	# restore general registers but sp
	ld x1, 1*8(sp)
	.set n, 3
	.rept 29
		LOAD_GP %n
		.set n, n+1
	.endr

	# release trapcontext in kernel stack
	addi sp, sp, 33*8

	# now sp->kernel stack, sscratch->user stack
	# swap user stack and kernel stack
	csrrw sp, sscratch, sp

	sret
