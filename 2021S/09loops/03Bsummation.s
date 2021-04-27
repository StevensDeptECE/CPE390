	.global	_Z3sumi
_Z3sumi:	
	mov	r0, #0
	mov	r1, #1
1:	
	add	r0, r1 @r1 = r1 + r0  r1 += r0
	add	r1, r1, #1	
	cmp	r1, #100
	ble	1b @ jump BACKWARD to 1 (bls is the same for unsigned)
	bx	lr

	
	/*
	this comment describes what would happen with multiple 1: local symbols.
	
	.global	_Z4sum3i
_Z4sum3i:	
	
	mov	r0, #0
	mov	r1, #1
1:	
	add	r0, r1 @r1 = r1 + r0  r1 += r0
	add	r1, r1, #1	
	cmp	r1, #100
	blt	1b
	bx	lr

	.global	_Z4sum2i
_Z4sum2i:	
	
	mov	r0, #0
	mov	r1, #1
1:	
	add	r0, r1 @r1 = r1 + r0  r1 += r0
	add	r1, r1, #1	
	cmp	r1, #100
	blt	1b
	bx	lr
*/
