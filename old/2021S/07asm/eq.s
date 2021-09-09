	.global main
	@
	@	this one segfaults. Not sure why
	@	We will compute in a function and return instead
	@
	

	
main:
	.fnstart
	mov	r0, #4  @immediate mode, load 4
	mov	r1, #5
	mov	r2, #6
	mul	r3, r0, r1
	add	r3, r3, r2    @ r3 = r3 + r2
	@	add	r3, r2    @ r3 += r2
	ldr	r0, .L1
	mov	r1, r3
	bl	_ZNSolsEi
	bx	lr


.L1:	.word	_ZSt4cout
	.fnend
