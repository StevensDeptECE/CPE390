	.global _start
_start:

main:	
	mov	r0, #20
	mov	r1, #52
	add	r0, r0, r1   @ r0 = r0 + r1
	bx	lr		@ on intel "ret"
	
