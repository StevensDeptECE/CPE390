	.global _Z3addii
	.fnstart

_Z3addii:
	@R0 = first param
	@R1 = second param
	@return is in R0
	ADD	R0, R0,R1
	BX LR

	.global _Z9factoriali
_Z9factoriali:
	@r0 = n

	mov	r1, r0 @ r1 = n
.loop:	
	sub	r1, r1, #1
	mul	r0, r0, r1
	cmp	r1, #1
	bgt	.loop
	bx LR


		.global _Z4facti
_Z4facti:
	@r0 = n

	mov	r1, r0 @ r1 = n
	mov	r0, #1 @ n!
	mov	r2, #1 @ counting 1 to n
.loop2:
	mul	r0, r0, r2
	add	r2,r2,#1
	cmp	r2,r1
	ble	.loop2
	bx LR


	
	
