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
	.file	"optimizationstest.cc"
	.text
	.align	2
	.global	_Z9divideBy3dj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9divideBy3dj, %function
_Z9divideBy3dj:
	.fnstart
.LFB2260:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	vmov.f64	d7, d0
	vldr.64	d0, .L7
	beq	.L4
	vldr.64	d4, .L7+8
	vldr.64	d5, .L7+16
	mov	r3, #0
.L3:
	vdiv.f64	d6, d7, d4
	add	r3, r3, #1
	cmp	r0, r3
	vadd.f64	d7, d7, d5
	vadd.f64	d0, d0, d6
	bne	.L3
	bx	lr
.L4:
	bx	lr
.L8:
	.align	3
.L7:
	.word	0
	.word	0
	.word	0
	.word	1074266112
	.word	-1717986918
	.word	1069128089
	.cantunwind
	.fnend
	.size	_Z9divideBy3dj, .-_Z9divideBy3dj
	.align	2
	.global	_Z19precomputingInversedj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z19precomputingInversedj, %function
_Z19precomputingInversedj:
	.fnstart
.LFB2261:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	vmov.f64	d7, d0
	vldr.64	d0, .L14
	beq	.L12
	vldr.64	d5, .L14+8
	vldr.64	d6, .L14+16
	mov	r3, #0
.L11:
	add	r3, r3, #1
	cmp	r0, r3
	vmla.f64	d0, d7, d5
	vadd.f64	d7, d7, d6
	bne	.L11
	bx	lr
.L12:
	bx	lr
.L15:
	.align	3
.L14:
	.word	0
	.word	0
	.word	1431655765
	.word	1070945621
	.word	-1717986918
	.word	1069128089
	.cantunwind
	.fnend
	.size	_Z19precomputingInversedj, .-_Z19precomputingInversedj
	.align	2
	.global	_Z41doesCompilerPrecomputeInverseForConstantsdd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z41doesCompilerPrecomputeInverseForConstantsdd, %function
_Z41doesCompilerPrecomputeInverseForConstantsdd:
	.fnstart
.LFB2262:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vadd.f64	d0, d0, d1
	vldr.64	d7, .L17
	vmul.f64	d0, d0, d7
	bx	lr
.L18:
	.align	3
.L17:
	.word	0
	.word	1071644672
	.cantunwind
	.fnend
	.size	_Z41doesCompilerPrecomputeInverseForConstantsdd, .-_Z41doesCompilerPrecomputeInverseForConstantsdd
	.align	2
	.global	_Z31doesCompilerOptimizeSqrtSquaredd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z31doesCompilerOptimizeSqrtSquaredd, %function
_Z31doesCompilerOptimizeSqrtSquaredd:
	.fnstart
.LFB2263:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vcmp.f64	d0, #0
	push	{r4, r5, r6, lr}
	vpush.64	{d8}
	vsqrt.f64	d8, d0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L22
.L20:
	vmul.f64	d0, d8, d8
	vldm	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L22:
	vmov	r4, r5, d0
	bl	sqrt
	vmov	d0, r4, r5
	bl	sqrt
	b	.L20
	.cantunwind
	.fnend
	.size	_Z31doesCompilerOptimizeSqrtSquaredd, .-_Z31doesCompilerOptimizeSqrtSquaredd
	.align	2
	.global	_Z38doesCompilerOptimizeSeparatedConstantsd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z38doesCompilerOptimizeSeparatedConstantsd, %function
_Z38doesCompilerOptimizeSeparatedConstantsd:
	.fnstart
.LFB2264:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vadd.f64	d0, d0, d0
	vldr.64	d7, .L24
	vdiv.f64	d0, d0, d7
	bx	lr
.L25:
	.align	3
.L24:
	.word	0
	.word	1074266112
	.cantunwind
	.fnend
	.size	_Z38doesCompilerOptimizeSeparatedConstantsd, .-_Z38doesCompilerOptimizeSeparatedConstantsd
	.align	2
	.global	_Z23handOptimizedNoDivisiond
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z23handOptimizedNoDivisiond, %function
_Z23handOptimizedNoDivisiond:
	.fnstart
.LFB2265:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L27
	vmul.f64	d0, d0, d7
	bx	lr
.L28:
	.align	3
.L27:
	.word	1431655765
	.word	1071994197
	.cantunwind
	.fnend
	.size	_Z23handOptimizedNoDivisiond, .-_Z23handOptimizedNoDivisiond
	.align	2
	.global	_Z14multiplyByZerod
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z14multiplyByZerod, %function
_Z14multiplyByZerod:
	.fnstart
.LFB2266:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d7, .L30
	vmul.f64	d0, d0, d7
	bx	lr
.L31:
	.align	3
.L30:
	.word	0
	.word	0
	.cantunwind
	.fnend
	.size	_Z14multiplyByZerod, .-_Z14multiplyByZerod
	.section	.text._Z9benchmarkIPFddjEEvPKcT_dj,"axG",%progbits,_Z9benchmarkIPFddjEEvPKcT_dj,comdat
	.align	2
	.weak	_Z9benchmarkIPFddjEEvPKcT_dj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9benchmarkIPFddjEEvPKcT_dj, %function
_Z9benchmarkIPFddjEEvPKcT_dj:
	.fnstart
.LFB2496:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	vpush.64	{d8}
	.vsave {d8}
	subs	r4, r0, #0
	mov	r5, r1
	vmov.f64	d8, d0
	.pad #8
	sub	sp, sp, #8
	mov	r6, r2
	beq	.L36
	bl	strlen
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L37
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L34:
	add	r1, sp, #8
	mov	r3, #9
	strb	r3, [r1, #-1]!
	mov	r2, #1
	ldr	r0, .L37
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	_ZNSo5flushEv
	bl	clock
	vmov.f64	d0, d8
	mov	r4, r0
	mov	r0, r6
	blx	r5
	bl	clock
	sub	r1, r0, r4
	ldr	r0, .L37
	bl	_ZNSo9_M_insertIlEERSoT_
	add	r1, sp, #8
	mov	r3, #10
	strb	r3, [r1, #-2]!
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	sp, sp, #8
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L36:
	ldr	r2, .L37
	ldr	r3, [r2]
	ldr	r3, [r3, #-12]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L34
.L38:
	.align	2
.L37:
	.word	_ZSt4cout
	.fnend
	.size	_Z9benchmarkIPFddjEEvPKcT_dj, .-_Z9benchmarkIPFddjEEvPKcT_dj
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB2268:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	vpush.64	{d8, d9, d10, d11}
	.vsave {d8, d9, d10, d11}
	vldr.64	d11, .L41
	vldr.64	d10, .L41+8
	ldr	r4, .L41+32
	.pad #8
	sub	sp, sp, #8
	bl	rand
	mov	r8, #32
	mov	r5, #10
	ldr	r7, .L41+36
	mov	r6, #15
	vmov	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	vdiv.f64	d8, d11, d7
	bl	rand
	vmov.f64	d0, d10
	vmov	s15, r0	@ int
	mov	r0, r4
	vcvt.f64.s32	d7, s15
	vdiv.f64	d9, d11, d7
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r8, [r1, #-1]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d10
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r8, [r1, #-2]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vadd.f64	d9, d9, d8
	vmov.f64	d0, d9
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-3]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	mov	r2, r7
	ldr	r1, .L41+40
	ldr	r0, .L41+44
	bl	_Z9benchmarkIPFddjEEvPKcT_dj
	mov	r2, r7
	ldr	r1, .L41+48
	vmov.f64	d0, d8
	ldr	r0, .L41+52
	bl	_Z9benchmarkIPFddjEEvPKcT_dj
	vldr.64	d0, .L41+16
	bl	_Z31doesCompilerOptimizeSqrtSquaredd
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-4]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r1, .L41+56
	mov	r0, r4
	mov	r2, #2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r2, [r4]
	vmov.f64	d0, d8
	mov	r0, r4
	ldr	r3, [r2, #-12]
	add	r3, r3, r4
	str	r6, [r3, #4]
	ldr	r3, [r2, #-12]
	add	r3, r3, r4
	str	r6, [r3, #8]
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-5]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r1, .L41+60
	mov	r0, r4
	mov	r2, #16
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r2, [r4]
	vmov.f64	d0, d8
	ldr	r3, [r2, #-12]
	add	r3, r3, r4
	str	r6, [r3, #4]
	ldr	r3, [r2, #-12]
	add	r3, r3, r4
	str	r6, [r3, #8]
	bl	_Z31doesCompilerOptimizeSqrtSquaredd
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-6]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #12
	ldr	r1, .L41+64
	mov	r0, r4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, .L41+24
	bl	_Z31doesCompilerOptimizeSqrtSquaredd
	mov	r0, r4
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #8
	mov	r2, #1
	strb	r5, [r1, #-7]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, #0
	add	sp, sp, #8
	@ sp needed
	vldm	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, pc}
.L42:
	.align	3
.L41:
	.word	0
	.word	1072693248
	.word	0
	.word	1075052544
	.word	0
	.word	1073741824
	.word	0
	.word	-1074528256
	.word	_ZSt4cout
	.word	100000000
	.word	_Z19precomputingInversedj
	.word	.LC0
	.word	_Z9divideBy3dj
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z9divideBy3dj, %function
_GLOBAL__sub_I__Z9divideBy3dj:
	.fnstart
.LFB2733:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L45
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L45+4
	ldr	r1, .L45+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z9divideBy3dj, .-_GLOBAL__sub_I__Z9divideBy3dj
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z9divideBy3dj
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
	.ascii	"precomputingInverse\000"
.LC1:
	.ascii	"divideBy3\000"
	.space	2
.LC2:
	.ascii	"x=\000"
	.space	1
.LC3:
	.ascii	"sqrt(x)*sqrt(x)=\000"
	.space	3
.LC4:
	.ascii	"sqrt(-1.25)=\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
