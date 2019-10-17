
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
	bge	loop4
out2:	

