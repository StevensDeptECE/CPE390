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
	.file	"stopopt.cc"
	.text
	.align	2
	.global	_Z1fi
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fi, %function
_Z1fi:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0
	pople	{r4, r5, r6, pc} @ exit IF r0 == 0
	ldr	r6, .L7
	mov	r4, #0
.L4:
	mov	r1, r4
	mov	r0, r6
	add	r4, r4, #1
	bl	_ZNSolsEi
	cmp	r5, r4
	bne	.L4
	pop	{r4, r5, r6, pc}
.L8:
	.align	2
.L7:
	.word	_ZSt4cout
	.fnend
	.size	_Z1fi, .-_Z1fi
	.section	.text.startup,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z1fi, %function
_GLOBAL__sub_I__Z1fi:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L11
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L11+4
	ldr	r1, .L11+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L12:
	.align	2
.L11:
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
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
