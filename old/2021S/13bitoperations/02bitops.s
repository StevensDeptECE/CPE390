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
	.file	"02bitops.cc"
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
	lsl	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f1ii, .-_Z2f1ii
	.align	2
	.global	_Z3f1bii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3f1bii, %function
_Z3f1bii:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asr	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3f1bii, .-_Z3f1bii
	.align	2
	.global	_Z2f2jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f2jj, %function
_Z2f2jj:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f2jj, .-_Z2f2jj
	.align	2
	.global	_Z2f3jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f3jj, %function
_Z2f3jj:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f3jj, .-_Z2f3jj
	.align	2
	.global	_Z2f4j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f4j, %function
_Z2f4j:
	.fnstart
.LFB1538:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsl	r0, r0, #6
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f4j, .-_Z2f4j
	.align	2
	.global	_Z2f5j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f5j, %function
_Z2f5j:
	.fnstart
.LFB1539:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r0, lsl #2 @r0 = r0 + 4r0
	add	r0, r0, r0, lsl #4 @r0 = 17r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f5j, .-_Z2f5j
	.align	2
	.global	_Z2f6j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f6j, %function
_Z2f6j:
	.fnstart
.LFB1540:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	r0, r0, #3
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f6j, .-_Z2f6j
	.global	__aeabi_uidiv
	.align	2
	.global	_Z2f7jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f7jj, %function
_Z2f7jj:
	.fnstart
.LFB1541:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_uidiv
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z2f7jj, .-_Z2f7jj
	.align	2
	.global	_Z2f8jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f8jj, %function
_Z2f8jj:
	.fnstart
.LFB1542:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	umull	r3, r0, r3, r0
	lsr	r0, r0, #3
	bx	lr
.L13:
	.align	2
.L12:
	.word	-858993459
	.cantunwind
	.fnend
	.size	_Z2f8jj, .-_Z2f8jj
	.align	2
	.global	_Z2f9jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f9jj, %function
_Z2f9jj:
	.fnstart
.LFB1543:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f9jj, .-_Z2f9jj
	.align	2
	.global	_Z3f10jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3f10jj, %function
_Z3f10jj:
	.fnstart
.LFB1544:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3f10jj, .-_Z3f10jj
	.align	2
	.global	_Z3f11jj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3f11jj, %function
_Z3f11jj:
	.fnstart
.LFB1545:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	eor	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3f11jj, .-_Z3f11jj
	.align	2
	.global	_Z3f12j
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z3f12j, %function
_Z3f12j:
	.fnstart
.LFB1546:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3f12j, .-_Z3f12j
	.section	.text.startup,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z2f1ii, %function
_GLOBAL__sub_I__Z2f1ii:
	.fnstart
.LFB2027:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L20
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L20+4
	ldr	r1, .L20+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L21:
	.align	2
.L20:
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
