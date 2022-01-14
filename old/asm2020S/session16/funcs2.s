	.global _Z1fPKii
	.global _Z1gPKii
	@r0 = pointer to 1st el array
	@ r1= number of elements in the array
_Z1fPKii:
.L1:
	ldr 	r2, [r0]
	add	r3, #1
	subs 	r1, #1
	bgt	.L1
	bx 	lr	

	_Z1gPKii:
.L2:
	ldr 	r2, [r0]
	add	r0, #4
	subs 	r1, #1
	bgt	.L2
	bx      lr
