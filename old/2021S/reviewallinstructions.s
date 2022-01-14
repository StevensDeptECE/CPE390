	ldr	r0, =	0x1234ABCD  @ [pc, #1234]
	ldr	r0, [r1]
	ldr	r0, [r1, #4]
	ldr	r0, [r1], #4    @first load r0=memory[r1] then r1=r1+4
	ldr	r0, [r1, #4]!   @first r1=r1+4, then load r0=memory[r1]


	mov	r0, #255	@up to 8 bits
@	mov	r0, #255 lsl #4  you can't write this
	mov     r0, #0xFF00
	add	r0, #0x3F00 @ no problem...

	sub	r0, r1, r2
	sub	r0, r1, #25
	rsb	r0, r1, #25 @ r0 = 25 - r1

	//there is not div instruction. Death to any who forget this!
	lsr	r0, #3
	lsl	r1, #5
	add	r0, r1, r2 lsl #20

	add	r0, r0, r0 lsl #2 @ r0= 5*r0
	and
	orr
	eor
	ror	r0, #3		@there is no rotate left
	@rol = ror r0, 32-n

	cmp	r0, #3
	bne	1f
	mov	r0, #0
	b	2f
1:
	mov	r0, #3
2:	
	// r0 toggles between 0, 3

	cmp	r0, #3
	moveq	r0, #0
	movne	r0, #3










x:
	.word 0x1234ABCD 
