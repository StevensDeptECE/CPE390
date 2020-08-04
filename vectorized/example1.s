	.file	"example1.cc"
	.text
	.section	.rodata
.LC9:
	.string	"%lf %lf %lf %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4015:
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
	subq	$680, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, -528(%rbp)
	vmovsd	.LC1(%rip), %xmm0
	vmovsd	%xmm0, -520(%rbp)
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, -512(%rbp)
	vmovsd	.LC3(%rip), %xmm0
	vmovsd	%xmm0, -504(%rbp)
	vmovsd	-504(%rbp), %xmm0
	vmovsd	%xmm0, -496(%rbp)
	vmovsd	-512(%rbp), %xmm0
	vmovsd	%xmm0, -488(%rbp)
	vmovsd	-520(%rbp), %xmm0
	vmovsd	%xmm0, -480(%rbp)
	vmovsd	-528(%rbp), %xmm0
	vmovsd	%xmm0, -472(%rbp)
	vmovsd	-496(%rbp), %xmm0
	vmovsd	-488(%rbp), %xmm1
	vunpcklpd	%xmm0, %xmm1, %xmm1
	vmovsd	-480(%rbp), %xmm0
	vmovsd	-472(%rbp), %xmm2
	vunpcklpd	%xmm0, %xmm2, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	nop
	vmovapd	%ymm0, -464(%rbp)
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, -592(%rbp)
	vmovsd	.LC5(%rip), %xmm0
	vmovsd	%xmm0, -584(%rbp)
	vmovsd	.LC3(%rip), %xmm0
	vmovsd	%xmm0, -576(%rbp)
	vmovsd	.LC6(%rip), %xmm0
	vmovsd	%xmm0, -568(%rbp)
	vmovsd	-568(%rbp), %xmm0
	vmovsd	%xmm0, -560(%rbp)
	vmovsd	-576(%rbp), %xmm0
	vmovsd	%xmm0, -552(%rbp)
	vmovsd	-584(%rbp), %xmm0
	vmovsd	%xmm0, -544(%rbp)
	vmovsd	-592(%rbp), %xmm0
	vmovsd	%xmm0, -536(%rbp)
	vmovsd	-560(%rbp), %xmm0
	vmovsd	-552(%rbp), %xmm1
	vunpcklpd	%xmm0, %xmm1, %xmm1
	vmovsd	-544(%rbp), %xmm0
	vmovsd	-536(%rbp), %xmm2
	vunpcklpd	%xmm0, %xmm2, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	nop
	vmovapd	%ymm0, -432(%rbp)
	vmovsd	.LC7(%rip), %xmm0
	vmovsd	%xmm0, -656(%rbp)
	vmovsd	.LC8(%rip), %xmm0
	vmovsd	%xmm0, -648(%rbp)
	vmovsd	.LC7(%rip), %xmm0
	vmovsd	%xmm0, -640(%rbp)
	vmovsd	.LC8(%rip), %xmm0
	vmovsd	%xmm0, -632(%rbp)
	vmovsd	-632(%rbp), %xmm0
	vmovsd	%xmm0, -624(%rbp)
	vmovsd	-640(%rbp), %xmm0
	vmovsd	%xmm0, -616(%rbp)
	vmovsd	-648(%rbp), %xmm0
	vmovsd	%xmm0, -608(%rbp)
	vmovsd	-656(%rbp), %xmm0
	vmovsd	%xmm0, -600(%rbp)
	vmovsd	-624(%rbp), %xmm0
	vmovsd	-616(%rbp), %xmm1
	vunpcklpd	%xmm0, %xmm1, %xmm1
	vmovsd	-608(%rbp), %xmm0
	vmovsd	-600(%rbp), %xmm2
	vunpcklpd	%xmm0, %xmm2, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	nop
	vmovapd	%ymm0, -400(%rbp)
	vmovapd	-464(%rbp), %ymm0
	vmovapd	%ymm0, -304(%rbp)
	vmovapd	-432(%rbp), %ymm0
	vmovapd	%ymm0, -272(%rbp)
	vmovapd	-304(%rbp), %ymm0
	vmulpd	-272(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, -368(%rbp)
	vpermpd	$177, -432(%rbp), %ymm0
	vmovapd	%ymm0, -432(%rbp)
	vmovapd	-432(%rbp), %ymm0
	vmovapd	%ymm0, -112(%rbp)
	vmovapd	-400(%rbp), %ymm0
	vmovapd	%ymm0, -80(%rbp)
	vmovapd	-112(%rbp), %ymm0
	vmulpd	-80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, -432(%rbp)
	vmovapd	-464(%rbp), %ymm0
	vmovapd	%ymm0, -176(%rbp)
	vmovapd	-432(%rbp), %ymm0
	vmovapd	%ymm0, -144(%rbp)
	vmovapd	-176(%rbp), %ymm0
	vmulpd	-144(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, -336(%rbp)
	vmovapd	-368(%rbp), %ymm0
	vmovapd	%ymm0, -240(%rbp)
	vmovapd	-336(%rbp), %ymm0
	vmovapd	%ymm0, -208(%rbp)
	vmovapd	-240(%rbp), %ymm0
	vhsubpd	-208(%rbp), %ymm0, %ymm0
	nop
	vmovapd	%ymm0, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	addq	$24, %rax
	vmovsd	(%rax), %xmm2
	movq	-664(%rbp), %rax
	addq	$16, %rax
	vmovsd	(%rax), %xmm1
	movq	-664(%rbp), %rax
	addq	$8, %rax
	vmovsd	(%rax), %xmm0
	movq	-664(%rbp), %rax
	movq	(%rax), %rax
	vmovapd	%xmm2, %xmm3
	vmovapd	%xmm1, %xmm2
	vmovapd	%xmm0, %xmm1
	vmovq	%rax, %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	addq	$680, %rsp
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4015:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.align 8
.LC1:
	.long	0
	.long	1075052544
	.align 8
.LC2:
	.long	0
	.long	1076494336
	.align 8
.LC3:
	.long	0
	.long	1075314688
	.align 8
.LC4:
	.long	0
	.long	1075970048
	.align 8
.LC5:
	.long	0
	.long	1074266112
	.align 8
.LC6:
	.long	0
	.long	1075576832
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	-1074790400
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
