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
	.file	"funcs.cc"
	.text
	.align	2
	.global	_Z1aii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1aii, %function
_Z1aii:
	.fnstart
.LFB223:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1aii, .-_Z1aii
	.align	2
	.global	_Z1bii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1bii, %function
_Z1bii:
	.fnstart
.LFB224:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1bii, .-_Z1bii
	.align	2
	.global	_Z1cii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1cii, %function
_Z1cii:
	.fnstart
.LFB225:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r1, r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1cii, .-_Z1cii
	.global	__aeabi_idiv
	.align	2
	.global	_Z1dii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1dii, %function
_Z1dii:
	.fnstart
.LFB226:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_idiv
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z1dii, .-_Z1dii
	.align	2
	.global	_Z1eii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1eii, %function
_Z1eii:
	.fnstart
.LFB227:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, #102
	mul	r0, r0, r1
	lsr	r0, #10
	
	
	ldr	r3, .L7
	smull	r2, r3, r3, r0
	asr	r0, r0, #31
	rsb	r0, r0, r3, asr #2
	bx	lr
.L8:
	.align	2
.L7:
	.word	1717986919
	.cantunwind
	.fnend
	.size	_Z1eii, .-_Z1eii
	.align	2
	.global	_Z2f1d
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f1d, %function
_Z2f1d:
	.fnstart
.LFB228:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmul.f64	d0, d0, d0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f1d, .-_Z2f1d
	.align	2
	.global	_Z2f2dd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f2dd, %function
_Z2f2dd:
	.fnstart
.LFB229:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vmul.f64	d0, d0, d0
	vmla.f64	d0, d1, d1
	
	vmul.f64	d1, d1, d1
	vmla.f64	d1, d0, d0
	vmov.f64	d0, d1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z2f2dd, .-_Z2f2dd
	.align	2
	.global	_Z2f3dd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z2f3dd, %function
_Z2f3dd:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vmul.f64	d1, d1, d1
	push	{r4, lr}
	vpush.64	{d8}
	vmla.f64	d1, d0, d0
	vcmp.f64	d1, #0
	vsqrt.f64	d8, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L15
.L11:
	vmov.f64	d0, d8
	vldm	sp!, {d8}
	pop	{r4, pc}
.L15:
	vmov.f64	d0, d1
	bl	sqrt
	b	.L11
	.cantunwind
	.fnend
	.size	_Z2f3dd, .-_Z2f3dd
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
