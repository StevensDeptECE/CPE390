	.global _Z10choose_armii
	// w0= n
	// w1 = r
_Z10choose_armii:
	stp   lr,x0, [sp, #-16]!
	stp   x8,x9, [sp, #-16]!
	stp  d8,d9, [sp, #-16]!
        mov  x8, x0 // save x0 in x8=n
	mov  x9, x1 // save x1 in x9=r
	
	bl  fact
	// d0 = n!
	fmov d8, d0 // d8 = d0 = n!

	mov x0, x9 // x0 = r
	bl  fact
	fmov d9, d0 // d9 = r!

	// calculate (n-r)!
	sub x0, x8,x9
	bl  fact
	// d0 = (n-r)!
	// calculate n!/(r! * (n-r)!)
	fmul d9, d9, d0 // d9 = (r!*(n-r)!)
	fdiv d0, d8, d9
	ldp  d8,d9, [sp], #16
	ldp  x8,x9, [sp], #16
	ldp   lr,x0, [sp], #16
	ret

	//x0=n
fact:
	scvtf	d1, w0 // d1=n
	fmov    d0, #1
	fmov    d2, d0 // d2=1
	fsub    d3,d2,d2 // d3 = 0
1:
	
	fmul  d0, d0, d1 // d0=d0*n
	fsub  d1, d1, d2 // n=n-1
	fcmpe d1, d3
	bne   1b
	ret

	// 52*51*50*49*48*47 / 6*5*4*3*2*1
	// n! / (n-r)! =   (n (n-1) (n-2)... ) / ((n-r) * (n-r-1)*
	//choose(52,6) = choose(52,46)
	//w0 = n
	//w1 = r
	.global _Z11choose_fastii
_Z11choose_fastii:

	//if (n-r < r) r= n-r
	sub x2, x0, x1 // x2=(n-r)
	cmp x2, x1 // if n-r > r
	bgt 1f
	mov x1, x2 // r = n-r
1:	
	fmov d0, #1
	fmov d1, #1
	fmov d2, #1 // count down by 1 every time
	scvtf	d3, w0 // d3=n
	scvtf	d4, w1 // d4=r
	fsub d5, d1,d1 // d5=0
2:
	// r = min(r,n-r)
	// 52*51*... / (6*5*4 ...)
	fmul d0, d0, d3  // 1*52 * 51 * 50 ...
	fsub d3, d3, d2 // d3-- count down
	fmul d1, d1, d4
	fsub d4, d4, d2 // d4-- count down
	fcmpe d4, d5
	bne   2b
	fdiv d0, d0,d1 // compute the answer, store in D0
	ret
