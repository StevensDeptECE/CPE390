	.global main
main:
	ldr	r0, =0xCB123459
	bic	r0, #0xf0000
	orr	r0, #0x80000
	bx	lr	
