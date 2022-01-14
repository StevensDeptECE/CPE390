	.global main
main:
	ldr		r0, .p1
	mov		r1, #8
	vldr.f32	s0, [r0]
	vldr.f32	s1, [r0, #4]
	vldr.f32	s0, [r0, r1]
	vadd.f32	s0, s0, s1	
	vstr.f32	s0, [r0]
	vsub.f32	s0, s1, s2
	vmul.f32	s0, s1, s2
	vdiv.f32	s0, s1, s2	
	vabs.f32	s0, s1
	vsqrt.f32	s0, s1
	vneg.f32	s0, s1
	vmla.f32	s0, s1, s2
	bx	lr
.p1:
	.word .fpdata


.fpdata:
	.word 0x00000000
	.word 0x3f800000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
