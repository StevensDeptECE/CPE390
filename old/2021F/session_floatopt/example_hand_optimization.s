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
	.file	"example_hand_optimization.cc"
	.text
	.align	2
	.global	_Z3addii
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3addii, %function
_Z3addii:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3addii, .-_Z3addii
	.align	2
	.global	hypot
	.syntax unified
	.arm
	.fpu vfp
	.type	hypot, %function
hypot:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vmul.f64	d1, d1, d1
	push	{r4, lr}
	vpush.64	{d8}
	vmla.f64	d1, d0, d0
	vcmp.f64	d1, #0
	vsqrt.f64	d8, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L6
.L3:
	vmov.f64	d0, d8
	vldm	sp!, {d8}
	pop	{r4, pc}
.L6:
	vmov.f64	d0, d1
	bl	sqrt
	b	.L3
	.cantunwind
	.fnend
	.size	hypot, .-hypot
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.save {lr}
	vpush.64	{d8}
	.vsave {d8}
	ldr	r0, .L11
	.pad #20
	sub	sp, sp, #20
	add	r1, sp, #8
	bl	_ZNSirsERi
	add	r1, sp, #12
	bl	_ZNSirsERi
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r0, .L11+4
	add	r1, r1, r3
	bl	_ZNSolsEi
	mov	r3, #10
	add	r1, sp, #7
	mov	r2, #1
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.32	s15, [sp, #12]	@ int
	vcvt.f64.s32	d0, s15
	vldr.32	s15, [sp, #8]	@ int
	vcvt.f64.s32	d7, s15
	vmul.f64	d0, d0, d0
	vmla.f64	d0, d7, d7
	vcmp.f64	d0, #0
	vsqrt.f64	d8, d0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L10
.L8:
	vmov.f64	d0, d8
	ldr	r0, .L11+4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	add	r1, sp, #7
	mov	r2, #1
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8}
	ldr	pc, [sp], #4
.L10:
	bl	sqrt
	b	.L8
.L12:
	.align	2
.L11:
	.word	_ZSt3cin
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z3addii, %function
_GLOBAL__sub_I__Z3addii:
	.fnstart
.LFB2243:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L15
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L15+4
	ldr	r1, .L15+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z3addii, .-_GLOBAL__sub_I__Z3addii
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z3addii
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
