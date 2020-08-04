	.file	"addvec.cc"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%lf %lf %lf %lf\n"
	.text
	.p2align 4
	.globl	_Z5printDv4_d
	.type	_Z5printDv4_d, @function
_Z5printDv4_d:
.LFB5323:
	.cfi_startproc
	endbr64
	vextractf128	$0x1, %ymm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm1
	movl	$1, %edi
	movl	$4, %eax
	vunpckhpd	%xmm2, %xmm2, %xmm3
	leaq	.LC0(%rip), %rsi
	vzeroupper
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE5323:
	.size	_Z5printDv4_d, .-_Z5printDv4_d
	.section	.rodata.str1.1
.LC6:
	.string	"Elapsed %ld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5324:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx
	subq	$160, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	call	clock@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	vmovapd	.LC1(%rip), %ymm9
	vmovapd	.LC2(%rip), %ymm8
	vmovapd	.LC3(%rip), %ymm3
	movq	%rax, %rbx
	vmovapd	%ymm4, %ymm5
	movl	$1000000000, %eax
	vmovapd	.LC4(%rip), %ymm2
	vmovapd	%ymm4, %ymm6
	vmovapd	%ymm4, %ymm7
	vmovapd	%ymm4, %ymm0
	vmovapd	.LC5(%rip), %ymm1
	.p2align 4,,10
	.p2align 3
.L4:
	vaddpd	%ymm9, %ymm0, %ymm0
	vaddpd	%ymm8, %ymm7, %ymm7
	vaddpd	%ymm3, %ymm6, %ymm6
	vaddpd	%ymm2, %ymm5, %ymm5
	vaddpd	%ymm1, %ymm4, %ymm4
	subl	$1, %eax
	jne	.L4
	vmovapd	%ymm4, -176(%rbp)
	vmovapd	%ymm5, -144(%rbp)
	vmovapd	%ymm6, -112(%rbp)
	vmovapd	%ymm7, -80(%rbp)
	vmovapd	%ymm0, -48(%rbp)
	vzeroupper
	call	clock@PLT
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	subq	%rbx, %rax
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	vmovapd	-48(%rbp), %ymm0
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	movl	$4, %eax
	vextractf128	$0x1, %ymm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vzeroupper
	call	__printf_chk@PLT
	vmovapd	-80(%rbp), %ymm7
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$4, %eax
	vextractf128	$0x1, %ymm7, %xmm2
	vmovapd	%xmm7, %xmm0
	vunpckhpd	%xmm7, %xmm7, %xmm1
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vzeroupper
	call	__printf_chk@PLT
	vmovapd	-112(%rbp), %ymm6
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$4, %eax
	vextractf128	$0x1, %ymm6, %xmm2
	vmovapd	%xmm6, %xmm0
	vunpckhpd	%xmm6, %xmm6, %xmm1
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vzeroupper
	call	__printf_chk@PLT
	vmovapd	-144(%rbp), %ymm5
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$4, %eax
	vextractf128	$0x1, %ymm5, %xmm2
	vmovapd	%xmm5, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm1
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vzeroupper
	call	__printf_chk@PLT
	vmovapd	-176(%rbp), %ymm4
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$4, %eax
	vextractf128	$0x1, %ymm4, %xmm2
	vmovapd	%xmm4, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm1
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vzeroupper
	call	__printf_chk@PLT
	addq	$160, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5324:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	0
	.long	1074790400
	.long	0
	.long	1075052544
	.long	0
	.long	1076494336
	.long	0
	.long	1075314688
	.align 32
.LC2:
	.long	0
	.long	1075970048
	.long	0
	.long	1074266112
	.long	0
	.long	1075314688
	.long	0
	.long	1075576832
	.align 32
.LC3:
	.long	0
	.long	1075838976
	.long	0
	.long	1074003968
	.long	2576980378
	.long	1073322393
	.long	1717986918
	.long	1072064102
	.align 32
.LC4:
	.long	1717986918
	.long	1076258406
	.long	3435973837
	.long	-1073689396
	.long	1717986918
	.long	1075996262
	.long	3435973837
	.long	1073007820
	.align 32
.LC5:
	.long	0
	.long	-1071644672
	.long	2576980378
	.long	1072798105
	.long	1717986918
	.long	-1073060250
	.long	1717986918
	.long	1072064102
	.ident	"GCC: (Ubuntu 9.2.1-9ubuntu2) 9.2.1 20191008"
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
