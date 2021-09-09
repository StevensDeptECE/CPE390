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
	.file	"compiling.cc"
	.text
	.align	2
	.global	_Z2f1ii
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f1ii, %function
_Z2f1ii:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f1ii, .-_Z2f1ii
	.align	2
	.global	_Z2f2ii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f2ii, %function
_Z2f2ii:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f2ii, .-_Z2f2ii
	.align	2
	.global	_Z2f3ii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f3ii, %function
_Z2f3ii:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f3ii, .-_Z2f3ii
	.align	2
	.global	_Z2f4ii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f4ii, %function
_Z2f4ii:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r1, r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f4ii, .-_Z2f4ii
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1538:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z2f1ii, %function
_GLOBAL__sub_I__Z2f1ii:
	.fnstart
.LFB2019:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L9
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L9+4
	ldr	r1, .L9+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z2f1ii, .-_GLOBAL__sub_I__Z2f1ii
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z2f1ii
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
