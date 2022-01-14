	@ r0 = start of array
	@ r1 = length of array
	@ r2 = start offset to shift (ie 3)


	@r3= r0+r2*4
@	lsl	r3, r2, #2 @ r3 = r2 * 4
@	add     r3, r0
	
	add	r3, r0, r2, lsl #2 @r3 = r0 + r2 * 4
	sub	r1, r1, r2
1:	
	ldr	r4, [r3]
	str	r4, [r0]
	add	r0, #4
	add	r3, #4

	subs	r1, #1
	bgt	1b
	bx	lr
