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
	.file	"loadarray.cc"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L3
	str	lr, [sp, #-4]!
	.save {lr}
	.pad #20
	sub	sp, sp, #20
	ldm	r2, {r0, r1, r2}
	add	r3, sp, #4
	stm	r3, {r0, r1, r2}
	mov	r0, r3
	mov	r1, #3
	bl	_Z9loadarrayPKii
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.fnend
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	5
	.word	4
	.word	3
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
