	.global	main
main:
	.fnstart
	push	{r6, lr}

	mov	r6, #1

1:	
	ldr	r0, .L8
	mov	r1, r6
	bl	_ZNSolsEi    @ cout << i
	add	r6, #1
	cmp	r6, #10
	blt	1b
	
	pop	{r6, lr}
	bx	lr
.L8:
	.word	_ZSt4cout
