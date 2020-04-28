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
	.file	"Fraction.cc"
	.text
	.align	2
	.global	_Z1fv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fv, %function
_Z1fv:
	.fnstart
.LFB1483:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #3
	ldr	r1, .L2
	ldr	r0, .L2+4
	b	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	_ZSt4cout
	.cantunwind
	.fnend
	.size	_Z1fv, .-_Z1fv
	.align	2
	.global	_Z1gv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1gv, %function
_Z1gv:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_Z1fv
	.cantunwind
	.fnend
	.size	_Z1gv, .-_Z1gv
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1484:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.save {lr}
	mov	r2, #1
	.pad #12
	sub	sp, sp, #12
	mov	r3, #2
	mov	r1, sp
	ldr	r0, .L7
	stm	sp, {r2, r3}
	bl	_ZlsRSoRK8Fraction
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	r0, sp
	bl	_ZN8Fraction4zeroEv
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L8:
	.align	2
.L7:
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z1gv, %function
_GLOBAL__sub_I__Z1gv:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L11
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L11+4
	mov	r0, r4
	ldr	r1, .L11+8
	bl	__aeabi_atexit
	mov	r2, #1
	mov	r3, #2
	stmib	r4, {r2, r3}
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z1gv, .-_GLOBAL__sub_I__Z1gv
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1gv
	.global	test
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.space	3
	.type	test, %object
	.size	test, 8
test:
	.space	8
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"hi!\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
