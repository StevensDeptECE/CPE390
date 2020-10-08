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
	.file	"Vec3d.cc"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1485:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	vpush.64	{d8}
	.vsave {d8}
	vldr.64	d8, .L8
	.pad #8
	sub	sp, sp, #8
	bl	clock
	vldr.64	d7, .L8+8
	ldr	r3, .L8+16
	mov	r4, r0
.L2:
	subs	r3, r3, #1
	vadd.f64	d8, d8, d7
	bne	.L2
	bl	clock
	mov	r2, #9
	ldr	r1, .L8+20
	mov	r5, r0
	ldr	r0, .L8+24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r5, r4
	ldr	r0, .L8+24
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-3]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	clock
	vldr.64	d7, .L8+8
	ldr	r4, .L8+16
	mov	r5, r0
.L3:
	subs	r4, r4, #1
	vadd.f64	d8, d8, d7
	bne	.L3
	bl	clock
	mov	r2, #9
	ldr	r1, .L8+20
	mov	r6, r0
	ldr	r0, .L8+24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r6, r5
	ldr	r0, .L8+24
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r5, #10
	strb	r5, [r1, #-2]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, .L8
	ldr	r0, .L8+24
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	ldr	r1, .L8+28
	mov	r6, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, .L8
	mov	r0, r6
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	ldr	r1, .L8+28
	mov	r6, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	mov	r0, r6
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-1]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	1000000000
	.word	.LC0
	.word	_ZSt4cout
	.word	.LC1
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB1928:
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Elapsed: \000"
	.space	2
.LC1:
	.ascii	",\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
