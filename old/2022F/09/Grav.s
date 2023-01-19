	.file	"Grav.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3140:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z9gravForced5vec3ddS_
	.def	_Z9gravForced5vec3ddS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9gravForced5vec3ddS_
_Z9gravForced5vec3ddS_:
.LFB2464:
	subq	$88, %rsp
	.seh_stackalloc	88
	movups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movups	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	mulsd	.LC0(%rip), %xmm0
	movsd	(%r9), %xmm6
	movsd	8(%r9), %xmm1
	subsd	(%rdx), %xmm6
	subsd	8(%rdx), %xmm1
	mulsd	%xmm6, %xmm6
	mulsd	%xmm0, %xmm2
	movsd	16(%r9), %xmm0
	subsd	16(%rdx), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm6
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	ucomisd	%xmm6, %xmm0
	ja	.L8
	sqrtsd	%xmm6, %xmm6
	movapd	%xmm6, %xmm7
.L6:
	mulsd	%xmm7, %xmm6
	movups	64(%rsp), %xmm7
	divsd	%xmm6, %xmm2
	movups	48(%rsp), %xmm6
	movapd	%xmm2, %xmm0
	addq	$88, %rsp
	ret
.L8:
	movapd	%xmm6, %xmm0
	movsd	%xmm2, 40(%rsp)
	call	sqrt
	movapd	%xmm0, %xmm7
	movapd	%xmm6, %xmm0
	call	sqrt
	movsd	40(%rsp), %xmm2
	movapd	%xmm0, %xmm6
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	_Z5acceld5vec3ddS_
	.def	_Z5acceld5vec3ddS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5acceld5vec3ddS_
_Z5acceld5vec3ddS_:
.LFB2465:
	subq	$120, %rsp
	.seh_stackalloc	120
	movups	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
	movdqu	(%rdx), %xmm1
	movups	%xmm1, 64(%rsp)
	movq	16(%rdx), %rax
	leaq	64(%rsp), %rdx
	movapd	%xmm0, %xmm6
	movq	%rax, 80(%rsp)
	movdqu	(%r9), %xmm3
	movups	%xmm3, 32(%rsp)
	movq	16(%r9), %rax
	leaq	32(%rsp), %r9
	movq	%rax, 48(%rsp)
	call	_Z9gravForced5vec3ddS_
	divsd	%xmm6, %xmm0
	movups	96(%rsp), %xmm6
	addq	$120, %rsp
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z9gravForced5vec3ddS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z9gravForced5vec3ddS_
_GLOBAL__sub_I__Z9gravForced5vec3ddS_:
.LFB3141:
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
	.quad	_GLOBAL__sub_I__Z9gravForced5vec3ddS_
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	1634589169
	.long	1037194648
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
