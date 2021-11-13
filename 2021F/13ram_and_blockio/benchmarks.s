	.file	"benchmarks.cc"
	.text
	.p2align 4
	.globl	_Z11readFromRAMPmj
	.type	_Z11readFromRAMPmj, @function
_Z11readFromRAMPmj:
.LFB0:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L7
	leal	-1(%rsi), %eax
	cmpl	$2, %eax
	jbe	.L8
	movl	%esi, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	%edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L5:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	paddq	%xmm2, %xmm0
	cmpq	%rdx, %rax
	jne	.L5
	movdqa	%xmm0, %xmm1
	movl	%esi, %edx
	psrldq	$8, %xmm1
	andl	$-2, %edx
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	testb	$1, %sil
	je	.L10
.L3:
	movslq	%edx, %rcx
	addq	(%rdi,%rcx,8), %rax
	leal	1(%rdx), %ecx
	cmpl	%esi, %ecx
	jnb	.L1
	movslq	%ecx, %rcx
	addl	$2, %edx
	addq	(%rdi,%rcx,8), %rax
	cmpl	%edx, %esi
	jbe	.L1
	movslq	%edx, %rdx
	addq	(%rdi,%rdx,8), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	ret
.L8:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	_Z11readFromRAMPmj, .-_Z11readFromRAMPmj
	.p2align 4
	.globl	_Z24readFromRAMMultipleTimesPmjj
	.type	_Z24readFromRAMMultipleTimesPmjj, @function
_Z24readFromRAMMultipleTimesPmjj:
.LFB1:
	.cfi_startproc
	endbr64
	testl	%edx, %edx
	je	.L19
	movl	%esi, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	leal	-1(%rsi), %r11d
	shrl	%ecx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	andl	$-2, %ebp
	xorl	%r9d, %r9d
	salq	$4, %rcx
	xorl	%r8d, %r8d
	addq	%rdi, %rcx
	.p2align 4,,10
	.p2align 3
.L18:
	testl	%esi, %esi
	je	.L13
	cmpl	$2, %r11d
	jbe	.L20
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L16:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	paddq	%xmm2, %xmm0
	cmpq	%rcx, %rax
	jne	.L16
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	addq	%rax, %r8
	movl	%ebp, %eax
	cmpl	%ebp, %esi
	je	.L13
.L14:
	movslq	%eax, %r10
	leaq	0(,%r10,8), %rbx
	addq	(%rdi,%r10,8), %r8
	leal	1(%rax), %r10d
	cmpl	%esi, %r10d
	jnb	.L13
	addl	$2, %eax
	addq	8(%rdi,%rbx), %r8
	cmpl	%eax, %esi
	jbe	.L13
	addq	16(%rdi,%rbx), %r8
.L13:
	addl	$1, %r9d
	cmpl	%r9d, %edx
	jne	.L18
	movq	%r8, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L14
.L19:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE1:
	.size	_Z24readFromRAMMultipleTimesPmjj, .-_Z24readFromRAMMultipleTimesPmjj
	.p2align 4
	.globl	_Z12readFromRAM2Pmj
	.type	_Z12readFromRAM2Pmj, @function
_Z12readFromRAM2Pmj:
.LFB4:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L35
	leal	-1(%rsi), %eax
	cmpl	$2, %eax
	jbe	.L36
	movl	%esi, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	%edx
	subl	$1, %edx
	salq	$4, %rdx
	leaq	16(%rdi,%rdx), %rdx
	.p2align 4,,10
	.p2align 3
.L33:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	paddq	%xmm2, %xmm0
	cmpq	%rdx, %rax
	jne	.L33
	movdqa	%xmm0, %xmm1
	movl	%esi, %edx
	psrldq	$8, %xmm1
	andl	$-2, %edx
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	testb	$1, %sil
	je	.L37
.L31:
	movslq	%edx, %rcx
	addq	(%rdi,%rcx,8), %rax
	leal	1(%rdx), %ecx
	cmpl	%ecx, %esi
	jbe	.L29
	movslq	%ecx, %rcx
	addl	$2, %edx
	addq	(%rdi,%rcx,8), %rax
	cmpl	%edx, %esi
	jbe	.L29
	movslq	%edx, %rdx
	addq	(%rdi,%rdx,8), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	xorl	%eax, %eax
.L29:
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	ret
.L36:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L31
	.cfi_endproc
.LFE4:
	.size	_Z12readFromRAM2Pmj, .-_Z12readFromRAM2Pmj
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
