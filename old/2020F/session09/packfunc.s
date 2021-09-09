	.global _Z8packBitsi
_Z8packBitsi:
	mov	r2, #0
	mov	r1, #0 @ count up to r0
1:	
	lsl	r2, #3 @ shift the answer left
	orr	r2, r1 @ or in the new 3-bit number
	add	r1, #1 @count up
	cmp	r1, r0 @ compare the ending number with the count
	ble	1b
	mov	r0, r2
	bx	lr

_Z9packBits2i:
	mov	r2, r0
	mov	r0, #0
	mov	r1, r2
1:	
	ror	r0, #3 @ shift the answer left
	orr	r0, r2 @ or in the new 3-bit number
	sub	r2, #1 @count down
	bge	1b
	ldr	r3, #32
	sub	r1, r3, r1
	lsr	r0, r1
	bx	lr


	@     00000000000000000000000000000111
	@     11100000000000000000000000000110
	@     11011100000000000000000000000101
	@     10111011100000000000000000000100
	@     10010111011100000000000000000011
	@     00000101001110010111011100000000
