
	.global _Z5sumav
	@r0 = points to first array
	@r1 = pointer to 2nd array
	@r2 = length
_Z5sumav:
	push 	{r4,r5}
	mov	r5, #0   @sum = r5
loop:	
	ldr	r3, [r0], #4    @   a = x[i]
	ldr	r4, [r1], #4    @   b = y[i]
	add	r3, r3,r4
	lsr	r3, #1
	add	r5, r3
	
	//add     r0, #4
	//add     r1, #4	
	subs	r2, #1
	bne	loop
	
	mov	r0, r5    @ return the sum
	pop	{r4,r5}
	bx	lr

	

	.global _Z5pairs
	@r0 = points to first array
	@r1 = length
_Z5pairs:
	push	{r4-r9}
	mov	r8, #0
1:	
	ldr   r4, [r0]
	ldr   r5, [r0, #4]
	add	r0, #8

	add  r3, r4,r5 @ r3 = a[i]+a[i+1]
	sub  r6, r4,r5 @ r4 = a[i]-a[i+1]
	mul  r7, r3,r6 @ r7 = (a[i]+a[i+1])*(a[i]-a[i+1])
	add  r8, r7
	subs  r1, #1
	bne  1b
	mov  r0, r8 @ return the value
	pop	{r4-r9}
	bx	lr

	


	
