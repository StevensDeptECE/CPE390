	.global main
main:
	bl	float
	mov	r0, #0
	mov	r0, #0xFF
	mov	r7, #0
	mvn	r0, #0
	mvn	r0, #0xFF
	and	r0, r1, r2
	ands	r0, r1, r2
	and	r0, r1, #0
	and	r0, r1, #7
	and	r3, r4, r5
	and	r6, r7, r8
	and	r9, r10, r11
	eor	r0, r1, r2
	eors	r0, r1, r2
	eor	r0, #0x1d
	sub	r0, r1, r2
	sub	r0, r1, #200
	sub	r0, r1, #1000
	and	r0, r1, #2000
	and	r0, r1, #4000
	and	r0, r1, #8000
	rsb	r0, r1, #16000
	rsb	r0, r1, #32000
	rsb	r0, r1, #64000
	orr	r0, r1, #16000
	orr	r0, r1, #4096
	orr	r0, r1, #8192
	orr	r0, r1, #16384
	orr	r0, r1, #32768
	orr	r0, r1, #65536	
#	orr	r0, r1, #17000
#	orr	r0, r1, #18000	
#	orr	r0, r1, #31000
#	orr	r0, r1, #16001
@	orr	r0, r1, #123456
@	orr	r0, r1, #1234567
	rsb	r0, r1, r2
	add	r0, r1, r2
	adc	r0, r1, r2
	sbc	r0, r1, r2
	rsc	r0, r1, r2
	lsl	r0, #5
	lsr	r0, #10
	lsl	r0, r1
	lsr	r0, r1
	ror	r0, #10
	ror	r0, r1
	tst	r0, r1
	tst	r0, #3
	teq	r0, r1
	teq	r0, #4
	cmp	r0, r1
	cmp	r0, #5
	cmn	r0, r1
	cmn	r0, #7
	orr	r0, r1, r2
	mov	r0, r1
	bic	r0, r1, r2
	mvn	r0, r1
	ldr	r0, [r1]
	ldrb	r0, [r1]
	str	r0, [r1]
	strb	r0, [r1]
	ldr	r0, [r1, #4]
	ldr	r0, [r1], #4
	ldr	r0, [r1, #4]!
	ldr	r0, [r1,r2]
#	ldr	r0, [r1,r2]  lsl #4
#	ldr	r0, [r1,r2]  lsl r3

	b	1f
	beq	1f
	bne	1f
	bhs	1f
	blo	1f
	bmi	1f
	bpl	1f
	bvs	1f
	bvc	1f
	bhi	1f
	bls	1f
	bge	1f
	blt	1f
	bgt	1f
	ble	1f
	push	{r4, lr}
	bl	myfunc
	pop	{r4, lr}
1:	
	vldr.f64	d0, [r0]
	vldr.f64	d0, [r0, #8]
	vldr.f64	d0, [r0, r1]
	vldr.f64	d0, [r0]
	vstr.f64	d0, [r0]
	vadd.f64	d0, d1, d2
	vsub.f64	d0, d1, d2
	vmul.f64	d0, d1, d2
	vdiv.f64	d0, d1, d2	
	vabs.f64	d0, d1
	vsqrt.f64	d0, d1
	vneg.f64	d0, d1
	vmla.f64	d0, d1, d2

	vldr.f32	s0, [r0]
	vldr.f32	s0, [r0, #8]
	vldr.f32	s0, [r0, r1]
	vldr.f32	s0, [r0]
	vstr.f32	s0, [r0]
	vadd.f32	s0, s1, s2
	vsub.f32	s0, s1, s2
	vmul.f32	s0, s1, s2
	vdiv.f32	s0, s1, s2	
	vabs.f32	s0, s1
	vsqrt.f32	s0, s1
	vneg.f32	s0, s1
	vmla.f32	s0, s1, s2

	bx	lr
	
myfunc:
	mov	r0, #33
	bx	lr

float:
	mov		r1, #17
	vmov		s13, r1	@  move into the floating point register
	vcvt.f32.s32	s13, s13 @ convert to single precision 17.0
	vsqrt.f32	s13,s13	  @compute the square root of 17.0 single precision
	vcvt.s32.f32	s13, s13 @ convert back to int?
	vmov.f32	r1, s13
	bx		lr
