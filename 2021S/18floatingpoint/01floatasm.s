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
	.file	"01floatasm.cc"
	.text
	.align	2
	.global	_Z2f1d
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f1d, %function
_Z2f1d:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmul.f64	d0, d0, d0 @d0 = d0*d0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f1d, .-_Z2f1d
	.align	2
	.global	_Z2f2d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f2d, %function
_Z2f2d:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vadd.f64	d0, d0, d0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f2d, .-_Z2f2d
	.align	2
	.global	_Z2f3d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f3d, %function
_Z2f3d:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vsub.f64	d0, d0, d0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f3d, .-_Z2f3d
	.align	2
	.global	_Z2f4dd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f4dd, %function
_Z2f4dd:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vdiv.f64	d0, d0, d1 @d0=d0/d1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f4dd, .-_Z2f4dd
	.align	2
	.global	_Z2f5d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f5d, %function
_Z2f5d:
	.fnstart
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vneg.f64	d0, d0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f5d, .-_Z2f5d
	.align	2
	.global	_Z2f6d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f6d, %function
_Z2f6d:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vcmp.f64	d0, #0
	push	{r4, lr}
	vpush.64	{d8}
	vsqrt.f64	d8, d0                @ 10 11 10 01 = 1111   128+57=185
	@ 10 00 01 00 = 1010
	vmrs	APSR_nzcv, FPSCR
	bmi	.L10
.L7:
	vmov.f64	d0, d8
	vldm	sp!, {d8}
	pop	{r4, pc}
.L10:
	bl	sqrt
	b	.L7
	.cantunwind
	.fnend
	.size	_Z2f6d, .-_Z2f6d
	.align	2
	.global	_Z2f7d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f7d, %function
_Z2f7d:
	.fnstart
.LFB1763:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	sin
	.cantunwind
	.fnend
	.size	_Z2f7d, .-_Z2f7d
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1764:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.save {lr}
	.pad #28
	sub	sp, sp, #28
	add	r1, sp, #8
	ldr	r0, .L14
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r1, sp, #16
	bl	_ZNSi10_M_extractIdEERSiRT_
	vldr.64	d0, [sp, #8]
	ldr	r0, .L14+4
	vmul.f64	d0, d0, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	mov	r2, #1
	add	r1, sp, #7
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
.L15:
	.align	2
.L14:
	.word	_ZSt3cin
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z2f1d, %function
_GLOBAL__sub_I__Z2f1d:
	.fnstart
.LFB2248:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L18
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L18+4
	ldr	r1, .L18+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z2f1d, .-_GLOBAL__sub_I__Z2f1d
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z2f1d
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
