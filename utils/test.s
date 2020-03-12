	.global x
x:
	.fnstart
	mov	r0, #3
	add	r1,r0,#2
	sub	r2,r0,r1
	cmp	r2, #3
	bne	y
	and	r3,r1,#6
	orr	r4,r1,#5
y:	bx	lr
