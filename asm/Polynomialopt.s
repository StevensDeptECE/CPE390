	.file	"Polynomial.cc"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB1973:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK10Polynomial4evalEd
	.def	_ZNK10Polynomial4evalEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK10Polynomial4evalEd
_ZNK10Polynomial4evalEd:
.LFB1532:
	.seh_endprologue
	movq	8(%rcx), %rdx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	movsd	(%rdx), %xmm0
	jle	.L2
	subl	$1, %ecx
	leaq	8(%rdx), %rax
	leaq	16(%rdx,%rcx,8), %rdx
	.p2align 4,,10
.L4:
	mulsd	%xmm1, %xmm0
	addq	$8, %rax
	addsd	-8(%rax), %xmm0
	cmpq	%rdx, %rax
	jne	.L4
.L2:
	rep ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZNK10Polynomial4evalEd;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZNK10Polynomial4evalEd
_GLOBAL__sub_I__ZNK10Polynomial4evalEd:
.LFB1974:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZNK10Polynomial4evalEd
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
