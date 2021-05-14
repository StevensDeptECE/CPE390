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
	.file	"06complex.cc"
	.text
	.section	.text._ZlsRSo7Complex,"axG",%progbits,_ZlsRSo7Complex,comdat
	.align	2
	.weak	_ZlsRSo7Complex
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZlsRSo7Complex, %function
_ZlsRSo7Complex:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16
	mov	r4, r0
	mov	r2, #1
	ldr	r1, .L4
	vstr.64	d1, [sp, #8]
	vstr.64	d0, [sp]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp]
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #2
	ldr	r1, .L4+4
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #8]
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	ldr	r1, .L4+8
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	_ZlsRSo7Complex, .-_ZlsRSo7Complex
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1538:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	vldr.64	d4, .L8
	vldr.64	d5, .L8+8
	vldr.64	d6, .L8+16
	vldr.64	d7, .L8+24
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	.pad #92
	sub	sp, sp, #92
	ldr	r5, .L8+32
	vmov.f64	d0, d4
	vmov.f64	d1, d5
	vmov.f64	d2, d6
	vmov.f64	d3, d7
	vstr.64	d4, [sp, #8]
	vstr.64	d5, [sp, #16]
	vstr.64	d6, [sp, #24]
	vstr.64	d7, [sp, #32]
	bl	_Zpl7ComplexS_
	mov	r0, r5
	bl	_ZlsRSo7Complex
	mov	r4, #10
	add	r1, sp, #72
	mov	r2, #1
	strb	r4, [sp, #72]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d2, [sp, #24]
	vldr.64	d3, [sp, #32]
	vldr.64	d0, [sp, #8]
	vldr.64	d1, [sp, #16]
	bl	_Zmi7ComplexS_
	mov	r0, r5
	bl	_ZlsRSo7Complex
	add	r1, sp, #72
	mov	r2, #1
	strb	r4, [sp, #72]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #8]
	vldr.64	d1, [sp, #16]
	vldr.64	d2, [sp, #24]
	vldr.64	d3, [sp, #32]
	bl	_Zml7ComplexS_
	
	mov	r0, r5
	vstr.64	d0, [sp, #72]
	vstr.64	d1, [sp, #80]
	bl	_ZlsRSo7Complex
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	1074003968
	.word	0
	.word	-1074790400
	.word	-1717986918
	.word	1072798105
	.word	-858993459
	.word	1073007820
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
.LFB2024:
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
	.section	.rodata._ZlsRSo7Complex.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"(\000"
	.space	2
.LC1:
	.ascii	", \000"
	.space	1
.LC2:
	.ascii	")\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
