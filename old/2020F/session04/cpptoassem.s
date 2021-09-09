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
	.file	"cpptoassem.cc"
	.text
	.align	2
	.global	_Z1fi
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fi, %function
_Z1fi:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r0, r0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1fi, .-_Z1fi
	.align	2
	.global	_Z1gii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1gii, %function
_Z1gii:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1gii, .-_Z1gii
	.align	2
	.global	_Z1hi
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1hi, %function
_Z1hi:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0    @compare r0 to the number 0
	ble	.L7       @ branch if less than or equal to to (.L7)
	add	r2, r0, #1 @ r2=r0+1
	mov	r3, #1    @ r3 = 1
	mov	r0, #0    @r0 = 0
.L6:
	add	r0, r0, r3  @r0 = r0 + r3
	add	r3, r3, #1  @r3 = r3 + 1
	cmp	r3, r2      @ compare r3,r2
	bne	.L6         @ branch if not equal
	bx	lr
.L7:
	mov	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1hi, .-_Z1hi
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1537:
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
	.type	_GLOBAL__sub_I__Z1fi, %function
_GLOBAL__sub_I__Z1fi:
	.fnstart
.LFB2018:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L13
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L13+4
	ldr	r1, .L13+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z1fi, .-_GLOBAL__sub_I__Z1fi
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1fi
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
