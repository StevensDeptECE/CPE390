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
	.file	"05fpoptimization.cc"
	.text
	.section	.text._ZNK5Vec3d3magEv,"axG",%progbits,_ZNK5Vec3d3magEv,comdat
	.align	2
	.weak	_ZNK5Vec3d3magEv
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNK5Vec3d3magEv, %function
_ZNK5Vec3d3magEv:
	.fnstart
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vldr.64	d0, [r0, #8] @d0 = y
	vldr.64	d6, [r0]     @d6 = x
	vldr.64	d7, [r0, #16] @ d7 = z
	vmul.f64	d0, d0, d0  @ d0 = y*y
	vmla.f64	d0, d6, d6 @d0 = d0 + d6*d6
	vmla.f64	d0, d7, d7 @d0 = x*x+y*y+z*z
	vsqrt.f64	d0, d0
	.cantunwind
	.fnend
	.size	_ZNK5Vec3d3magEv, .-_ZNK5Vec3d3magEv
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r6, r7, r8, r9, lr}
	.save {r4, r6, r7, r8, r9, lr}
	vpush.64	{d8}
	.vsave {d8}
	ldr	r4, .L8+24
	ldr	r9, .L8+28
	mov	r0, r4
	.pad #32
	sub	sp, sp, #32
	mov	r1, sp
	bl	_ZNSi10_M_extractIdEERSiRT_
	ldr	r6, .L8+32
	ldr	r2, .L8+36
	ldr	r3, .L8+40
	ldr	r7, .L8+44
	mov	r8, #0
	add	r1, sp, #8
	mov	r0, r4
	strd	r2, [sp, #24]
	strd	r8, [sp, #8]
	strd	r6, [sp, #16]
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r1, sp, #16
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r1, sp, #24
	bl	_ZNSi10_M_extractIdEERSiRT_
	vldr.64	d2, .L8
	vldr.64	d3, .L8+8
	vldr.64	d4, .L8+16
	vldr.64	d5, [sp, #16]
	vldr.64	d6, [sp, #24]
	vldr.64	d7, [sp, #8]
	add	r0, sp, #8
	vadd.f64	d5, d5, d2
	vadd.f64	d6, d6, d3
	vadd.f64	d7, d7, d4
	vstr.64	d5, [sp, #16]
	vstr.64	d6, [sp, #24]
	vstr.64	d7, [sp, #8]
	bl	_ZNK5Vec3d3magEv
	add	r0, sp, #8
	vmov.f64	d8, d0
	bl	_ZNK5Vec3d3magEv
	ldr	r0, .L8+48
	vmul.f64	d0, d8, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r0, #0
	add	sp, sp, #32
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r6, r7, r8, r9, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	1074266112
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	_ZSt3cin
	.word	1074003968
	.word	1717986918
	.word	-858993459
	.word	-1073165108
	.word	1076127334
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2245:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L12
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L12+4
	ldr	r1, .L12+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
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
