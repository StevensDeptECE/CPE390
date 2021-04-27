	.global	_Z3sumi
_Z3sumi:	
	mov	r0, #1
	mov	r1, #0
1:
	add	r1, r0 @r1 = r1 + r0  r1 += r0
	add	r0, r0, #1	
	cmp	r0, #100
	blt	1b  @ go back to the nearest 1
	mov	r0, r1	
	bx	lr


