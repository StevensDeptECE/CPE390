	.file	"integerops.cc"
	.text
	.p2align 4,,15
	.globl	_Z1fii
	.type	_Z1fii, @function
_Z1fii:
.LFB1586:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	subl	%esi, %edi
	cltd
	movl	%eax, %ecx
	idivl	%edi
	imull	%edi, %ecx
	orl	$591565096, %edi
	addl	%ecx, %eax
	addl	%edx, %eax
	andl	$-5614285, %eax
	xorl	%edi, %eax
	ret
	.cfi_endproc
.LFE1586:
	.size	_Z1fii, .-_Z1fii
	.p2align 4,,15
	.globl	_Z1fmm
	.type	_Z1fmm, @function
_Z1fmm:
.LFB1587:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	xorl	%edx, %edx
	subq	%rsi, %rdi
	movq	%rax, %rcx
	divq	%rdi
	imulq	%rdi, %rcx
	orq	$591565096, %rdi
	addq	%rcx, %rax
	addq	%rdx, %rax
	andl	$4289353011, %eax
	xorq	%rdi, %rax
	ret
	.cfi_endproc
.LFE1587:
	.size	_Z1fmm, .-_Z1fmm
	.p2align 4,,15
	.globl	_Z21programmingConstructsi
	.type	_Z21programmingConstructsi, @function
_Z21programmingConstructsi:
.LFB1588:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L11
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	_ZSt4cout(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	subl	$1, %ebp
	jne	.L6
	leaq	_ZSt4cout(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	_ZNSolsEi@PLT
	sarl	%ebx
	jne	.L7
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE1588:
	.size	_Z21programmingConstructsi, .-_Z21programmingConstructsi
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z1fii, @function
_GLOBAL__sub_I__Z1fii:
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
	.size	_GLOBAL__sub_I__Z1fii, .-_GLOBAL__sub_I__Z1fii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z1fii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
