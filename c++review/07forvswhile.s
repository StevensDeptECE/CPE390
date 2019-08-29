	.file	"07forvswhile.cc"
	.text
	.p2align 4,,15
	.globl	_Z1fi
	.type	_Z1fi, @function
_Z1fi:
.LFB1586:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L4
	addl	$1, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	addl	%edx, %eax
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L3
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1586:
	.size	_Z1fi, .-_Z1fi
	.p2align 4,,15
	.globl	_Z3addii
	.type	_Z3addii, @function
_Z3addii:
.LFB1587:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE1587:
	.size	_Z3addii, .-_Z3addii
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1588:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	_ZSt3cin(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	call	_ZNSirsERi@PLT
	movl	4(%rsp), %edx
	testl	%edx, %edx
	jle	.L12
	addl	$1, %edx
	xorl	%esi, %esi
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	addl	%eax, %esi
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L10
.L9:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	xorl	%eax, %eax
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L15
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	.L9
.L15:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1588:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z1fi, @function
_GLOBAL__sub_I__Z1fi:
.LFB2069:
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
.LFE2069:
	.size	_GLOBAL__sub_I__Z1fi, .-_GLOBAL__sub_I__Z1fi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z1fi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
