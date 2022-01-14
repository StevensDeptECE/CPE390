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
	.file	"writeslow.cc"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1544:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	.pad #1024
	sub	sp, sp, #1024
	.pad #4
	sub	sp, sp, #4
	mov	r1, #1
	ldr	r0, .L8
	bl	creat
	subs	r5, r0, #0
	blt	.L7
	mov	r0, sp
	mov	r2, #1024
	mov	r1, #0
	bl	memset
	ldr	r4, .L8+4
.L3:
	mov	r2, #4
	mov	r1, sp
	mov	r0, r5
	bl	write
	subs	r4, r4, #1
	bne	.L3
	mov	r0, r5
	bl	close
	mov	r0, r4
	add	sp, sp, #1024
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, pc}
.L7:
	ldr	r1, .L8+8
	ldr	r0, .L8+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mvn	r0, #0
	bl	exit
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	1000000
	.word	.LC1
	.word	_ZSt4cout
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2028:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L12
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L12+4
	ldr	r1, .L12+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"test.dat\000"
	.space	3
.LC1:
	.ascii	"could not create file\012\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
