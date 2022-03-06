	.file	"passbyref.cpp"
	.text
	.p2align 4
	.globl	_Z5statsPKdiRdS1_S1_
	.type	_Z5statsPKdiRdS1_S1_, @function
_Z5statsPKdiRdS1_S1_:
.LFB1641:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	movq	%rdx, %rdi
	movsd	(%r9), %xmm1
	movsd	%xmm1, (%r8)
	cmpl	$1, %esi
	jle	.L6
	leal	-2(%rsi), %edx
	leaq	8(%r9), %rax
	movapd	%xmm1, %xmm2
	leaq	16(%r9,%rdx,8), %rdx
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L11:
	comisd	(%r8), %xmm0
	jbe	.L3
	movsd	%xmm0, (%r8)
.L3:
	addq	$8, %rax
	cmpq	%rdx, %rax
	je	.L2
.L5:
	movsd	(%rax), %xmm0
	comisd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	jbe	.L11
	addq	$8, %rax
	movapd	%xmm0, %xmm2
	cmpq	%rdx, %rax
	jne	.L5
.L2:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	movsd	%xmm2, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movapd	%xmm1, %xmm2
	jmp	.L2
	.cfi_endproc
.LFE1641:
	.size	_Z5statsPKdiRdS1_S1_, .-_Z5statsPKdiRdS1_S1_
	.p2align 4
	.globl	_Z6stats2PKdiPdS1_S1_
	.type	_Z6stats2PKdiPdS1_S1_, @function
_Z6stats2PKdiPdS1_S1_:
.LFB1642:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	movq	%rdx, %rdi
	movsd	(%r9), %xmm1
	cmpl	$1, %esi
	jle	.L17
	leal	-2(%rsi), %edx
	leaq	8(%r9), %rax
	movapd	%xmm1, %xmm3
	leaq	16(%r9,%rdx,8), %rdx
	movapd	%xmm1, %xmm2
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L21:
	maxsd	%xmm3, %xmm0
	addq	$8, %rax
	movapd	%xmm0, %xmm3
	cmpq	%rdx, %rax
	je	.L13
.L16:
	movsd	(%rax), %xmm0
	comisd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	jbe	.L21
	addq	$8, %rax
	movapd	%xmm0, %xmm2
	cmpq	%rdx, %rax
	jne	.L16
.L13:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	movsd	%xmm3, (%r8)
	movsd	%xmm2, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movapd	%xmm1, %xmm3
	movapd	%xmm1, %xmm2
	jmp	.L13
	.cfi_endproc
.LFE1642:
	.size	_Z6stats2PKdiPdS1_S1_, .-_Z6stats2PKdiPdS1_S1_
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1643:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movl	$5, %esi
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %r11
	leaq	32(%rsp), %r10
	movq	.LC0(%rip), %rax
	movq	%r11, %rdx
	leaq	24(%rsp), %r8
	leaq	16(%rsp), %rcx
	movq	%r10, %rdi
	movq	%rax, 32(%rsp)
	movq	.LC1(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	.LC2(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	.LC4(%rip), %rax
	movq	%rax, 64(%rsp)
	call	_Z5statsPKdiRdS1_S1_
	movq	%r11, %rdx
	movq	%r10, %rdi
	call	_Z6stats2PKdiPdS1_S1_
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L25
	xorl	%eax, %eax
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L25:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1643:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_, @function
_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_:
.LFB2136:
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
.LFE2136:
	.size	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_, .-_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5statsPKdiRdS1_S1_
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
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	0
	.long	1075970048
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0"
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
