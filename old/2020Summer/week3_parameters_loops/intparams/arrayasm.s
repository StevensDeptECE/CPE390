	.global _Z3sumPii
	//r0 is pointing to the first element of array
	//r1 = len
_Z3sumPii:
	mov	r3, #0
.loop:	
	ldr	r2, [r0] @ load r2 with the first value of the array
	add	r3, r2 
	add	r0, #4
	sub	r1, #1
	cmp	r1, #0
	bne	.loop
	
	bx	lr
