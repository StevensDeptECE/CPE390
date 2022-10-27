	.global _Z10choose_armii
	// x0 = n
	// x1 = r
_Z10choose_armii:
	// first save n and r to stack
	stp lr, x9, [sp, #-16]! // rememeber where to return
	stp x0, x1, [sp, #-16]!
	
	bl fact  // n!
	fmov   d6, d0 // d6 = n! // really should be d8

	mov    x0, x1
	bl fact
	fmov   d5, d0 // d5 = r! really, should be d9

	ldp x0, x1, [sp], #16 // get them back!
	sub x0, x0, x1 // x0=n-r
	bl fact
	// d0=(n-r)!
	fmul d0, d0, d5 // compute denominator (r! * (n-r)!)
	fdiv d0, d6, d0 // d0 = n!/(r!*(n-r)!)
 	ldp lr, x9, [sp], #16 // get back lr so we can return
	ret


	//x0=n
	//return D0 = n!
fact:
	fmov	d0, #1
	fmov    d2, d0
	fsub    d3, d2,d2 // d3 = 0!
	scvtf	d1, w0
1:	
	fmul    d0, d0, d1
	fsub    d1, d1, d2
	fcmpe	d1, d3
	bne     1b
	ret
	//    choose(n,r) =
	//  choose(52,6) = 52*51*50*49*48*47 / (6*5*4*3*2*1)
	//choose (52,46) = choose(52,6)


	.global _Z11choose_fastii
	// x0 = n
	// x1 = r
_Z11choose_fastii:
	sub  x2, x0, x1	// x2=n-r
	cmp x1, x2
	blt 1f
	mov x1, x2		// r=n-r
1:
	// x1 = min(x1,x2) r or n-r
	fmov d0, #1 // numerator
	fmov d1, #1 // denominator
	scvtf d2, w0 // d2 = n
	scvtf d3, w1 // d3 = r
	fmov  d4, #1 // embed the constant 1 which we need over and over
	fsub  d5, d4, d4	// d5 = 0 (is there a better way?)
2:
	fmul d0, d0, d2   // 52*51*50...
	fmul d1, d1, d3   // 6*5*4...

	fsub d2, d2, d4 // count down
	fsub d3, d3, d4
	gcmpe d3, d5
	bne   2b
	fdiv d0, d0, d1
	ret
	
