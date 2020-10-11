	.global power2
	@r0 = the number
power2:
	orr	r0, r0, lsr #16
	orr	r0, r0, lsr #8
	orr	r0, r0, lsr #4
	orr	r0, r0, lsr #2
	orr 	r0, r0, lsr #1
	add	r0, #1
	bx	lr

power2_v2:
	@ r0 = 107   1101011  = 64 + 32 + 8 + 2 + 1
	clz	r1, r0
	mov	r2, #32
	sub	r1, r2, r1
	mov	r2, #1
	lsl	r0, r2, r1
	bx	lr

swap:
	mov	r2, r1
	mov	r1, r0
	mov	r0, r2
	bx	lr

swap2:
	add	r0, r1	@r0 = r0 + r1
	sub	r1, r0, r1 @r1 = old r0
	sub	r0, r0, r1 @r0 = r0 - r1
	bx	lr
	@xor is its own inverse
swap3:
	eor	r0, r1
	eor	r1, r0
	eor	r0, r1
	bx	lr
	
	.global main
main:
	mov	r0, #19   @ 10011  --> 32 = 100000
	bl	power2

	ldr	r0, =0xC1F8293  @ = 1100   --> 0x10000000
	bl	power2
	mov	r0, #107
	bl	power2_v2

	mov	r0, #5
	mov	r1, #7
	bl	swap
	
	mov	r0, #0
	bx	lr

	@
	@    abcdefgh
	@    0a0c0e0g
	@    b0d0f0h0
	@    badcfehg
	
