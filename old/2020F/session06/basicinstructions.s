	.global main
main:
	mov	r0, r1	@r0 = r1	register to register
	mov	r2, #62	@r2 = 62	immediate mode  (on the ARM 0..255)
	ldr	r3, =0xDEADBEEF         @ 2 clocks? (slower than register-register)
	mov	r0, #123
	mov	r1, #104
	add	r2, r0, r1	@r2 = r0 + r1 (signed or unsigned)

	@ 1010101010101001010101010101100101
	@ 1111010101010101010111010100101001
	@               1010110101010001110

	ldr	r0, =0xDEADBEEF
	ldr	r1, =0x10C1A220
	add	r2, r0, r1
	cmp 	r2, #3 @ sets 4 flags Z=0 N=1 V=0 C=0
	bgt	1f @ if greater than (signed) jump forward to the nearest 1
	@	blt
	@	bne
	@	beq
	bx	lr

1:

	cmp r2, r3
	beq	1b  @ jump backward to the nearest 1
        blt	1f  @ jump forward to the nearest 1
1:
	bx	lr

	
