	.global	_ZN8Fraction4zeroEv
_ZN8Fraction4zeroEv:
	mov	r1, #0
	str	r1, [r0]
	mov	r1, #1
	str	r1, [r0, #4]
	bx	lr
