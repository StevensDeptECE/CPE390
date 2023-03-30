	.file	"stackvars.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2394:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z1fyy
	.def	_Z1fyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z1fyy
_Z1fyy:
.LFB1869:
	subq	$88, %rsp
	.seh_stackalloc	88
	movups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movups	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	pxor	%xmm2, %xmm2
	pxor	%xmm6, %xmm6
	pxor	%xmm4, %xmm4
	movdqu	.LC0(%rip), %xmm0
	movdqu	.LC2(%rip), %xmm7
	movdqu	.LC3(%rip), %xmm5
	movups	%xmm0, (%rsp)
	movdqu	.LC1(%rip), %xmm0
	movq	%rsp, %rax
	leaq	32(%rsp), %rdx
	movups	%xmm0, 16(%rsp)
.L4:
	movdqu	(%rax), %xmm0
	movdqa	%xmm6, %xmm3
	addq	$16, %rax
	psraw	$1, %xmm0
	pand	%xmm7, %xmm0
	pxor	%xmm5, %xmm0
	psubb	%xmm5, %xmm0
	pcmpgtb	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm3, %xmm1
	punpckhbw	%xmm3, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtw	%xmm0, %xmm3
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm3, %xmm8
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtw	%xmm1, %xmm3
	paddd	%xmm8, %xmm0
	movdqa	%xmm1, %xmm8
	punpcklwd	%xmm3, %xmm8
	punpckhwd	%xmm3, %xmm1
	paddd	%xmm8, %xmm1
	paddd	%xmm1, %xmm0
	paddd	%xmm0, %xmm2
	cmpq	%rax, %rdx
	jne	.L4
	movdqa	%xmm2, %xmm0
	movups	32(%rsp), %xmm6
	movups	48(%rsp), %xmm7
	psrldq	$8, %xmm0
	movups	64(%rsp), %xmm8
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm2
	movd	%xmm2, %eax
	addl	$19, %eax
	addq	$88, %rsp
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z1fyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z1fyy
_GLOBAL__sub_I__Z1fyy:
.LFB2395:
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
	.quad	_GLOBAL__sub_I__Z1fyy
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 16
.LC0:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.align 16
.LC1:
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.align 16
.LC2:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.align 16
.LC3:
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
