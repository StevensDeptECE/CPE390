	.file	"hw5setup.cc"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2215:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK5Vec3d5magSqEv
	.def	_ZNK5Vec3d5magSqEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Vec3d5magSqEv
_ZNK5Vec3d5magSqEv:
.LFB1773:
	.seh_endprologue
	movsd	(%rcx), %xmm1
	movsd	8(%rcx), %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	movsd	16(%rcx), %xmm2
	mulsd	%xmm2, %xmm2
	addsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK5Vec3d3magEv
	.def	_ZNK5Vec3d3magEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK5Vec3d3magEv
_ZNK5Vec3d3magEv:
.LFB1774:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movsd	(%rcx), %xmm1
	movsd	8(%rcx), %xmm2
	mulsd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm2
	movsd	16(%rcx), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	sqrtsd	%xmm0, %xmm6
	jbe	.L3
	call	sqrt
.L3:
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZNK5Vec3d5magSqEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZNK5Vec3d5magSqEv
_GLOBAL__sub_I__ZNK5Vec3d5magSqEv:
.LFB2216:
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
	.quad	_GLOBAL__sub_I__ZNK5Vec3d5magSqEv
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
