	.global main
main:
	vldr.f64   d0, ZERO
	vsqrt.f64  d1, d0
	vldr.f64   d0, TWO
        vsqrt.f64  d0, d0
	vldr.f64   d0, NEGTWO
        vsqrt.f64  d0, d0
	bx	lr




TWO:
	.word 0x00000000
	.word 0x40000000               // 4000000000000000 0100 0000 0000 0000 ....
//  s * m * 2**(e-1024)
ONE:
	.word 0x00000000
	.word 0x3ff00000               //                  0011 1111 1111 
ZERO:
	.word 0x00000000
	.word 0x00000000
NEGTWO:
	.word 0x00000000
	.word 0xC0000000               // 4000000000000000 1100 0000 0000 0000 ....
