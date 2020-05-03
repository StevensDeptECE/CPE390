	@ the following program is complete nonsense.
	@ but it lists out every instruction and every mode you must know
	@ for the final
	
	.global f
f:
	mov	r0, #0
	mov	r1, #2
	mov	r2, #255
	mvn	r3, #3		@move and negate (not)
	ldr	r3, =0xF1234567	@load a constant (pc relative)
	push	{r4}		@push one register on the stack
	ldr	r4, X		@load from a specified location
	str	r2, X
	ldr	r1, [r0]	@load (4 bytes) at memory location [r0] into r1
	ldr	r1, [r0, #4]	@ load from r0+4
	ldr	r1, [r0], #8
	str	r1, [r0]
	str	r1, [r0, #4]
	str	r1, [r0], #8
	ldrb	r1, [r0]	@load a single byte into the load order byte
	strb	r1, [r0]	@corresponding store
	@TODO: add preincrement
	@TODO: ldm, stm (load and store multiple registers)
	
	pop	{r4}		@pop one register

	push	{r4,r5}		@push a pair of registers
	pop	{r4,r5}		@pop a pair of registers
	push	{r4-r12}	@push a range of registers
	pop	{r4-r12}	@pop a range of registers
	add	r0, r1, r2
	sub	r0, r1, r2
	add	r0, r1, #3	@add
	sub	r0, r1, #4	@subtract
	rsb	r0, r1, #4	@reverse subtract
	and	r0, r1, r2	@and
	orr	r0, r1, r2	@inclusive or
	eor	r0, r1, r2	@exclusive or
	bic	r0, r1, r2	@bit clear (and with NOT)
	adds	r0, r1, r2
	subs	r0, r1, r2
	adc	r0, r1, r2	@ add with carry *** NOT ON FINAL
	
	clz	r0,r1		@count leading zeros

	add	r5, r6, r7
	sub	r5, r6, r7
	add	r5, r6, #4	@add
	sub	r5, r6, #4	@subtract
	rsb	r5, r6, #4	@reverse subtract
	and	r5, r6, r7	@and
	orr	r5, r6, r7	@inclusive or
	eor	r5, r6, r7	@exclusive or
	bic	r5, r6, r7	@bit clear (and with NOT)
	adds	r5, r6, r7
	subs	r5, r6, r7
	adc	r5, r6, r7
	
	clz	r0,r1		@count leading zeros

	@
	@ multiply result can be much bigger than the inputs
	@ think: 9999 x 9999 = ???
	@
	@

	@rbit	r0,r1		@reverse bits *** NOT ON FINAL
	@ rbit only works in 64 bit mode ARMv8
	
	rsb	r0, r1, #4
	mul	r0, r1, r2
	mla	r0, r1, r2, r3	@why would there be 4 registers? bigger results
	mul	r4, r5, r6
	mla	r4, r5, r6, r7
	muls	r0, r1, r2
	mlas	r0, r1, r2, r3
	muls	r4, r5, r6
	mlas	r4, r5, r6, r7
	
	lsl	r0, r1, #3
	lsl	r4, r5, #31
	lsl	r1, r2, #4
	lsl	r4, r5, #31
	lsr	r0, r1, #3
	lsr	r4, r5, #31
	asr	r1, #4		@arithmetic shift right. Preserves the sign	
	asr	r1, #31		@they don't have asl  **NOT ON FINAL
	ror	r1, #5		@  10010111000000000000000000000001
	ror	r1, #31		
	add	r0, r1, r2, lsl #3  @r0 = r1 + (r2 shifted left by 3)
	sub	r0, r1, r2, lsl #3
1:	
	and	r0, r1, r2, lsl #5
	cmp	r0, #2		@ compute r0-2, test the result against zero
	cmp	r0, r1		@ computer r0-r1, test result against zero
	tst	r0, #1		@ AND r0, #1 and test the result against zero
	tst	r0, r1		@ AND r0, r1 and test the result against zero
	bne	1f
	beq	1b	@this would go back to the 1: above
	blt	1f	@this goes forward to the 1: below
	bgt	1f
	b	1f
	bl	f
	vldr.f64	d0, [r0]
	vmov.f64	d0,d1
	vabs.f64	d0,d1
	vsqrt.f64	d0,d1
	vadd.f64	d0,d1,d2
	vsub.f64	d0,d1,d2
	vmul.f64	d0,d1,d2
	vdiv.f64	d0,d1,d2
	vmla.f64	d0,d1,d2
	
1:	


X:
	.word	0xFFFAAFFF
