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
	.file	"whatisdivonarmv7.cc"
	.text
	.global	__aeabi_idiv
	.align	2
	.global	_Z1fii
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fii, %function
_Z1fii:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	__aeabi_idiv
	pop	{r4, pc}
	.cantunwind
	.fnend
	.size	_Z1fii, .-_Z1fii
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
