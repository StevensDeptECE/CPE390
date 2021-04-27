
/*
	fact(5)

*/
	@ r0 = n
	@ return n factorial
fact:
	mov	r2, r0  @r2 = n
	mov	r0, #1
	mov	r1, #1
1:
	mul	r0, r1
	add	r1, #1
	cmp	r1, r2
	ble	1b
	@r0 holds the answer to return
	bx	lr

mean:


1:


	

	bx	lr

third:


1:	
