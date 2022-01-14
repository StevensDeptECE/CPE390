	.global 	_Z1fv
_Z1fv:
	.fnstart
	mov	r0, #5
	cmp	r0, #0
	
	subs	r2, r0, #5
	mov	r1, #38
	mov	r2, #45
	and	r3, r1,r2
	bx	lr
