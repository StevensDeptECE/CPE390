	.file	"float.cc"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"r="
.LC3:
	.string	"q="
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2414:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZSt3cin(%rip), %rdi
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	24(%rsp), %rsi
	call	_ZNSi10_M_extractIdEERSiRT_@PLT
	leaq	32(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZNSi10_M_extractIdEERSiRT_@PLT
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdx
	movq	_ZSt4cout(%rip), %rax
	mulsd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	movq	-24(%rax), %rax
	movq	$15, 8(%rdx,%rax)
	addsd	%xmm1, %xmm0     #x^2 + y^2
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, %xmm3
	sqrtsd	%xmm3, %xmm3
	ja	.L6
.L2:
	movapd	%xmm2, %xmm0
	movsd	%xmm3, 8(%rsp)
	leaq	23(%rsp), %rbp
	movsd	.LC1(%rip), %xmm1
	call	pow@PLT
	movl	$2, %edx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm3
	leaq	_ZSt4cout(%rip), %rdi
	movapd	%xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$2, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rsp), %xmm1
	leaq	_ZSt4cout(%rip), %rdi
	movapd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 23(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rsp), %xmm1
	movsd	32(%rsp), %xmm0
	call	atan2@PLT
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movsd	%xmm3, (%rsp)
	call	sqrt@PLT
	movsd	24(%rsp), %xmm2
	movsd	(%rsp), %xmm3
	jmp	.L2
.L7:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2414:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2917:
	.cfi_startproc
	endbr64
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
.LFE2917:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1353773692
	.long	1073814123
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
