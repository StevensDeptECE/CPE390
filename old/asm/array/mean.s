	.global	_Z4meanPii
_Z4meanPii:
	.fnstart
	push	{r2,r3,r4}
	mov	r3, r1	@copy the number of elements into r3
	mov	r2, #0
.loop:	
	ldr	r4, [r0]
	add	r2, r4
	add	r0, #4
	sub	r1,#1
	bgt	.loop
	mov	r0, r2	@r0 has the answer
	pop	{r2,r3,r4}
	bx	lr
