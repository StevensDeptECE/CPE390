	.file	"07passingparams.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3591:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z10rect2polarddRdS_
	.def	_Z10rect2polarddRdS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10rect2polarddRdS_
_Z10rect2polarddRdS_:
.LFB2901:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movapd	%xmm0, %xmm7
	movapd	%xmm1, %xmm6
	movq	%r9, %rbx
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L8
	sqrtsd	%xmm0, %xmm0
.L6:
	movsd	%xmm0, (%r8)
	movapd	%xmm7, %xmm1
	movapd	%xmm6, %xmm0
	call	atan2
	movsd	%xmm0, (%rbx)
	movups	32(%rsp), %xmm6
	movups	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	ret
.L8:
	movq	%r8, 96(%rsp)
	call	sqrt
	movq	96(%rsp), %r8
	jmp	.L6
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2902:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	movl	$3, %edx
	movl	$2, %ecx
	call	_Z1fii
	movl	$6, %edx
	movl	$5, %ecx
	call	_Z1gyy
	movl	$4, %r9d
	movl	$3, %r8d
	movq	$5, 32(%rsp)
	movl	$2, %edx
	movl	$1, %ecx
	call	_Z1hyyyyy
	xorl	%eax, %eax
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I__Z10rect2polarddRdS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z10rect2polarddRdS_
_GLOBAL__sub_I__Z10rect2polarddRdS_:
.LFB3592:
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
	.quad	_GLOBAL__sub_I__Z10rect2polarddRdS_
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	atan2;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_Z1fii;	.scl	2;	.type	32;	.endef
	.def	_Z1gyy;	.scl	2;	.type	32;	.endef
	.def	_Z1hyyyyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
