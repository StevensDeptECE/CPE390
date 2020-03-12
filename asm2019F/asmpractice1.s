	@ paper assembler practice: learn the instructions
	@ for each instruction write down the value of the register(s) affected next to it
	.global _Z1fv
_Z1fv:	
	mov	r0, #2		@ example: r0 = 2
	ldr	r1, =#100	@
	mov	r2, #5		@
	add	r3, r0,r1	@
	sub	r1, #7		@
	and	r4, r2,r1	@
	orr	r5, r2,r1	@
	eor	r6, r2,r1	@
	ldr	r3, =#0xFC12805C@
	eor	r7, r1,r2	@
	eor	r6, r6,r6	@
	and	r2, r2,r2	@
	bx	lr
