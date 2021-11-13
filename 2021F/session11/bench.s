	.global _Z5down1i
	.global _Z5down2i

	// r0 = number of times to count
_Z5down1i:
	
1:	
	sub	r0, #1
	cmp	r0, #0
	bne	1b
	bx	lr


_Z5down2i:

1:	
	subs	r0, #1
	bne	1b
	bx	lr
