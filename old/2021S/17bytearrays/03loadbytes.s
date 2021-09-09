	.global _Z9incstringPc
	@r0 = address of the first letter
_Z9incstringPc:
1:	
	ldrb	r1, [r0]  @read one byte into r1 = 00000068
	cmp	r1, #0		@is the byte 0? if (r1 == 0)
	beq	out
	add	r1, #1
	strb	r1, [r0], #1  @write it back out and advance r0 by 1
	b	1b
out:
	bx	lr

		.global _Z10incstring2Pc
	@r0 = address of the first letter
_Z10incstring2Pc:
	ldrb	r1, [r0]  @read one byte into r1 = 00000068
	cmp	r1, #0		@is the byte 0? if (r1 == 0)
	beq	2f
	
1:	
	add	r1, #1
	strb	r1, [r0], #1  @write it back out and advance r0 by 1

	ldrb	r1, [r0]  @read one byte into r1 = 00000068
	cmp	r1, #0		@is the byte 0? if (r1 != 0)
	bne	1b
2:
	bx	lr

	@ compute the checksum example: "hello"
	@ 'h' + 'e' + 'l' + 'l' + 'o'
	@ 68 + 65 + ...
	.global _Z3addPc
_Z3addPc:
	mov	r2, #0   @sum = 0
1:	
	ldrb	r1, [r0], #1  @load the byte and advance the pointer
	subs	r1, #0
	beq	2f
	add	r2, r1
	b	1b
2:
	mov	r0,r2
	bx	lr
	
