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
	.file	"checksum.cc"
	.text
	.align	2
	.global	_Z8checksumPKc
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z8checksumPKc, %function
_Z8checksumPKc:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	mov	r2, r0
	mov	r0, #0
.L3:
	add	r0, r0, r3
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	bx	lr
.L4:
	mov	r0, r3
	bx	lr
	.cantunwind
	.fnend
	.size	_Z8checksumPKc, .-_Z8checksumPKc
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
