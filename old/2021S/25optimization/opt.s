	.file	"opt.cc"
	.text
	.p2align 4
	.globl	_Z2f1i
	.type	_Z2f1i, @function
_Z2f1i:
.LFB1819:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rdi,4), %eax
	ret
	.cfi_endproc
.LFE1819:
	.size	_Z2f1i, .-_Z2f1i
	.p2align 4
	.globl	_Z2f2i
	.type	_Z2f2i, @function
_Z2f2i:
.LFB1820:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	sall	$5, %eax
	ret
	.cfi_endproc
.LFE1820:
	.size	_Z2f2i, .-_Z2f2i
	.p2align 4
	.globl	_Z2f3i
	.type	_Z2f3i, @function
_Z2f3i:
.LFB1821:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	leal	31(%rdi), %eax
	cmovns	%edi, %eax
	sarl	$5, %eax
	ret
	.cfi_endproc
.LFE1821:
	.size	_Z2f3i, .-_Z2f3i
	.p2align 4
	.globl	_Z2f4j
	.type	_Z2f4j, @function
_Z2f4j:
.LFB1822:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	andl	$3, %eax
	ret
	.cfi_endproc
.LFE1822:
	.size	_Z2f4j, .-_Z2f4j
	.p2align 4
	.globl	_Z2f6i
	.type	_Z2f6i, @function
_Z2f6i:
.LFB1824:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rdi), %edx
	xorl	%eax, %eax // example 101 XOR 101 = 000
	cmpl	%edx, %edi
	jge	.L9
	.p2align 4,,10
	.p2align 3
.L8:
	addl	%edi, %eax
	addl	$3, %edi
	cmpl	%edx, %edi
	jl	.L8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	ret
	.cfi_endproc
.LFE1824:
	.size	_Z2f6i, .-_Z2f6i
	.p2align 4
	.globl	_Z4polyPdid
	.type	_Z4polyPdid, @function
_Z4polyPdid:
.LFB1825:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movsd	%xmm0, 24(%rsp)
	testl	%esi, %esi
	js	.L14
	movq	%rdi, %r12
	movslq	%esi, %rbp
	pxor	%xmm2, %xmm2
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L13:
	pxor	%xmm1, %xmm1
	movsd	(%r12,%rbx,8), %xmm3
	movsd	24(%rsp), %xmm0
	movsd	%xmm2, 16(%rsp)
	cvtsi2sdl	%ebx, %xmm1
	movsd	%xmm3, 8(%rsp)
	call	pow@PLT
	mulsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	movq	%rbx, %rax
	addq	$1, %rbx
	addsd	%xmm0, %xmm2
	cmpq	%rbp, %rax
	jne	.L13
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movapd	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	pxor	%xmm2, %xmm2
	popq	%rbx
	.cfi_def_cfa_offset 24
	movapd	%xmm2, %xmm0
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1825:
	.size	_Z4polyPdid, .-_Z4polyPdid
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1826:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$9, %esi
	leaq	_ZSt4cout(%rip), %rdi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rbp
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L20
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1826:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z2f1i, @function
_GLOBAL__sub_I__Z2f1i:
.LFB2309:
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
.LFE2309:
	.size	_GLOBAL__sub_I__Z2f1i, .-_GLOBAL__sub_I__Z2f1i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z2f1i
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
