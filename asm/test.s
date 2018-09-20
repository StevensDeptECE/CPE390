	ldr	r2, #1
.count	add	r2, r2, #1
	udiv	r0, r1, r2 	; r0 = r1 / r2
	cmp	r2, #100
	ble	.count


	intel
	add     %EDX, %ECX	; ECX = ECX + EDX
