	//for (int i = 0; i < n; i++) {
	//
	//}
	.global _Z2f1i
_Z2f1i:
	cmp 	r0, #0
	blt	out
	mov	r1, #0
loop:	
	add	r1, #1
	cmp	r1, r0
	blt     loop
out:	bx lr

	// int i = 0;
	//do {   } while (i < n	) ;
	.global _Z2f2i
_Z2f2i:
	mov	r1, #0
loop2:	
	add	r1, #1
	cmp	r1, r0
	blt     loop2
	bx lr

	// int i = 0;
	//do {   } while (i < n	) ;
	// implemented using counting down for efficiency
	.global _Z2f3i
_Z2f3i:
loop2:
	subs	r0, #1 			@subtract and cmp to 0  Z = 1
	bne     loop2			
	bx lr

	@ Z true if result = 0
	@ 0x9 + 0xA = 0x13
	@C 1 if  the number exceeds the size
	@V 1 if OVERFLOW
	@N 1 if the result is NEGATIVE  0xFFFFFFFF
	cmp	r0,r1


	//   int i = 6; do { i++;   } while (i < 5);
	mov	r0, #0
loop:	
	add	r0, #1
	cmp	r0, #5        CPSR
	blt	loop


	// for (int i = 0; i < 5; i++) {}
	mov	r0, #0
	cmp	r0, #5
	bge	out
loop2:	
	add	r0, r0, #1
	cmp	r0, #5
	blt	loop2
out:	

	// V2: not as efficient, but shorter for (int i = 6; i < 5; i++) {}
	mov	r0, #0
loop3:	
	cmp	r0, #5
	bge	out
	add	r0, r0, #1
	b loop3
out2:	

	mov	r0, #6
	b testme
loop4:	
	add	r0, r0, #1
testme:	
	cmp	r0, #5
	blt	loop4


	mov	r0, #100
loop5:	
	subs	r0, #1
	bgt loop5
