	.global _Z5sumsqPdi
	@r0 = array location
	@r1 = length
	@d0
_Z5sumsqPdi:
	// for floating point, scratch registers d0..d7
//	vmov.f64 d0, #0 this isn't legal for float!
	vldr.f64  d0, .ZERO  // [pc, #xxx]
//	vmov.f64 d0, #1
1:
	vldr.64  d1, [r0]
//	vmul.f64 d1, d1, d1
	//	vadd.f64 d0, d1
	vmla.f64 d0, d1,d1
	add      r0, #8
	subs     r1, #1
	bne      1b
	bx	lr


.ZERO:
	.word 0x00000000
	.word 0x00000000

ONE:
	.word	0
	.word	0x3ff00000   // 1072693248

	// single precision float 1.0f is different, so you cannot copy it here
//	.word 0x00000000
//	.word 0x3F800000

	.global _Z4meanPdi
_Z4meanPdi:
	@r0 = array
	@r1 = length
	vldr.f64  d0, .ZERO  // [pc, #xxx]
	vcvt.f32.i32 s4, r1
	vcvt.f64.f32  	d2, s4
1:
	vldr.f64  d1, [r0]
	add       r0, #8
	vadd.f64  d0, d1
	subs      r1, #1
	bne       1b
	vdiv.f64  d0, d0, d2
	bx	lr

	.global _Z7sumcubePdi
	@r0 = address of array
	@r1 = length
_Z7sumcubePdi:

	vldr.f64 d0, ZERO // [pc, #124]

1:
	vldr.f64 d1,[r0]
	add	r0, #8
	vmul.f64 d2, d1, d1
//	vmul.f64 d1, d2 @d1 = d1 cubed
//	vadd.f64 d0, d1
	vmla.f64 d0, d1, d2
	subs	r1, #1
	bne     1b
	bx	lr


ZERO:
	.word	0x00000000
	.word	0x00000000
//ONE:
//	.word	0x00000000  //1.0
//	.word	0x3ff00000
	//0 011 1111 1111
        //0 100 0000 0000 = 0x400//2.0

	//  100.00000000000000000000
	// 101.






	
