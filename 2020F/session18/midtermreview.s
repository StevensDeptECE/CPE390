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
	.file	"midtermreview.cc"
	.text
	.align	2
	.global	_Z3sumii
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3sumii, %function
_Z3sumii:
	.fnstart
.LFB2343:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	mov	r3, r0
	bgt	.L4
	add	r1, r1, #1
	mov	r0, #0
.L3:
	add	r0, r0, r3
	add	r3, r3, #1
	cmp	r3, r1
	bne	.L3
	bx	lr
.L4:
	mov	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3sumii, .-_Z3sumii
	.align	2
	.global	_Z9windchillv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9windchillv, %function
_Z9windchillv:
	.fnstart
.LFB2344:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13}
	.vsave {d8, d9, d10, d11, d12, d13}
	ldr	r5, .L14+40
	vldr.64	d12, .L14
	vldr.64	d11, .L14+8
	vldr.64	d10, .L14+16
	vldr.64	d9, .L14+24
	vldr.64	d13, .L14+32
	.pad #12
	sub	sp, sp, #12
	mov	r6, r5
	mov	r7, #5
.L10:
	vmov	s15, r7	@ int
	mov	r4, #40
	vcvt.f64.s32	d8, s15
.L9:
	vmov.f64	d1, d12
	vmov.f64	d0, d8
	bl	pow
	vmov	s15, r4	@ int
	vmov.f64	d6, d10
	ldr	r3, [r5]
	mov	r2, #5
	vcvt.f64.s32	d7, s15
	ldr	r3, [r3, #-12]
	sub	r4, r4, #5
	add	r3, r5, r3
	str	r2, [r3, #8]
	vmla.f64	d6, d7, d11
	vmul.f64	d7, d7, d13
	vmls.f64	d6, d0, d9
	vmla.f64	d6, d7, d0
	vmov.f64	d0, d6
	bl	round
	mov	r0, r6
	bl	_ZNSo9_M_insertIdEERSoT_
	cmn	r4, #50
	bne	.L9
	mov	r3, #10
	add	r7, r7, #5
	mov	r2, #1
	add	r1, sp, #7
	mov	r0, r6
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r7, #65
	bne	.L10
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, pc}
.L15:
	.align	3
.L14:
	.word	1202590843
	.word	1069841121
	.word	-137438953
	.word	1071899475
	.word	1374389535
	.word	1078058680
	.word	0
	.word	1078059008
	.word	-171798692
	.word	1071340584
	.word	_ZSt4cout
	.fnend
	.size	_Z9windchillv, .-_Z9windchillv
	.align	2
	.global	_Z19multiplicationTablei
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z19multiplicationTablei, %function
_Z19multiplicationTablei:
	.fnstart
.LFB2346:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cantunwind
	.fnend
	.size	_Z19multiplicationTablei, .-_Z19multiplicationTablei
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB2347:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	mov	r1, #49
	ldr	r0, .L19
	bl	_ZNSolsEi
	bl	_Z9windchillv
	mov	r0, #0
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z3sumii, %function
_GLOBAL__sub_I__Z3sumii:
	.fnstart
.LFB2845:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L23
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L23+4
	ldr	r1, .L23+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z3sumii, .-_GLOBAL__sub_I__Z3sumii
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z3sumii
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
