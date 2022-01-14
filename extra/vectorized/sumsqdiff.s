	.file	"sumsqdiff.cc"
	.text
	.p2align 4
	.globl	_Z15hsum_double_avxDv4_d
	.type	_Z15hsum_double_avxDv4_d, @function
_Z15hsum_double_avxDv4_d:
.LFB6977:
	.cfi_startproc
	endbr64
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE6977:
	.size	_Z15hsum_double_avxDv4_d, .-_Z15hsum_double_avxDv4_d
	.p2align 4
	.globl	_Z11computeMeanPKdm
	.type	_Z11computeMeanPKdm, @function
_Z11computeMeanPKdm:
.LFB6978:
	.cfi_startproc
	endbr64
	vxorpd	%xmm0, %xmm0, %xmm0
	testq	%rsi, %rsi
	je	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	vaddpd	(%rdi), %ymm0, %ymm0
	addq	$32, %rdi
	subq	$4, %rsi
	jne	.L5
.L4:
	vmovapd	%xmm0, %xmm1
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vdivsd	.LC0(%rip), %xmm0, %xmm0
	vzeroupper
	ret
	.cfi_endproc
.LFE6978:
	.size	_Z11computeMeanPKdm, .-_Z11computeMeanPKdm
	.p2align 4
	.globl	_Z9sumSqDiffPKdm
	.type	_Z9sumSqDiffPKdm, @function
_Z9sumSqDiffPKdm:
.LFB6979:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L9
	movq	%rsi, %rdx
	movq	%rdi, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L11:
	vaddpd	(%rax), %ymm0, %ymm0
	addq	$32, %rax
	subq	$4, %rdx
	jne	.L11
	vmovapd	%xmm0, %xmm1
	vextractf128	$0x1, %ymm0, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vdivsd	.LC0(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, 16(%rsp)
	vbroadcastsd	%xmm1, %ymm1
	.p2align 4,,10
	.p2align 3
.L12:
	vmovapd	(%rdi), %ymm3
	addq	$32, %rdi
	vsubpd	%ymm1, %ymm3, %ymm0
	vmulpd	%ymm0, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm2
	subq	$4, %rsi
	jne	.L12
.L13:
	vmovapd	%xmm2, %xmm0
	vextractf128	$0x1, %ymm2, %xmm2
	vaddpd	%xmm2, %xmm0, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	vmovsd	%xmm2, %xmm2, %xmm0
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L18
	vzeroupper
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsp)
	jmp	.L13
.L18:
	vzeroupper
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6979:
	.size	_Z9sumSqDiffPKdm, .-_Z9sumSqDiffPKdm
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z15hsum_double_avxDv4_d, @function
_GLOBAL__sub_I__Z15hsum_double_avxDv4_d:
.LFB7472:
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
.LFE7472:
	.size	_GLOBAL__sub_I__Z15hsum_double_avxDv4_d, .-_GLOBAL__sub_I__Z15hsum_double_avxDv4_d
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15hsum_double_avxDv4_d
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	0
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
