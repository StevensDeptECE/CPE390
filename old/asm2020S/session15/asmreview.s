	add	r1, r2,r3
	add	r1, r2, #4
	add	r1, sp, #4  @ sp is a special register, but it is still r14?

	@ no memory has been harmed by these instructions

	mov	r2, #22
	str	r2, [sp, #4]	@write the value of r2 to memory location sp+4

	ldr	r3, [sp, #4]	@ read back from memory
