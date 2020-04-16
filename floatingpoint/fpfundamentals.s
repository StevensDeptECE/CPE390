	.file	"fpfundamentals.cc"
	.text
	.p2align 4,,15
	.globl	_Z11findEpsilonv
	.type	_Z11findEpsilonv, @function
_Z11findEpsilonv:
.LFB2590:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	_ZSt4cout(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$53, %ebx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movsd	.LC0(%rip), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	23(%rsp), %r12
	movq	$17, 16+_ZSt4cout(%rip)
	.p2align 4,,10
	.p2align 3
.L2:
	movapd	%xmm1, %xmm0
	movq	%rbp, %rdi
	movsd	%xmm1, 8(%rsp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm1
	mulsd	.LC1(%rip), %xmm1
	subl	$1, %ebx
	jne	.L2
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	movapd	%xmm1, %xmm0
	jne	.L7
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2590:
	.size	_Z11findEpsilonv, .-_Z11findEpsilonv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"\n\n"
	.text
	.p2align 4,,15
	.globl	_Z11displayBitsPKcd
	.type	_Z11displayBitsPKcd, @function
_Z11displayBitsPKcd:
.LFB2591:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%xmm0, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L15
	movq	%rdi, %rbx
	leaq	7(%rsp), %r12
	call	strlen@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movb	$9, 7(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$65, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	%rbx, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L10:
	movq	%r12, %rsi
	movl	$1, %edx
	movb	$9, 7(%rsp)
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$63, %ebx
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%ebx, %ecx
	movq	%r12, %rax
	leaq	_ZSt4cout(%rip), %rdi
	xorl	%esi, %esi
	salq	%cl, %rax
	testq	%rbp, %rax
	setne	%sil
	subl	$1, %ebx
	call	_ZNSolsEi@PLT
	cmpl	$-1, %ebx
	jne	.L11
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L16
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rbx
	leaq	7(%rsp), %r12
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movb	$9, 7(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$65, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L10
.L16:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2591:
	.size	_Z11displayBitsPKcd, .-_Z11displayBitsPKcd
	.section	.rodata.str1.1
.LC4:
	.string	"0.5="
.LC5:
	.string	"1.0="
.LC7:
	.string	"2.0="
.LC9:
	.string	"Inf="
.LC11:
	.string	"-Inf="
.LC12:
	.string	"NaN="
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2592:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC4(%rip), %rdi
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movsd	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	39(%rsp), %rbx
	call	_Z11displayBitsPKcd
	movsd	.LC0(%rip), %xmm0
	leaq	.LC5(%rip), %rdi
	call	_Z11displayBitsPKcd
	movsd	.LC6(%rip), %xmm0
	leaq	.LC7(%rip), %rdi
	call	_Z11displayBitsPKcd
	pxor	%xmm4, %xmm4
	movsd	.LC0(%rip), %xmm0
	leaq	.LC9(%rip), %rdi
	divsd	%xmm4, %xmm0
	call	_Z11displayBitsPKcd
	pxor	%xmm5, %xmm5
	movsd	.LC10(%rip), %xmm0
	leaq	.LC11(%rip), %rdi
	divsd	%xmm5, %xmm0
	call	_Z11displayBitsPKcd
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	leaq	.LC12(%rip), %rdi
	divsd	%xmm6, %xmm0
	call	_Z11displayBitsPKcd
	call	rand@PLT
	pxor	%xmm0, %xmm0
	leaq	16(%rsp), %rsi
	movsd	.LC0(%rip), %xmm3
	cvtsi2sd	%eax, %xmm0
	leaq	24(%rsp), %rdi
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movsd	%xmm3, (%rsp)
	call	sincos@PLT
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	movsd	%xmm1, 8(%rsp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm1
	leaq	_ZSt4cout(%rip), %rdi
	movapd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	tan@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	asin@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	acos@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	atan@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm2
	pxor	%xmm7, %xmm7
	ucomisd	%xmm2, %xmm7
	sqrtsd	%xmm2, %xmm1
	ja	.L21
.L18:
	movapd	%xmm1, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	.LC13(%rip), %xmm1
	movsd	(%rsp), %xmm0
	call	pow@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	exp@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm0
	call	log@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 39(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	_Z11findEpsilonv
	xorl	%eax, %eax
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L22
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	movapd	%xmm2, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	jmp	.L18
.L22:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2592:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z11findEpsilonv, @function
_GLOBAL__sub_I__Z11findEpsilonv:
.LFB3093:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3093:
	.size	_GLOBAL__sub_I__Z11findEpsilonv, .-_GLOBAL__sub_I__Z11findEpsilonv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11findEpsilonv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.align 8
.LC10:
	.long	0
	.long	-1074790400
	.align 8
.LC13:
	.long	0
	.long	1076953088
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
