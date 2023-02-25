.altmacro
.macro SAVE_SN n
	sd s\n, \n*8(a0)
.endm
.macro LOAD_SN n
	ld s\n, \n*8(a1)
.endm
	.section .text
	.global switch
	// switch(old_cx: *mut TaskContext, new_cx: *const TaskContext)
switch:
	sd ra, 12*8(a0)
	sd sp, 13*8(a0)

	.set n, 0
	.rept 12
		SAVE_SN %n
		.set n, n + 1
	.endr

	ld ra, 12*8(a1)
	ld sp, 13*8(a1)

	.set n, 0
	.rept 12
		LOAD_SN %n
		.set n, n + 1
	.endr

	ret