	.file	"dotproduct.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB6844:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE6844:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.globl	_Z23benchmarkSlowDotProductPKdS0_ii
	.type	_Z23benchmarkSlowDotProductPKdS0_ii, @function
_Z23benchmarkSlowDotProductPKdS0_ii:
.LFB7089:
	.cfi_startproc
	endbr64
	testl	%ecx, %ecx
	jle	.L8
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%r10d, %r10d
	leal	-1(%rdx), %r9d
	vmovapd	%xmm3, %xmm2
	.p2align 4,,10
	.p2align 3
.L7:
	testl	%edx, %edx
	jle	.L9
	xorl	%eax, %eax
	vmovapd	%xmm3, %xmm1
	.p2align 4,,10
	.p2align 3
.L6:
	vmovsd	(%rdi,%rax,8), %xmm0
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	%rax, %r8
	addq	$1, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	cmpq	%r8, %r9
	jne	.L6
	addl	$1, %r10d
	vaddsd	%xmm1, %xmm2, %xmm2
	cmpl	%r10d, %ecx
	jne	.L7
.L3:
	vmovapd	%xmm2, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	vmovapd	%xmm3, %xmm1
	addl	$1, %r10d
	vaddsd	%xmm1, %xmm2, %xmm2
	cmpl	%r10d, %ecx
	jne	.L7
	jmp	.L3
.L8:
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE7089:
	.size	_Z23benchmarkSlowDotProductPKdS0_ii, .-_Z23benchmarkSlowDotProductPKdS0_ii
	.p2align 4
	.globl	_Z22benchmarkAVXDotProductPKdS0_ii
	.type	_Z22benchmarkAVXDotProductPKdS0_ii, @function
_Z22benchmarkAVXDotProductPKdS0_ii:
.LFB7591:
	.cfi_startproc
	endbr64
	jmp	_Z23benchmarkSlowDotProductPKdS0_ii
	.cfi_endproc
.LFE7591:
	.size	_Z22benchmarkAVXDotProductPKdS0_ii, .-_Z22benchmarkAVXDotProductPKdS0_ii
	.p2align 4
	.globl	_Z16slow_dot_productPKdS0_i
	.type	_Z16slow_dot_productPKdS0_i, @function
_Z16slow_dot_productPKdS0_i:
.LFB7087:
	.cfi_startproc
	endbr64
	testl	%edx, %edx
	jle	.L16
	leal	-1(%rdx), %ecx
	xorl	%eax, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L15:
	vmovsd	(%rdi,%rax,8), %xmm0
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	%rax, %rdx
	addq	$1, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	cmpq	%rdx, %rcx
	jne	.L15
	vmovapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE7087:
	.size	_Z16slow_dot_productPKdS0_i, .-_Z16slow_dot_productPKdS0_i
	.p2align 4
	.globl	_Z11dot_productPKdS0_i
	.type	_Z11dot_productPKdS0_i, @function
_Z11dot_productPKdS0_i:
.LFB7088:
	.cfi_startproc
	endbr64
	testl	%edx, %edx
	jle	.L21
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L20:
	vmovapd	(%rdi,%rax,8), %ymm2
	vmulpd	(%rsi,%rax,8), %ymm2, %ymm1
	addq	$4, %rax
	vaddpd	%ymm1, %ymm0, %ymm0
	cmpl	%eax, %edx
	jg	.L20
.L19:
	vhaddpd	%ymm0, %ymm0, %ymm0
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L19
	.cfi_endproc
.LFE7088:
	.size	_Z11dot_productPKdS0_i, .-_Z11dot_productPKdS0_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Passed"
.LC2:
	.string	"Failed"
	.text
	.p2align 4
	.globl	_Z12equalityTestdd
	.type	_Z12equalityTestdd, @function
_Z12equalityTestdd:
.LFB7091:
	.cfi_startproc
	endbr64
	vucomisd	%xmm1, %xmm0
	jp	.L27
	jne	.L27
	leaq	.LC1(%rip), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	leaq	.LC2(%rip), %rax
	ret
	.cfi_endproc
.LFE7091:
	.size	_Z12equalityTestdd, .-_Z12equalityTestdd
	.section	.rodata._Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii.str1.1,"aMS",@progbits,1
.LC3:
	.string	"\t"
	.section	.text._Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii,"axG",@progbits,_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii,comdat
	.p2align 4
	.weak	_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii
	.type	_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii, @function
_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii:
.LFB7333:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r9d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 16(%rsp)
	call	clock@PLT
	movq	%rax, 24(%rsp)
	testl	%r14d, %r14d
	jle	.L37
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%r15d, %r15d
	vmovsd	%xmm3, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L31:
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*%rbx
	vaddsd	8(%rsp), %xmm0, %xmm1
	addl	$1, %r15d
	vmovsd	%xmm1, 8(%rsp)
	cmpl	%r15d, %r14d
	jne	.L31
.L30:
	call	clock@PLT
	cmpq	$0, 16(%rsp)
	movq	%rax, %rbx
	je	.L41
	movq	16(%rsp), %r15
	movq	%r15, %rdi
	call	strlen@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L33:
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	24(%rsp), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdq	%rbx, %xmm0, %xmm0
	vmulsd	.LC4(%rip), %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r12
	testq	%r12, %r12
	je	.L42
	cmpb	$0, 56(%r12)
	je	.L35
	movsbl	67(%r12), %esi
.L36:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L36
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L41:
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L37:
	vxorpd	%xmm4, %xmm4, %xmm4
	vmovsd	%xmm4, 8(%rsp)
	jmp	.L30
.L42:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE7333:
	.size	_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii, .-_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii
	.section	.rodata.str1.1
.LC6:
	.string	"benchmarkSlowDotProduct"
.LC7:
	.string	"benchmarkAVXDotProduct"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB7093:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	-131072(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$72, %rsp
	vmovsd	.LC5(%rip), %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-65616(%rbp), %r13
	leaq	-131152(%rbp), %r12
	.p2align 4,,10
	.p2align 3
.L44:
	vcvtsi2sdl	%eax, %xmm2, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vmovsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	$8192, %rax
	jne	.L44
	xorl	%eax, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L45:
	vmovapd	(%r12,%rax), %ymm3
	vmulpd	0(%r13,%rax), %ymm3, %ymm0
	addq	$32, %rax
	vaddpd	%ymm0, %ymm1, %ymm1
	cmpq	$65536, %rax
	jne	.L45
	vhaddpd	%ymm1, %ymm1, %ymm1
	xorl	%eax, %eax
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm1
	vmovapd	%xmm1, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L46:
	vmovsd	(%r12,%rax), %xmm0
	vmulsd	0(%r13,%rax), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	cmpq	$65536, %rax
	jne	.L46
	vmovapd	%xmm2, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	vmovsd	%xmm1, -131176(%rbp)
	vmovsd	%xmm2, -131184(%rbp)
	vzeroupper
	leaq	-131153(%rbp), %r15
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r15, %rsi
	movb	$9, -131153(%rbp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-131176(%rbp), %xmm1
	movq	%rax, %rdi
	vmovapd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-131176(%rbp), %xmm1
	vmovsd	-131184(%rbp), %xmm2
	vucomisd	%xmm1, %xmm2
	jp	.L51
	leaq	.LC1(%rip), %rsi
	jne	.L51
.L47:
	movq	%r14, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$1, %edx
	movq	%r15, %rsi
	movb	$10, -131153(%rbp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1000, %r9d
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$8192, %r8d
	leaq	_Z23benchmarkSlowDotProductPKdS0_ii(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii
	movl	$1000, %r9d
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$8192, %r8d
	leaq	_Z22benchmarkAVXDotProductPKdS0_ii(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	_Z5benchIPFdPKdS1_iiEEvPKcT_PdS7_ii
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L56
	addq	$131144, %rsp
	xorl	%eax, %eax
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L51:
	.cfi_restore_state
	leaq	.LC2(%rip), %rsi
	jmp	.L47
.L56:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE7093:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z16slow_dot_productPKdS0_i, @function
_GLOBAL__sub_I__Z16slow_dot_productPKdS0_i:
.LFB7586:
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
.LFE7586:
	.size	_GLOBAL__sub_I__Z16slow_dot_productPKdS0_i, .-_GLOBAL__sub_I__Z16slow_dot_productPKdS0_i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z16slow_dot_productPKdS0_i
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	2696277389
	.long	1051772663
	.align 8
.LC5:
	.long	1719614413
	.long	1079419038
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
