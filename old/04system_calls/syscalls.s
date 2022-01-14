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
	.file	"syscalls.cc"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1489:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	mov	r1, #484
	.pad #28
	sub	sp, sp, #28
	ldr	r0, .L13
	bl	mkdir
	cmp	r0, #0
	bne	.L10
.L2:
	ldr	r0, .L13
	bl	chdir
	subs	r5, r0, #0
	bne	.L11
	mov	r1, #420
	ldr	r0, .L13+4
	bl	creat
	subs	r4, r0, #0
	blt	.L12
	ldr	lr, .L13+8
	mov	ip, sp
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	mov	r2, #20
	ldm	lr, {r0, r1}
	str	r0, [ip], #4
	mov	r0, r4
	strb	r1, [ip]
	mov	r1, sp
	bl	write
	mov	r0, r4
	bl	close
	mov	r0, r5
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L10:
	ldr	r1, .L13+12
	ldr	r0, .L13+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L2
.L12:
	ldr	r1, .L13+20
	ldr	r0, .L13+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mvn	r0, #0
	bl	exit
.L11:
	ldr	r1, .L13+24
	ldr	r0, .L13+16
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mvn	r0, #0
	bl	exit
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	.LC3
	.word	.LC5
	.word	.LC1
	.word	_ZSt4cerr
	.word	.LC4
	.word	.LC2
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L17
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L17+4
	ldr	r1, .L17+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L18:
	.align	2
.L17:
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
	.ascii	"tmp\000"
.LC1:
	.ascii	"Could not create directory tmp. Perhaps it already "
	.ascii	"exists\012\000"
	.space	1
.LC2:
	.ascii	"Could not enter directory tmp, failing\012\000"
.LC3:
	.ascii	"test.dat\000"
	.space	3
.LC4:
	.ascii	"Could not create test.dat, failing\012\000"
.LC5:
	.ascii	"testing testing 123\012\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
