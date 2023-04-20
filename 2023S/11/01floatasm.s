	.file	"01floatasm.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3155:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z2f1dd
	.def	_Z2f1dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f1dd
_Z2f1dd:
.LFB2470:
	.seh_endprologue
	addsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f2dd
	.def	_Z2f2dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f2dd
_Z2f2dd:
.LFB2471:
	.seh_endprologue
	subsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f3dd
	.def	_Z2f3dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f3dd
_Z2f3dd:
.LFB2472:
	.seh_endprologue
	mulsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f4dd
	.def	_Z2f4dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f4dd
_Z2f4dd:
.LFB2473:
	.seh_endprologue
	divsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f4bdd
	.def	_Z3f4bdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f4bdd
_Z3f4bdd:
.LFB2474:
	.seh_endprologue
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f4cd
	.def	_Z3f4cd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f4cd
_Z3f4cd:
.LFB2475:
	.seh_endprologue
	movapd	%xmm0, %xmm1
	movsd	.LC0(%rip), %xmm0
	divsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f5d
	.def	_Z2f5d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f5d
_Z2f5d:
.LFB2476:
	.seh_endprologue
	cvttsd2sil	%xmm0, %edx
	pxor	%xmm0, %xmm0
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	cvtsi2sdl	%eax, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f6d
	.def	_Z2f6d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f6d
_Z2f6d:
.LFB2477:
	.seh_endprologue
	xorpd	.LC1(%rip), %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f7y
	.def	_Z2f7y;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f7y
_Z2f7y:
.LFB2478:
	.seh_endprologue
	testq	%rcx, %rcx
	js	.L12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rcx, %rax
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f8ddddd
	.def	_Z2f8ddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f8ddddd
_Z2f8ddddd:
.LFB2479:
	.seh_endprologue
	addsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	addsd	40(%rsp), %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f9dd
	.def	_Z2f9dd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f9dd
_Z2f9dd:
.LFB2480:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	movups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movups	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movups	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	movups	%xmm9, 96(%rsp)
	.seh_savexmm	%xmm9, 96
	.seh_endprologue
	leaq	40(%rsp), %rbx
	leaq	32(%rsp), %rsi
	movapd	%xmm1, %xmm7
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movapd	%xmm0, %xmm6
	call	sincos
	movapd	%xmm7, %xmm0
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movsd	32(%rsp), %xmm9
	movsd	40(%rsp), %xmm8
	call	sincos
	movapd	%xmm6, %xmm2
	movapd	%xmm6, %xmm0
	addsd	%xmm7, %xmm2
	subsd	%xmm7, %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm6, %xmm2
	divsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm2
	movups	64(%rsp), %xmm7
	mulsd	40(%rsp), %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm9, %xmm0
	movups	96(%rsp), %xmm9
	mulsd	%xmm6, %xmm1
	movups	48(%rsp), %xmm6
	mulsd	%xmm8, %xmm1
	movups	80(%rsp), %xmm8
	mulsd	32(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z2f1dd;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z2f1dd
_GLOBAL__sub_I__Z2f1dd:
.LFB3156:
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
	.quad	_GLOBAL__sub_I__Z2f1dd
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
