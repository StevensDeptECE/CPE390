	.global _Z1fiii
	
_Z1fiii:
	.fnstart
	mul	r0, r0, r1    @ r0 = r0 * r1
	add	r0, r0, r2    @ r0 = r0 + r2
	bx	lr
