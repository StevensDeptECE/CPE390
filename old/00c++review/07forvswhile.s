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
	.file	"07forvswhile.cc"
	.text
	.align	2
	.global	_Z1fj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fj, %function
_Z1fj:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #0
	beq	.L4
	mov	r3, #1
	mov	r0, #0
.L3:
	add	r0, r0, r3
	add	r3, r3, #1
	cmp	r2, r3
	bcs	.L3
	bx	lr
.L4:
	mov	r0, r2
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1fj, .-_Z1fj
	.align	2
	.global	_Z3addii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3addii, %function
_Z3addii:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3addii, .-_Z3addii
	.global	__aeabi_idiv
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8
	add	r1, sp, #4
	ldr	r0, .L14
	bl	_ZNSirsERi
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.L11
	mov	r1, #0
	mov	r3, #1
.L10:
	add	r1, r1, r3
	add	r3, r3, #1
	cmp	r2, r3
	bcs	.L10
.L9:
	ldr	r0, .L14+4
	bl	_ZNSolsEi
	bl	_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	r1, #0
	mov	r0, #5
	bl	__aeabi_idiv
	mov	r4, #10
	mov	r1, r0
	ldr	r0, .L14+4
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r2, #1
	strb	r4, [r1, #-6]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r1, sp, #8
	mov	r2, #1
	strb	r4, [r1, #-5]!
	ldr	r0, .L14+4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L11:
	mov	r1, r2
	b	.L9
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
	.type	_GLOBAL__sub_I__Z1fj, %function
_GLOBAL__sub_I__Z1fj:
	.fnstart
.LFB1921:
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
	.size	_GLOBAL__sub_I__Z1fj, .-_GLOBAL__sub_I__Z1fj
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1fj
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
