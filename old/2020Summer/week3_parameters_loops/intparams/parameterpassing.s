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
	.file	"parameterpassing.cc"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20
	bl	_Z2f0v
	ldr	r5, .L3
	mov	r4, #10
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-1]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #2
	bl	_Z2f1i
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-2]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r1, #3
	mov	r0, #2
	bl	_Z2f2ii
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-3]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #4
	mov	r1, #3
	mov	r0, #2
	bl	_Z2f3iii
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-4]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r3, #5
	mov	r2, #4
	mov	r1, #3
	mov	r0, #2
	bl	_Z2f4iiii
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-5]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #4
	mov	r3, #5
	mov	r1, #3
	mov	r0, #2
	bl	_Z2f5iiiii
	mov	r1, r0
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #16
	mov	r2, #1
	strb	r4, [r1, #-6]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L4:
	.align	2
.L3:
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
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L7
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L7+4
	ldr	r1, .L7+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L8:
	.align	2
.L7:
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
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
