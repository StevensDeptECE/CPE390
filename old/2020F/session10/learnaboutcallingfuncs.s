	.global main
main:
	bl	x
	bl	y
x:
	mov	r3, #22
	bx	lr
y:
	ldr	r3, =main
	bx	r3
	
