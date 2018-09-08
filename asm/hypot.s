	.file	"hypot.cc"
	.text
	.p2align 4,,15
	.globl	hypot
	.def	hypot;	.scl	2;	.type	32;	.endef
	.seh_proc	hypot
hypot:
.LFB246:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	sqrtsd	%xmm0, %xmm6
	jbe	.L1
	call	sqrt
.L1:
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	sqrt;	.scl	2;	.type	32;	.endef
