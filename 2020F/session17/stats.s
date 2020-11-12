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
	.file	"stats.cc"
	.text
	.align	2
	.global	_Z5statsPKdiRdS1_S1_
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z5statsPKdiRdS1_S1_, %function
_Z5statsPKdiRdS1_S1_:
	.fnstart
.LFB1534:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@	str	lr, [sp, #-4]! @push{lr}
	vldr.64	d6, [r0]
@	ldr	lr, [sp, #4]
	vldr.64	d5, .L16
	vstr.64	d6, [lr]
	vstr.64	d6, [r3]
	add	ip, r0, r1, lsl #3
	b	.L7
.L15:
	vldr.64	d6, [r3]
.L7:
	vldmia.64	r0!, {d7}
	vcmpe.f64	d7, d6
	vadd.f64	d5, d5, d7
	vmrs	APSR_nzcv, FPSCR
	vstrgt.64	d7, [r3]
	bgt	.L5
	vldr.64	d6, [lr]
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	vstrmi.64	d7, [lr]
.L5:
	cmp	r0, ip
	bne	.L15
.L2:
	vmov	s15, r1	@ int
	vcvt.f64.s32	d7, s15
	vdiv.f64	d6, d5, d7
	vstr.64	d6, [r2]
	ldr	pc, [sp], #4
.L17:
	.align	3
.L16: 			@ZERO
	.word	0
	.word	0
	.cantunwind
	.fnend
	.size	_Z5statsPKdiRdS1_S1_, .-_Z5statsPKdiRdS1_S1_
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	.pad #72
	sub	sp, sp, #72
	ldr	lr, .L20
	add	ip, sp, #40
	add	r4, sp, #32
	ldmia	lr!, {r0, r1, r2, r3}
	str	r4, [sp]
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	add	r3, sp, #24
	add	r2, sp, #16
	mov	r1, #4
	add	r0, sp, #40
	bl	_Z5statsPKdiRdS1_S1_
	vldr.64	d0, [sp, #16]
	ldr	r0, .L20+4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #5
	ldr	r1, .L20+8
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #24]
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #5
	ldr	r1, .L20+12
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #32]
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	mov	r2, #1
	add	r1, sp, #15
	strb	r3, [sp, #15]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #72
	@ sp needed
	pop	{r4, pc}
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	_ZSt4cout
	.word	.LC1
	.word	.LC2
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_, %function
_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_:
	.fnstart
.LFB2021:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L24
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L24+4
	ldr	r1, .L24+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L25:
	.align	2
.L24:
	.word	.LANCHOR1
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_, .-_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	1074790400
	.word	0
	.word	1074266112
	.word	0
	.word	1073741824
	.word	0
	.word	1072693248
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	" max=\000"
	.space	2
.LC2:
	.ascii	" min=\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
