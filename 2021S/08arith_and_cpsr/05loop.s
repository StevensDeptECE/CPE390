	.global main
main:
	mov	r0, #0
1:	
	add	r0, r0, #1 @immediate mode
	cmp	r0, #5
	bne	1b
	bx	lr
