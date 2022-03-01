	.global f
	// w0 = n
f:
	mov	w1, w0 // w1= n   for (int i = n; i  >0; i--)
	mov	w0, 0	//sum = 0
1:
	add	w0, w0, w1 // sum = sum + i
	sub	w1, w1, 1 // w1=w1-1
	cmp	w1, 0
	bne	1b
	ret
	.global f2
	// w0 = n
f2:
	mov	w1, w0 // w1= n  
	mov	w0, 0	//sum = 0
	mov	w2, 1   // for (int i = 1; i  <=n; i++)
loop2:
	add	w0, w0, w2 // sum = sum + i
	add	w2, w2, 1 // w2=w2+1 
	cmp	w2, w1
	ble	loop2
	ret
	.global main
main:	
	mov	w0, 5
	bl	f		// f(5);

	mov	w0, 5
	bl	f2
	ret
