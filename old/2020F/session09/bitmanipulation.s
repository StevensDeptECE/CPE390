	.global main

	ldr	r0, =0x01234567
	@              0000 0001 0010 00xx 0100 0101 0110 0yyy
	@ wipe out the bits marked x (make the 2 bits marked x ZERO)
	ldr	r1, =0xFFFCFFFF
	and     r0, r1  @  1111 1111 1111 1100 1111 1111 1111 1111

        @ example: wipe out bits marked y
	@this is what I want to do, but can't:	and	r0, #0xFFFFFFF8
	@ arithmetic instructions immediate mode 0 .. 7
	@instead, use BIt Clear (BIC)  = AND with NOT ...
	bic     r0, #7

	ldr	r2, =0xABCD5467
	@              1010 1011 1100 1101 0101 0100 011w w111
	@                                            0001 1000
	@ set bits 3 to 4 (marked w) to 1
	mov	r3, #0x18
	orr	r2, r3     @0xABCD547F

 
	ldr	r2, =0xABCD1234
	ldr	r3, =0x00001000
	eor	r2, r3 @0xABCD0234  @flip the selected bits 
	eor	r2, r3 @0xABCD1234  @flip them again (back to original)

	ldr	r2, =0x1234567A   0001 0010 wwww
	mov	r3, #0x0F  @ 1111
	@            0x00F00000             1111
	lsl	r3, #20
	bic	r2, r3

	@ bic (a,B) = and (A, not b)
	@  A   B   NOR bic
	@  0   0    1   0
	@  0   1    0   0
	@  1   0    0   1
	@  1   1    0   0

	ldr	r2, =0x1234567A   0001 0010 wwww
	mov	r3, #0x0F  @ 1111
	@            0x00F00000             1111
	bic	r2, r2, r3 	lsl #20

        @???	bic	r2, r2, #7 	lsl #20

	bx	lr
