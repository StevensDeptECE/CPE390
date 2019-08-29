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
	.file	"operators.cc"
	.text
	.align	2
	.global	_Z1aii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1aii, %function
_Z1aii:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1aii, .-_Z1aii
	.align	2
	.global	_Z1bii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1bii, %function
_Z1bii:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1bii, .-_Z1bii
	.align	2
	.global	_Z1cii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1cii, %function
_Z1cii:
	.fnstart
.LFB1481:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r1, r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1cii, .-_Z1cii
	.global	__aeabi_idiv
	.align	2
	.global	_Z1dii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1dii, %function
_Z1dii:
	.fnstart
.LFB1482:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_idiv
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z1dii, .-_Z1dii
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1483:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	mov	r1, #5
	ldr	r5, .L8
	.pad #12
	sub	sp, sp, #12
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r4, #10
	strb	r4, [r1, #-1]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r5
	mvn	r1, #0
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r2, #1
	strb	r4, [r1, #-2]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r5
	mov	r1, #6
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r2, #1
	strb	r4, [r1, #-3]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r5
	mov	r1, #0
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r2, #1
	strb	r4, [r1, #-4]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L9:
	.align	2
.L8:
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z1aii, %function
_GLOBAL__sub_I__Z1aii:
	.fnstart
.LFB1921:
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
	.size	_GLOBAL__sub_I__Z1aii, .-_GLOBAL__sub_I__Z1aii
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1aii
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
