
	.global _Z17readingfrommemoryPii

	@ r0  = address of an array 32-bit
	@ r1  = size of the array   32-bit
_Z17readingfrommemoryPii:
	push	{r4,r5}
	mov	r3, r0
	mov		r5, r1
	mov	r4, #20
1:	
	ldr	r2, [r0]	@load r2 with the memory at location r0
	add	r0, #4		@move to next element (int is 4 bytes)
	subs	r1, #1		@count down to zero...
	bge	1b

	mov	r0, r3	@r0 is back to pointing to the array
	mov	r1, r5  @r1 is the original size of the array
	subs	r4, #1
	bne	1b
	pop	{r4,r5}
	bx	lr	
