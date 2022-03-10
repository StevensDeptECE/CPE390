	// you should know how toc ompile a C++ program, look at the call
	// and figure out what the function is called
	// g++ -O2 -S main.cc

	// AARCH64
	// how many integer registers are there? x0 .. x30
	// w0 to w30 are the low half of each x register
	// x31 is zero

	//x30 = SP
	//x29 = LR
	//x28 = frame pointer

	// for practical purposes x0..x27

	//floating point
	//32 128-bit vector registers
	//q0..q31
	//d0 is the low half of q0
	//s0 is the low half of d0
	
	.global f
f:
	mov	w0, w5 // w0 = w5  high part of w0 = 0
	// x0 = 0x00000000[whatever is in w0]

	// 1111111111111111111111111111111111111111 -1
	// 0000000000000000000011111111111111111111

	mov	x2, #254 // immediate mode

	ldr	x3, [x4] // x3 = load from memory at location x4
	ldr	x3, [x4], #8 // x3 = load from memory[x4], then x4=x4+8

	ldr	x5, =0x0123456789ABCDEF
	//we don't write this	ldr	x5, [pc, ####]  // pc relative
	ldr	x5, [x4, #8]  load x5 = memory[x4+8] x4 is unchanged

	ldr	x5, =0x0123456789ABCDEF
	mov	x5, 255


	
	ret
data:
	.dword 0x0123456789ABCDEF

	// integer x,y,z given a location in memory x0
loadxyz:	
	ldr	x3, [x0]
	ldr	x4, [x0, #8]
	ldr	x5, [x0, #16]

	// double x,y,z given a location in memory x0
loadxyzdouble:			
	ldr	d0, [x0]
	ldr	d1, [x0, #8]
	ldr	d2, [x0, #16]

	
