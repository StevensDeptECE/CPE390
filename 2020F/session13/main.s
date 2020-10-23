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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	push	{r4, lr}
	.save {r4, lr}
	.pad #40
	sub	sp, sp, #40
	ldm	r3, {r0, r1, r2}
	add	ip, sp, #4
	add	r4, r3, #12
	add	lr, sp, #16
	stm	ip, {r0, r1, r2}
	mov	r3, #3
	ldm	r4, {r0, r1, r2}
	stm	lr, {r0, r1, r2}
	add	r0, sp, #28
	mov	r2, lr
	mov	r1, ip
	bl	_Z5maxmePiS_S_i
	mov	r0, #0
	add	sp, sp, #40
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2015:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L8
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L9:
	.align	2
.L8:
	.word	.LANCHOR1
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	3
	.word	4
	.word	5
.LC1:
	.word	4
	.word	1
	.word	2
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
