	.global _Z3sumPii
_Z3sumPii:	
	@r0 = address of the memory
	@r1 = number of elements
	mov	r3, r0
	mov	r0, #0
1:
	ldr	r2, [r3] @ load the element at location r0
	add	r0, r2   @ add onto the running sum
	add	r3, #4
	subs	r1, #1
	blt	1b
	@r3 = sum of all elements
	bx	lr
