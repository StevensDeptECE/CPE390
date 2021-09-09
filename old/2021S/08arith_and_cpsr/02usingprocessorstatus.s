	.global main
main:	
	mov	r0, #20
	mov	r1, #52
	add	r0, r0, r1   @ r0 = r0 + r1
	ldr	r0, =0xFFFFFFFF @pseudo instruction, this will load the number from somewhere rel. to pc
	                                 111
	@ 11111111 11111111 11111111 11111111
	@ 00000000 00000000 00000000 00000001
	@ ===================================
	@100000000 00000000 00000000 00000000
	add	r0, #1
	subs	r0, #1
	bx	lr		@ on intel "ret"
	
