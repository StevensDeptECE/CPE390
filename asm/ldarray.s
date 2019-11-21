	.global _Z9loadarrayPKii

_Z9loadarrayPKii:	
	.fnstart
	@r0 = location of the array
	@r1 = length of array

xyz:	
	ldr	r2, [r0]  // load from location r0 into register r2
	add	r0, #4
	subs	r0, #1
	bne	xyz
	bx 	lr
