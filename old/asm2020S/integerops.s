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
	.globl	_Z12ifStatementsi
	.type	_Z12ifStatementsi, @function
_Z12ifStatementsi:
.LFB1588:
	.cfi_startproc
	movl	$-2, %eax
	testl	%edi, %edi
	js	.L4
	xorl	%eax, %eax
	cmpl	$5, %edi
	setg	%al
	subl	$1, %eax
.L4:
	ret
	.cfi_endproc
.LFE1588:
	.size	_Z12ifStatementsi, .-_Z12ifStatementsi
	.p2align 4,,15
	.globl	_Z5loopsi
	.type	_Z5loopsi, @function
_Z5loopsi:
.LFB1589:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L18
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
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%ebx, %esi
	movq	%r12, %rdi
	addl	$1, %ebx
	call	_ZNSolsEi@PLT
	cmpl	%ebx, %ebp
	jne	.L11
	movl	%ebx, %ebp
	leaq	_ZSt4cout(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	subl	$1, %ebp
	jne	.L12
	leaq	_ZSt4cout(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	_ZNSolsEi@PLT
	sarl	%ebx
	jne	.L13
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE1589:
	.size	_Z5loopsi, .-_Z5loopsi
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z1fii, @function
_GLOBAL__sub_I__Z1fii:
.LFB2070:
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
.LFE2070:
	.size	_GLOBAL__sub_I__Z1fii, .-_GLOBAL__sub_I__Z1fii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z1fii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
