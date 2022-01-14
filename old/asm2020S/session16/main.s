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
	.file	"main.cc"
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
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8
	ldr	r0, .L3
	bl	_Znaj
	ldr	r1, .L3+4
	ldr	r7, .L3+8
	ldr	r4, .L3+12
	mov	r5, r0
	bl	_Z1fPKii
	bl	clock
	mov	r1, r7
	mov	r6, r0
	mov	r0, r5
	bl	_Z1fPKii
	bl	clock
	mov	r2, #11
	ldr	r1, .L3+16
	mov	r8, r0
	mov	r0, r4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r8, r6
	mov	r0, r4
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r6, #10
	mov	r2, #1
	strb	r6, [r1, #-1]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	clock
	mov	r1, r7
	mov	r8, r0
	mov	r0, r5
	bl	_Z1gPKii
	bl	clock
	mov	r2, #11
	ldr	r1, .L3+20
	mov	r7, r0
	mov	r0, r4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	sub	r1, r7, r8
	mov	r0, r4
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r6, [r1, #-2]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r5
	bl	_ZdaPv
	mov	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L4:
	.align	2
.L3:
	.word	160000000
	.word	10000
	.word	40000000
	.word	_ZSt4cout
	.word	.LC0
	.word	.LC1
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB1921:
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"f elapsed: \000"
.LC1:
	.ascii	"g elapsed: \000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
