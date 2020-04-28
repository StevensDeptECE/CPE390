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
	.file	"floatingpoint.cc"
	.text
	.align	2
	.global	_Z3sumPKfj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3sumPKfj, %function
_Z3sumPKfj:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	vldr.32	s0, [r0]
	bxeq	lr
	vmov.f32	s15, s0
	add	r0, r0, #4
.L3:
	subs	r1, r1, #1
	vadd.f32	s0, s0, s15
	bxeq	lr
	vldmia.32	r0!, {s15}
	b	.L3
	.cantunwind
	.fnend
	.size	_Z3sumPKfj, .-_Z3sumPKfj
	.align	2
	.global	_Z3sumPKdj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3sumPKdj, %function
_Z3sumPKdj:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	vldr.64	d0, [r0]
	bxeq	lr
	vmov.f64	d7, d0
	add	r0, r0, #8
.L14:
	subs	r1, r1, #1
	vadd.f64	d0, d0, d7
	bxeq	lr
	vldmia.64	r0!, {d7}
	b	.L14
	.cantunwind
	.fnend
	.size	_Z3sumPKdj, .-_Z3sumPKdj
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1481:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	vldr.64	d0, .L24
	ldr	r4, .L24+16
	.pad #32
	sub	sp, sp, #32
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	ldr	lr, .L24+20
	mov	ip, sp
	vldr.64	d0, .L24+8
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	vldr.64	d7, [sp]
	vldr.64	d5, [sp, #8]
	ldm	lr, {r0, r1, r2, r3}
	vadd.f64	d7, d7, d0
	stm	ip, {r0, r1, r2, r3}
	vldr.64	d6, [sp, #16]
	vldr.64	d0, [sp, #24]
	mov	r0, r4
	vadd.f64	d7, d7, d5
	vadd.f64	d7, d7, d6
	vadd.f64	d0, d7, d0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r0, #0
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
.L25:
	.align	3
.L24:
	.word	-2147483648
	.word	1076550454
	.word	0
	.word	1073217536
	.word	_ZSt4cout
	.word	.LANCHOR0
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z3sumPKfj, %function
_GLOBAL__sub_I__Z3sumPKfj:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L28
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L28+4
	ldr	r1, .L28+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z3sumPKfj, .-_GLOBAL__sub_I__Z3sumPKfj
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z3sumPKfj
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC1:
	.word	0
	.word	1073217536
	.word	0
	.word	1074003968
	.word	0
	.word	1074266112
	.word	-199286483
	.word	1075033708
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
