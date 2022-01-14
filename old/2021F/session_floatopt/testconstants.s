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
	.file	"testconstants.cc"
	.text
	.align	2
	.global	_Z1fd
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fd, %function
_Z1fd:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L3
	vldr.64	d6, .L3+8
	vadd.f64	d0, d0, d7
	vadd.f64	d0, d0, d6
	bx	lr
.L4:
	.align	3
.L3:
	.word	0
	.word	1072693248
	.word	0
	.word	1073741824
	.cantunwind
	.fnend
	.size	_Z1fd, .-_Z1fd
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
