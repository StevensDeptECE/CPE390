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
	.file	"benchmark.cc"
	.text
	.align	2
	.global	_Z9benchmarkPKcPFvjEj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9benchmarkPKcPFvjEj, %function
_Z9benchmarkPKcPFvjEj:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12
	mov	r7, r2
	mov	r6, r1
	mov	r4, r0
	bl	clock
	mov	r5, r0
	mov	r0, r7
	blx	r6
	bl	clock
	cmp	r4, #0
	mov	r6, r0
	beq	.L6
	mov	r0, r4
	bl	strlen
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L3:
	mov	r2, #1
	ldr	r1, .L7+4
	ldr	r0, .L7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r6, r5
	ldr	r0, .L7
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-1]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L6:
	ldr	r2, .L7
	ldr	r3, [r2]
	ldr	r3, [r3, #-12]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L3
.L8:
	.align	2
.L7:
	.word	_ZSt4cout
	.word	.LC0
	.fnend
	.size	_Z9benchmarkPKcPFvjEj, .-_Z9benchmarkPKcPFvjEj
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 4000000
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	.pad #3997696
	sub	sp, sp, #3997696
	ldr	r4, .L11
	.pad #2304
	sub	sp, sp, #2304
	mov	r2, r4
	ldr	r1, .L11+4
	ldr	r0, .L11+8
	bl	_Z9benchmarkPKcPFvjEj
	mov	r2, r4
	ldr	r1, .L11+12
	ldr	r0, .L11+16
	bl	_Z9benchmarkPKcPFvjEj
	mov	r0, sp
	ldr	r1, .L11+20
	bl	_Z5visitPKii
	mov	r0, #0
	add	sp, sp, #3997696
	add	sp, sp, #2304
	@ sp needed
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	1000000000
	.word	_Z7countupj
	.word	.LC1
	.word	_Z9countdownj
	.word	.LC2
	.word	1000000
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z9benchmarkPKcPFvjEj, %function
_GLOBAL__sub_I__Z9benchmarkPKcPFvjEj:
	.fnstart
.LFB1922:
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
	.size	_GLOBAL__sub_I__Z9benchmarkPKcPFvjEj, .-_GLOBAL__sub_I__Z9benchmarkPKcPFvjEj
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z9benchmarkPKcPFvjEj
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
	.ascii	"\011\000"
	.space	2
.LC1:
	.ascii	"count up\000"
	.space	3
.LC2:
	.ascii	"count down\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
