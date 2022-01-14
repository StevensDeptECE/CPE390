multtable:
	push {r4,r5}
	mov	r4, #1
.L1:

	@ r4 = 1,2,3	
	mov     r5, #1
.L2:	
        @r5 = 1,2,3
	mov	r0, @whatever cout is....
	mul   r1, r4, r5 	; r2=r0*r1, the multiplication table
	bl  printthisthing!!!
        @also print \t

	add	r5, #1
	cmp 	r5, #3
	ble     .L2

	add	r4, #1
	cmp	r4, #3
	ble     .L1
	pop	{r4,r5}
	bx	lr
