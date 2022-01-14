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
	.file	"fpfundamentals.cc"
	.text
	.align	2
	.global	_Z11findEpsilonv
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z11findEpsilonv, %function
_Z11findEpsilonv:
	.fnstart
.LFB2431:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	vpush.64	{d8, d9}
	.vsave {d8, d9}
	ldr	r3, .L6+16
	vldr.64	d8, .L6
	vldr.64	d9, .L6+8
	.pad #12
	sub	sp, sp, #12
	mov	r7, r3
	mov	r4, #53
	mov	r6, #10
	mov	r5, #1
	mov	r2, #17
	str	r2, [r3, #8]
.L2:
	vmov.f64	d0, d8
	mov	r0, r7
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, r5
	add	r1, sp, #7
	strb	r6, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	subs	r4, r4, #1
	vmul.f64	d8, d8, d9
	bne	.L2
	vmov.f64	d0, d8
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, pc}
.L7:
	.align	3
.L6:
	.word	0
	.word	1072693248
	.word	0
	.word	1071644672
	.word	_ZSt4cout
	.fnend
	.size	_Z11findEpsilonv, .-_Z11findEpsilonv
	.align	2
	.global	_Z11displayBitsPKcd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z11displayBitsPKcd, %function
_Z11displayBitsPKcd:
	.fnstart
.LFB2432:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r0, #0
	.pad #12
	sub	sp, sp, #12
	vmov	r8, r9, d0
	beq	.L14
	bl	strlen
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r1, sp, #8
	mov	r3, #9
	strb	r3, [r1, #-1]!
	mov	r2, #1
	ldr	r0, .L15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #65
	ldr	r1, .L15+4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	bl	strlen
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L10:
	add	r1, sp, #8
	mov	r3, #9
	strb	r3, [r1, #-2]!
	mov	r2, #1
	ldr	r0, .L15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	fp, .L15
	mov	r4, #63
	mov	r5, #1
.L11:
	sub	r3, r4, #32
	lsl	r6, r5, r4
	lsl	r7, r5, r3
	rsb	r3, r4, #32
	and	r2, r6, r8
	orr	r7, r7, r5, lsr r3
	and	r3, r7, r9
	orrs	r3, r2, r3
	movne	r1, #1
	moveq	r1, #0
	mov	r0, fp
	sub	r4, r4, #1
	bl	_ZNSolsEi
	cmn	r4, #1
	bne	.L11
	mov	r2, #2
	ldr	r1, .L15+8
	ldr	r0, .L15
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	ldr	r4, .L15
	ldr	r3, [r4]
	ldr	r3, [r3, #-12]
	add	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	add	r1, sp, #8
	mov	r3, #9
	strb	r3, [r1, #-1]!
	mov	r0, r4
	mov	r2, #1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #65
	ldr	r1, .L15+4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r3, [r4]
	ldr	r3, [r3, #-12]
	add	r4, r4, r3
	mov	r0, r4
	ldr	r1, [r4, #20]
	orr	r1, r1, #1
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L10
.L16:
	.align	2
.L15:
	.word	_ZSt4cout
	.word	.LC0
	.word	.LC1
	.fnend
	.size	_Z11displayBitsPKcd, .-_Z11displayBitsPKcd
	.align	2
	.global	_Z9operatorsdd
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z9operatorsdd, %function
_Z9operatorsdd:
	.fnstart
.LFB2433:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vadd.f64	d7, d0, d1
	vsub.f64	d0, d0, d1
	push	{r4, lr}
	vpush.64	{d8, d9}
	vmul.f64	d7, d7, d0
	vadd.f64	d0, d7, d7
	vsub.f64	d0, d0, d7
	vcmp.f64	d0, #0
	vabs.f64	d8, d0
	vsqrt.f64	d9, d0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L20
.L18:
	vadd.f64	d0, d8, d9
	vldm	sp!, {d8-d9}
	vneg.f64	d0, d0
	pop	{r4, pc}
.L20:
	bl	sqrt
	b	.L18
	.cantunwind
	.fnend
	.size	_Z9operatorsdd, .-_Z9operatorsdd
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB2434:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	vpush.64	{d8, d9, d10}
	.vsave {d8, d9, d10}
	vldr.64	d9, .L23
	vldr.64	d10, .L23+8
	vldr.64	d0, .L23+16
	.pad #36
	sub	sp, sp, #36
	ldr	r0, .L23+104
	bl	_Z11displayBitsPKcd
	vmov.f64	d0, d9
	ldr	r0, .L23+108
	bl	_Z11displayBitsPKcd
	vmov.f64	d0, d10
	ldr	r0, .L23+112
	bl	_Z11displayBitsPKcd
	vldr.64	d0, .L23+24
	ldr	r0, .L23+116
	bl	_Z11displayBitsPKcd
	vldr.64	d0, .L23+32
	ldr	r0, .L23+120
	bl	_Z11displayBitsPKcd
	ldr	r4, .L23+124
	vldr.64	d0, .L23+40
	ldr	r0, .L23+128
	bl	_Z11displayBitsPKcd
	vldr.64	d8, .L23+48
	vldr.64	d0, .L23+56
	ldr	r0, .L23+132
	bl	_Z11displayBitsPKcd
	mov	r0, r4
	vldr.64	d0, .L23+64
	bl	_Z11displayBitsPKcd
	mov	r0, r4
	vldr.64	d0, .L23+72
	bl	_Z11displayBitsPKcd
	mov	r0, r4
	vldr.64	d0, .L23+80
	bl	_Z11displayBitsPKcd
	vdiv.f64	d0, d9, d8
	ldr	r0, .L23+136
	bl	_Z11displayBitsPKcd
	vldr.64	d0, .L23+88
	ldr	r0, .L23+140
	ldr	r5, .L23+144
	mov	r4, #10
	vdiv.f64	d0, d0, d8
	bl	_Z11displayBitsPKcd
	ldr	r0, .L23+148
	vdiv.f64	d0, d8, d8
	bl	_Z11displayBitsPKcd
	bl	rand
	mov	r1, sp
	vmov	s15, r0	@ int
	add	r0, sp, #8
	vcvt.f64.s32	d7, s15
	vdiv.f64	d8, d9, d7
	vmov.f64	d0, d8
	bl	sincos
	vldr.64	d0, [sp, #8]
	vldr.64	d9, [sp]
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-1]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d9
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-2]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	tan
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-3]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	asin
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-4]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	acos
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-5]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	atan
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-6]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d1, .L23+96
	vmov.f64	d0, d8
	bl	pow
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-7]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	exp
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-8]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	bl	log
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-9]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d1, d8
	vmov.f64	d0, d10
	bl	fmod
	mov	r0, r5
	bl	_ZNSo9_M_insertIdEERSoT_
	add	r1, sp, #32
	mov	r2, #1
	strb	r4, [r1, #-10]!
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	bl	_Z11findEpsilonv
	mov	r0, #0
	add	sp, sp, #36
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, pc}
.L24:
	.align	3
.L23:
	.word	0
	.word	1072693248
	.word	0
	.word	1073741824
	.word	0
	.word	1071644672
	.word	0
	.word	1074790400
	.word	0
	.word	1074266112
	.word	0
	.word	1075314688
	.word	0
	.word	0
	.word	0
	.word	-1072431104
	.word	0
	.word	1083179008
	.word	0
	.word	1093664768
	.word	0
	.word	1105723392
	.word	0
	.word	-1074790400
	.word	0
	.word	1076953088
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC9
	.word	.LC7
	.word	.LC8
	.word	.LC10
	.word	.LC11
	.word	_ZSt4cout
	.word	.LC12
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z11findEpsilonv, %function
_GLOBAL__sub_I__Z11findEpsilonv:
	.fnstart
.LFB2894:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L27
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L27+4
	ldr	r1, .L27+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z11findEpsilonv, .-_GLOBAL__sub_I__Z11findEpsilonv
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z11findEpsilonv
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
	.ascii	"seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
	.ascii	"mmmmmmmmmmmmm\012\000"
	.space	2
.LC1:
	.ascii	"\012\012\000"
	.space	1
.LC2:
	.ascii	"0.5=\000"
	.space	3
.LC3:
	.ascii	"1.0=\000"
	.space	3
.LC4:
	.ascii	"2.0=\000"
	.space	3
.LC5:
	.ascii	"4.0=\000"
	.space	3
.LC6:
	.ascii	"3.0=\000"
	.space	3
.LC7:
	.ascii	"6.0=\000"
	.space	3
.LC8:
	.ascii	"-5.0=\000"
	.space	2
.LC9:
	.ascii	"1024.0=\000"
.LC10:
	.ascii	"Inf=\000"
	.space	3
.LC11:
	.ascii	"-Inf=\000"
	.space	2
.LC12:
	.ascii	"NaN=\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
