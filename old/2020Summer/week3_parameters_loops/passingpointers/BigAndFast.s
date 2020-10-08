main:
	movl	.LC1, %eax
	// how to convert from %eax to ymm0?
	
	, %ymm0
	@ load	ymm0, ymm1, ymm2, ymm3, ymm4
	@ load	ymm5, ymm6, ymm7, ymm8, ymm9
	mov	$100000000, %ecx
1:	
	add4doubles???
	sub	$1, %ecx
	jnz	1b





.LC1:	.long	 9
