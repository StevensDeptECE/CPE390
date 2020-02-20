	.global xyz
xyz:
	@ we will talk about this later :	.fnstart

	add	r0, #5	@ immediate mode r0 = r0 + 5
	add	r0, r1	@ 2-operand  r0 = r0 + r1
	add	r0, r1, r2	@ 3 operand instruction: r0 = r1 + r2

	sub	r0, r1	 @ r0 = r0 - r1
	rsb	r0, r1   @ r0 = r1 - r0

	@mul

	eor	r0, r1, r2 @ exclusive-or		a ^ b	
	orr	r0, r1, r2 @ inclusive-or		a | b
	and	r0, r1, r2 @ AND			a & b
	mvn	r0, r1     @r0 = NOT r1			a = ~b
	mvn	r1,r1	   @r1 = NOT r1
	
	lsl	r0, #3	@ shift left by 3		a << 3
	lsr	r0, #5  @ shift right by 5		a >> 5
	asl	r0, #4	@ arithmetic shift left
	asr	r0, #2	@ arithmetic shift right

	@ 0000000000000000000000000001010
	@ 0000000000000000000000001010000

	@ for arithmetic shift, what if your number is negative???
	@ 1111111111111111111111111111010 if this is negative, what is the num
	@ 0000000000000000000000000000101 first invert
	@ 0000000000000000000000000000110 = 6your number was -6

	
	@imagine we right shift by 2 (asr r0, #2)
	@ 1111111111111111111111111111010
	@ 1111111111111111111111111111101
	@ 1111111111111111111111111111110
	@ 1111111111111111111111111111110   copy the sign bit and extend right

	@ asl r0, #1
	@ 1000000000000000000000000000001
	@ 1000000000000000000000000000010


	mov r0, #255		@ range 0..255
	ldr r0, =0xFE2C1991

	ldr r0, 	x
	ldrb	r1, [r0]	@r1 = 0 0 0 H		0x00000048 
	add	r0, #1
	ldrb	r2, [r0]	@r2 = 0 0 0 E
x:	.asciiz "HELLO"		@ H E L L O \0
