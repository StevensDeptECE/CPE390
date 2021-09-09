	ldr	r1, [r0]	@r1 = memory location at [r0]
	ldr	r1, [r0, #4]	@r1 = memory location at [r0 + 4]
	ldr	r1, [r0], #4	@r1 = memory location at [r0], THEN r0 = r0 + 4
	// y = x[i++]

	ldr     r1, [r0, #4!]	@r0 = r0 + 4  THEN r1 = memory at [r0]
	// y = x[++i]

	ldr     r1, [r0, r3]    @r1 = memory at [r0 + r3]
//	ldr	r1, [r0, r3 lsl 4]