	.global _Z1fPKc
_Z1fPKc:
	ldr	r2, [r0]        @r2 = 0x48454c4c
	ldrb	r1, [r0]	@r1 = 0x00000048
	add	r0, #1
	ldrb	r3, [r0]!
	bx lr	

	
