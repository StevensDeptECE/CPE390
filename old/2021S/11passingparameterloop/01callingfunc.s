	.global main
main:
	push	{lr}
	bl	f	@ lr=pc+4         pc = f
	bl	g	@ lr = pc+4       pc = g
	bl	f	@ lr=pc+4         pc = f

	pop	{lr}
	bx	lr	@ pc = lr
f:
	mov	r0, #52
	bx	lr	   @return  pc=lr

g:
	mov	r0, #66
	bx	lr	   @return
	
