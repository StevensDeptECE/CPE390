	mov	x0, x1	// x0 = x1
	add	x0, x1, x2	// x0 = x1+x2
	sub	x3, x5, x9	// x3 = x5 + x9
	mul	x2, x3, x4	// x2 = x3*x4
	udiv	x3, x4, x6	// x3 = x4/x6
	sdiv	x0, x0, x1
	add	x0, x1, 5	// x0 = x1 + 5
	add	x2, x7, 255	// x2 = x7 + 255

	fmadd	d0, d0, d1, d2	// fused multiply-add
	udiv	x0, x0, x1
	
	sdiv	x2, x0, x1		// %
	msub	x0, x2, x1, x0

	
	ldr	w3, [x0]	// 32-bit load at location x0 into w3
	ldr	x3, [x0]	// 64-bit load
	ldr	d0, [x0] 	// load 64-bit double precision
	ldr	s0, [x0]	// load 32-bit float?

	str	w3, [x0]	// memory[x0] <-- w3 (write)
	str	x3, [x0]	// 64-bit store
	str	d0, [x0] 	// store 64-bit double precision
	str	s0, [x0]	// store 32-bit float?


	ldr	w3, [x0]	// 32-bit load at location x0 into w3
	add	x0, x0, 4
	
	ldr	x3, [x0]	// 64-bit load
	add	x0, x0, 8
	
	ldr	d0, [x0] 	// load 64-bit double precision
	add	x0, x0, 8
	
	ldr	s0, [x0]	// load 32-bit float?
	add	x0, x0, 4

	// autoincrement mode
	ldr	w3, [x0], 4	// w3=load[x0], x0 = x0 + 4
	ldr	x3, [x0]	// x3 = load[x0], x0 = x0 + 8
	// these did not exist in Armv7, do they now?
//???	ldr	d0, [x0], 8 	// load 64-bit double precision
//??	ldr	s0, [x0], 4	// load 32-bit float?

	
	
	bl	f	// branch and link (call function) lr=pc+4, pc=f
//  pc --> here
	ret		// return pc = lr


	.global f
	//w0 is count
f:
	// count down from w0 to 1, stop at 0 (repeat w0 times)
loop:	
	
	sub w0, w0, 1 // count down
	cmp w0, 0
	bne loop
	ret

	.global f2
	//w0 is count
f2:
	// count down from w0 to 1, stop at 0 (repeat w0 times)
loop:	
	
	subs w0, w0, 1 // count down
	bne loop
	ret
	
