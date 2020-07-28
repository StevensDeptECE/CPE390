	.global _Z7sumArr3Pi
	@r0 = pointer to the start of the array
_Z7sumArr3Pi:
	ldr	r1, [r0]

	add 	r0, #4
	ldr     r2, [r0]
	add 	r0, #4
	ldr     r3, [r0]
	add	r0, r1, r2  @r0 = r1 + r2
	add	r0, r3      @ r0 += r3 THE ANSWER
	bx	lr
	
