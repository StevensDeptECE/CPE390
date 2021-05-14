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
	.file	"constants.cc"
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
.LFB0:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	mov	r2, #0
	ldr	r3, .L3+24
	strd	r2, [fp, #-12]
	ldr	r2, .L3+28
	ldr	r3, .L3+32
	strd	r2, [fp, #-20]
	ldr	r2, .L3+28
	ldr	r3, .L3+36
	strd	r2, [fp, #-28]
	vldr.64	d2, .L3
	vldr.64	d1, .L3+8
	vldr.64	d0, .L3+16
	bl	_Z1fddd
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	3
.L3:
	.word	1413754136
	.word	1075388923
	.word	1413754136
	.word	1074340347
	.word	0
	.word	1072693248
	.word	1072693248
	.word	1413754136
	.word	1074340347
	.word	1075388923
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
