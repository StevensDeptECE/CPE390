	@
	@ return sum x[i]*x[i]*y[i]*y[i]
	@
	@ r0 = x   r1 = y  r2 = number of elements
	.global _Z3sum
_Z3sum:
	push	{r4, r5}
	mov	r5, #0
1:	
	ldr	r3, [r0], #4
	ldr	r4, [r1], #4
	mul	r3, r3,r4
	mla	r5, r3, r3
	subs r2, #1
	bne	1b
	mov	r0, r5
	pop	{r4,r5}
	bx	lr
