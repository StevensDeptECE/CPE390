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
	.file	"08if.cc"
	.text
	.align	2
	.global	_Z6isEveni
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z6isEveni, %function
_Z6isEveni:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, r0
	and	r0, r0, #1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z6isEveni, .-_Z6isEveni
	.align	2
	.global	_Z14printOddOrEveni
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z14printOddOrEveni, %function
_Z14printOddOrEveni:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r0, #1
	bne	.L5
	mov	r2, #5
	ldr	r1, .L6
	ldr	r0, .L6+4
	b	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L5:
	mov	r2, #4
	ldr	r1, .L6+8
	ldr	r0, .L6+4
	b	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L7:
	.align	2
.L6:
	.word	.LC1
	.word	_ZSt4cout
	.word	.LC0
	.cantunwind
	.fnend
	.size	_Z14printOddOrEveni, .-_Z14printOddOrEveni
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
	mov	r1, #0
	ldr	r4, .L10
	.pad #8
	sub	sp, sp, #8
	mov	r0, r4
	bl	_ZNSo9_M_insertIbEERSoT_
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-1]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	ldr	r1, .L10+4
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	_ZSt4cout
	.word	.LC1
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z6isEveni, %function
_GLOBAL__sub_I__Z6isEveni:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L14
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L14+4
	ldr	r1, .L14+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z6isEveni, .-_GLOBAL__sub_I__Z6isEveni
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z6isEveni
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
	.ascii	"odd\012\000"
	.space	3
.LC1:
	.ascii	"even\012\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
