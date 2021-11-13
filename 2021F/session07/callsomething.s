add:
	add	r0, r0, r1
	bx	lr
	
main:
	mov	r0, #3
	mov	r1, #4
	bl	add
