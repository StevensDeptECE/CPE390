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
	.file	"hypot.cc"
	.text
	.align	2
	.global	hypot
	.syntax unified
	.arm
	.fpu vfp
	.type	hypot, %function
hypot:
	.fnstart
.LFB223:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vmul.f64	d1, d1, d1
	push	{r4, lr}
	vpush.64	{d8}
	vmla.f64	d1, d0, d0
	vcmp.f64	d1, #0
	vsqrt.f64	d8, d1
	vmrs	APSR_nzcv, FPSCR
	bmi	.L5
.L1:
	vmov.f64	d0, d8
	vldm	sp!, {d8}
	pop	{r4, pc}
.L5:
	vmov.f64	d0, d1
	bl	sqrt
	b	.L1
	.cantunwind
	.fnend
	.size	hypot, .-hypot
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
