	.global _Z6f9_sumPKii
	// x0 = pointer to memory, w1 = length of array
	//counting down
_Z6f9_sumPKii:
	.cfi_startproc
	mov	x2, x0	// make x2 the pointer to the array
	mov	w0, 0	// use w0 to sum the value
	cmp	w1, 0
	beq	2f
1:
	ldr	w3, [x2]	// w3 = memory[x2]
	add     x2, x2, 4	// advance by 4 bytes
	add	w0, w0, w3
	subs	w1, w1, 1
	bne	1b
2:	
	ret
	.cfi_endproc

	.global _Z7f9_sum2PKii
	// x0 = pointer to memory, w1 = length of array
	//counting up
_Z7f9_sum2PKii:
	.cfi_startproc
	mov	x2, x0	// make x2 the pointer to the array
	mov	w0, 0	// use x0 to sum the value
	cmp	w1, 0
	beq	2f
	mov     w3, 0   // start counting with 0
1:
	ldr	w3, [x2]	// w3 = memory[x2]
	add     x2, x2, 4	// advance by 4 bytes
	add	w0, w0, w3
	add     w3, w3, 1
	cmp	w3, w1
	bne	1b
2:	
	ret
	.cfi_endproc
