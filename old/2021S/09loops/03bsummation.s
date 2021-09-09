	.global	_Z3sumi
_Z3sumi:
	mov	r2, r0	@r2 =the number we are counting to
	mov	r1, #1
	mov	r0, #0
1:
	add	r0, r1 @r0 = r0 + r1  r0 += r1
	add	r1, r1, #1	
	cmp	r1, r2
	ble	1b  @ go back to the nearest 1
	bx	lr


