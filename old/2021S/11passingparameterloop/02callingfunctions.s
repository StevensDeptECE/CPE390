	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"02callingfunctions.cc"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.align	2
.LC0:
	.ascii	"hello\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1512:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	bl	_Z1fv
	mov	r0, #1
	bl	_Z1fi
	mov	r1, #3
	mov	r0, #2
	bl	_Z1fii
	mov	r2, #3
	mov	r1, #2
	mov	r0, #1
	bl	_Z1fiii
	mov	r3, #4
	mov	r2, #3
	mov	r1, #2
	mov	r0, #1
	bl	_Z1fiiii
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #4
	mov	r2, #3
	mov	r1, #2
	mov	r0, #1
	bl	_Z1fiiiii
	ldr	r1, .L3
	mov	r0, #1
	bl	_Z1fiPKc
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1993:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [fp, #-12]
	ldr	r2, .L8
	cmp	r3, r2
	bne	.L7
	ldr	r0, .L8+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	ldr	r0, .L8+4
	bl	__aeabi_atexit
.L7:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	65535
	.word	_ZStL8__ioinit
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB1994:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r1, .L11
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
