	.global main
main:
	mov r0, #0x4d
thecall:
	push	{lr}
	bl	f	@ lr = pc  (thecall+4), pc = f
	b	xyz @ GOTO (pc = pc + delta)
	cmp r0, r2
	bgt	xyz	@ conditional, but still GOTO
	ble	xyz
	beq	xyz
	bne	xyz
	blo	xyz
	bhi	xyz
	add	r0,r1,r2
	addgt	r0,r1,r2
	addlt	r0,r1,r2
xyz:
	mov	r0, #23
	pop	{lr}
	bx	lr    @ this line has a problem.
f:
	mul	r0, r0, r1
	bx	lr      @ return   pc = lr
