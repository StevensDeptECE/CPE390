	.global	main
main:	
	mov	r0, #17   @ the register is r0 .. r15 (4 bits) the constant can be 0..255 (8 bits)
	add	r0, r0, #3
	mov	r1, #20
	add	r2, r0, r1	
	sub	r0, r1
	cmp	r0, r2
	bgt	.gt
	ldr	r3, =0xDEADBEEF
.gt:		

	bx	lr



@	add
@	sub
@	mul
	@no divide! they call a function (slow)

@	and
@	orr
@	eor
@	cmp
@	bcc
@	bl
@	bx
@	tst
	@	lsl
	@	lsr
	@	rol

	
@	ldr
@	str
@	ldrb
@	strb
		
