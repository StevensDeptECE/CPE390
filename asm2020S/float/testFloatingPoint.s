	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"testFloatingPoint.cc"
	.text
	.align	2
	.global	_Z2f1dd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f1dd, %function
_Z2f1dd:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vmul.f64	d1, d1, d1
	push	{r4, lr}
	vpush.64	{d8}
	vmla.f64	d1, d0, d0
	vcmp.f64	d1, #0
	vsqrt.f64	d8, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L5
.L1:
	vmov.f64	d0, d8
	vldm	sp!, {d8}
	pop	{r4, pc}
.L5:
	vmov.f64	d0, d1
	bl	sqrt
	b	.L1
	.cantunwind
	.fnend
	.size	_Z2f1dd, .-_Z2f1dd
	.align	2
	.global	_Z2f2dd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f2dd, %function
_Z2f2dd:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	vpush.64	{d8, d9, d10}
	vmov.f64	d8, d0
	vmov.f64	d10, d1
	sub	sp, sp, #20
	mov	r1, sp
	add	r0, sp, #8
	bl	sincos
	vmov.f64	d0, d8
	bl	tan
	vldr.64	d6, [sp]
	vldr.64	d7, [sp, #8]
	vadd.f64	d7, d7, d6
	vadd.f64	d0, d7, d0
	bl	atan
	vmov.f64	d1, d8
	vmov.f64	d9, d0
	vmov.f64	d0, d10
	bl	atan2
	vldr.64	d6, .L8
	vldr.64	d5, .L8+8
	vdiv.f64	d7, d9, d6
	vadd.f64	d0, d7, d0
	vadd.f64	d0, d0, d0
	vdiv.f64	d7, d0, d6
	vmul.f64	d0, d7, d5
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8-d10}
	ldr	pc, [sp], #4
.L9:
	.align	3
.L8:
	.word	0
	.word	1074266112
	.word	1431655765
	.word	1071994197
	.cantunwind
	.fnend
	.size	_Z2f2dd, .-_Z2f2dd
	.align	2
	.global	_Z2f3ff
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f3ff, %function
_Z2f3ff:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vmul.f32	s1, s1, s1
	push	{r4, lr}
	vpush.64	{d8}
	vmla.f32	s1, s0, s0
	vcmp.f32	s1, #0
	vsqrt.f32	s16, s1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L13
.L10:
	vmov.f32	s0, s16
	vldm	sp!, {d8}
	pop	{r4, pc}
.L13:
	vmov.f32	s0, s1
	bl	sqrtf
	b	.L10
	.cantunwind
	.fnend
	.size	_Z2f3ff, .-_Z2f3ff
	.align	2
	.global	_Z2f4ff
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f4ff, %function
_Z2f4ff:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	vpush.64	{d8, d9}
	vmov.f32	s17, s0
	vmov.f32	s18, s1
	sub	sp, sp, #12
	mov	r1, sp
	add	r0, sp, #4
	bl	sincosf
	vmov.f32	s0, s17
	bl	tanf
	vldr.32	s14, [sp, #4]
	vldr.32	s15, [sp]
	vadd.f32	s15, s15, s14
	vadd.f32	s0, s15, s0
	bl	atanf
	vmov.f32	s1, s17
	vmov.f32	s16, s0
	vmov.f32	s0, s18
	bl	atan2f
	vldr.64	d4, .L16
	vcvt.f64.f32	d8, s16
	vldr.32	s10, .L16+8
	vldr.32	s11, .L16+12
	vdiv.f64	d7, d8, d4
	vcvt.f64.f32	d0, s0
	vadd.f64	d7, d7, d0
	vcvt.f32.f64	s14, d7
	vadd.f32	s14, s14, s14
	vdiv.f32	s0, s14, s10
	vmul.f32	s0, s0, s11
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d9}
	ldr	pc, [sp], #4
.L17:
	.align	3
.L16:
	.word	0
	.word	1074266112
	.word	1077936128
	.word	1059760811
	.cantunwind
	.fnend
	.size	_Z2f4ff, .-_Z2f4ff
	.section	.text.startup,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z2f1dd, %function
_GLOBAL__sub_I__Z2f1dd:
	.fnstart
.LFB2138:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L20
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L20+4
	ldr	r1, .L20+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z2f1dd, .-_GLOBAL__sub_I__Z2f1dd
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z2f1dd
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
