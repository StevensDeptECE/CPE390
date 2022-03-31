	.global main
main:
	stp	lr, x0, [sp, #-16]!
	bl 	f
	ldp	lr, x0, [sp], #16
	ret


f:
	sub sp, sp, #240   
	bl	f
