
	@sum the elements of the array
	@r0 = pointer to array
	@r1 = length
	.global _Z6array1Pii
_Z6array1Pii:
	mov	r2, #0		@initialize the sum to 0
1:
	ldr	r3, [r0], #4	@load r3, then advance to next element
	add	r2, r3		@add each element
	subs	r1, #1		@count down
	bgt	1b
	mov	r0, r2
	bx	lr
	

	@r0 = destination array
	@r1 = source 1
	@r2 = source 2
	@r3 = length
	.global _Z5maxmePiS_S_S_i
_Z5maxmePiS_S_S_i
	push	{r4,r5}	
1:
	ldr	r4, [r1]	@load r4 from the first array
	ldr	r5, [r2]	@load r5 from the second array
	cmp	r4,r5		@whichever is bigger...
	strge	r4, [r0], #4	@write into the destination array
	strlt	r5, [r0], #4	@write into the destination array
	subs	r3, #1		@count down
	bgt	1b		@repeat until the array is done
	pop	{r4,r5}	
	bx	lr

	.global _Z6maxme2PiS_S_S_i
_Z6maxme2PiS_S_S_i
	push	{r4,r5}	
1:
	ldr	r4, [r1]	@load r4 from the first array
	ldr	r5, [r2]	@load r5 from the second array
	cmp	r4,r5		@whichever is bigger...
	bge	2f
	str	r5, [r0], #4	@write into the destination array
	b	3f
2:	
	str	r4, [r0], #4	@write into the destination array
3:	
	subs	r3, #1		@count down
	bgt	1b		@repeat until the array is done
	pop	{r4,r5}	
	bx	lr


	.global _Z6maxme3PiS_S_S_i
_Z6maxme3PiS_S_S_i
	push	{r4,r5}	
1:
	ldr	r4, [r1]	@load r4 from the first array
	ldr	r5, [r2]	@load r5 from the second array
	cmp	r4,r5		@whichever is bigger...
	bge	2f
	str	r5, [r0], #4	@write into the destination array
	subs	r3, #1		@count down
	bgt	1b		@repeat until the array is done
	pop	{r4,r5}	
	bx	lr

2:	
	str	r4, [r0], #4	@write into the destination array
	subs	r3, #1		@count down
	bgt	1b		@repeat until the array is done
	pop	{r4,r5}	
	bx	lr

