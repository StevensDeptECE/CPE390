	.global main
main:
	ldr	r0, =0xFF00AA55
	ldr	r1, =x
	ldr	r0, [r1]
	ldr	r0, [r1, #4]
	ldr	r0, [r1], #4
	ldr	r0, [r1, #4]!
	bx	lr

x:	.word	0xABCD1234
	
