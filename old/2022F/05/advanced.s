	.file	"advanced.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3528:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z3f1ad
	.def	_Z3f1ad;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1ad
_Z3f1ad:
.LFB2758:
	.seh_endprologue
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1bdd
	.def	_Z3f1bdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1bdd
_Z3f1bdd:
.LFB2759:
	.seh_endprologue
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1cddd
	.def	_Z3f1cddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1cddd
_Z3f1cddd:
.LFB2760:
	.seh_endprologue
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.L13
	sqrtsd	%xmm0, %xmm0
	ret
.L13:
	jmp	sqrt
	.seh_endproc
	.p2align 4
	.globl	_Z3f1ddddd
	.def	_Z3f1ddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1ddddd
_Z3f1ddddd:
.LFB2761:
	.seh_endprologue
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm3
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.L22
	sqrtsd	%xmm0, %xmm0
	ret
.L22:
	jmp	sqrt
	.seh_endproc
	.p2align 4
	.globl	_Z3f1eddddd
	.def	_Z3f1eddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1eddddd
_Z3f1eddddd:
.LFB2762:
	.seh_endprologue
	addsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	addsd	40(%rsp), %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z5statsPKiiRdRiS2_
	.def	_Z5statsPKiiRdRiS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5statsPKiiRdRiS2_
_Z5statsPKiiRdRiS2_:
.LFB2763:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movl	(%rcx), %eax
	movq	40(%rsp), %r11
	cvtsi2sdl	%eax, %xmm0
	movl	%eax, (%r9)
	movl	%eax, (%r11)
	cmpl	$1, %edx
	jle	.L25
	leal	-2(%rdx), %eax
	leaq	4(%rcx), %r10
	leaq	8(%rcx,%rax,4), %rcx
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L30:
	movl	%eax, (%r9)
.L27:
	addq	$4, %r10
	cmpq	%rcx, %r10
	je	.L25
.L28:
	movl	(%r10), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm1, %xmm0
	cmpl	(%r9), %eax
	jl	.L30
	cmpl	(%r11), %eax
	jle	.L27
	addq	$4, %r10
	movl	%eax, (%r11)
	cmpq	%rcx, %r10
	jne	.L28
.L25:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%r8)
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10sumCosinesi
	.def	_Z10sumCosinesi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10sumCosinesi
_Z10sumCosinesi:
.LFB2764:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm7
	cvtsi2sdl	%ecx, %xmm0
	movl	%ecx, %esi
	divsd	%xmm0, %xmm7
	testl	%ecx, %ecx
	jle	.L34
	xorl	%ebx, %ebx
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L33:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	addl	$1, %ebx
	mulsd	%xmm7, %xmm0
	call	cos
	addsd	%xmm0, %xmm6
	cmpl	%ebx, %esi
	jne	.L33
.L31:
	movapd	%xmm6, %xmm0
	movups	48(%rsp), %xmm7
	movups	32(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	pxor	%xmm6, %xmm6
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	_Z10polar2rectddRdS_
	.def	_Z10polar2rectddRdS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10polar2rectddRdS_
_Z10polar2rectddRdS_:
.LFB2765:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movapd	%xmm0, %xmm6
	movq	%r8, %rsi
	movapd	%xmm1, %xmm0
	movq	%r9, %rbx
	leaq	40(%rsp), %rdx
	leaq	32(%rsp), %r8
	call	sincos
	movsd	32(%rsp), %xmm0
	mulsd	%xmm6, %xmm0
	movsd	%xmm0, (%rsi)
	mulsd	40(%rsp), %xmm6
	movsd	%xmm6, (%rbx)
	movups	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z11polar2rect2dd
	.def	_Z11polar2rect2dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11polar2rect2dd
_Z11polar2rect2dd:
.LFB2766:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm0
	leaq	40(%rsp), %rdx
	movq	%rcx, %rbx
	leaq	32(%rsp), %r8
	call	sincos
	movupd	32(%rsp), %xmm0
	movapd	%xmm6, %xmm1
	movq	%rbx, %rax
	unpcklpd	%xmm1, %xmm1
	mulpd	%xmm0, %xmm1
	movups	%xmm1, (%rbx)
	movups	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z3f1ad;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z3f1ad
_GLOBAL__sub_I__Z3f1ad:
.LFB3529:
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
	.quad	_GLOBAL__sub_I__Z3f1ad
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
