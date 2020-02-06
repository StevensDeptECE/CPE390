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
	.file	"cpploops.cc"
	.text
	.align	2
	.global	_Z1gv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1gv, %function
_Z1gv:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1gv, .-_Z1gv
	.align	2
	.global	_Z11readSecondsv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z11readSecondsv, %function
_Z11readSecondsv:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12
	ldr	r4, .L4
	ldr	r5, .L4+4
	mov	r1, r4
	mov	r0, r5
	bl	_ZNSolsEi
	add	r1, sp, #4
	ldr	r0, .L4+8
	bl	_ZNSirsERi
	ldr	r1, [sp, #4]
	mov	r0, r5
	mul	r1, r4, r1
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-5]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L5:
	.align	2
.L4:
	.word	31536000
	.word	_ZSt4cout
	.word	_ZSt3cin
	.fnend
	.size	_Z11readSecondsv, .-_Z11readSecondsv
	.align	2
	.global	_Z3sumv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3sumv, %function
_Z3sumv:
	.fnstart
.LFB1481:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.save {lr}
	.pad #12
	sub	sp, sp, #12
	ldr	r1, .L8
	ldr	r0, .L8+4
	bl	_ZNSolsEi
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-1]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	4950
	.word	_ZSt4cout
	.fnend
	.size	_Z3sumv, .-_Z3sumv
	.align	2
	.global	_Z12callfunctionv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z12callfunctionv, %function
_Z12callfunctionv:
	.fnstart
.LFB1482:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	mov	r4, #100
.L11:
	bl	_Z1fv
	subs	r4, r4, #1
	bne	.L11
	pop	{r4, pc}
	.fnend
	.size	_Z12callfunctionv, .-_Z12callfunctionv
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	bl	_Z11readSecondsv
	bl	_Z3sumv
	mov	r4, #100
.L16:
	bl	_Z1fv
	subs	r4, r4, #1
	bne	.L16
	mov	r0, r4
	pop	{r4, pc}
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z1gv, %function
_GLOBAL__sub_I__Z1gv:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L21
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L21+4
	ldr	r1, .L21+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z1gv, .-_GLOBAL__sub_I__Z1gv
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1gv
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
