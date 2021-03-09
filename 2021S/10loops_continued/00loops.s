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
	.file	"00loops.cc"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	mov	r4, #1
	ldr	r5, .L8
	.pad #12
	sub	sp, sp, #12
.L2:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	bl	_ZNSolsEi
	cmp	r4, #11
	bne	.L2

	mov	r3, #10
	add	r1, sp, #7
	mov	r2, #1
	ldr	r0, .L8
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	
	mov	r4, #1
.L3:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	bl	_ZNSolsEi
	cmp	r4, #6
	bne	.L3


	mov	r4, #10
	mov	r2, #1
	add	r1, sp, #7
	ldr	r0, .L8
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i

	
	mov	r1, #11
	ldr	r0, .L8
	bl	_ZNSolsEi
	add	r1, sp, #7
	mov	r2, #1
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r1, sp, #7
	mov	r2, #1
	mov	r0, r5
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #5
	ldr	r1, .L8+4
	ldr	r0, .L8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r1, r4
	mov	r0, r5

	bl	_ZNSolsEi
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L9:
	.align	2
.L8:
	.word	_ZSt4cout
	.word	.LC0
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2019:
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
	.ascii	"do i=\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
