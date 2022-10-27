	.global countmult3
	// w0 = n
	//countmult3(10) 3 + 6 + 9 = 18
	//countmult3(2)
	// 
countmult3:
	mov w1, w0 // w1=w0 = n
	mov w0, 0  // zero the answer
	mov w2, 3 // for (int i = 3; i <= n; i += 3)
	cmp w2, w1 // special case if n < 3
	bgt 1f      // get out
loop:
	add w0, w0, w2 // w0 = w0 + i (sum up each multiple of 3)
	add w2, w2, 3  // w2 = w2 + 3  (i+= 3)
	cmp w2, w1     // i <= n?
	ble loop
1:	
	ret
