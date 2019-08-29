	.file	"benchmark.cc"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2569:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12testAccuracyv
	.def	_Z12testAccuracyv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12testAccuracyv
_Z12testAccuracyv:
.LFB2105:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rbx
	movsd	.LC0(%rip), %xmm1
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	movq	-24(%rax), %rax
	movq	$15, 8(%rax,%rbx)
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	.LC1(%rip), %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 46(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12testcpphypoty
	.def	_Z12testcpphypoty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12testcpphypoty
_Z12testcpphypoty:
.LFB2106:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L6
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movsd	.LC0(%rip), %xmm1
	.p2align 4,,10
.L5:
	addq	$1, %rax
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rcx
	jne	.L5
	rep ret
.L6:
	pxor	%xmm0, %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z15testcpphypotopty
	.def	_Z15testcpphypotopty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15testcpphypotopty
_Z15testcpphypotopty:
.LFB2107:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	pxor	%xmm6, %xmm6
	testq	%rcx, %rcx
	movq	%rcx, %rsi
	je	.L9
	pxor	%xmm6, %xmm6
	xorl	%ebx, %ebx
	movsd	.LC3(%rip), %xmm8
	movsd	.LC4(%rip), %xmm7
	.p2align 4,,10
.L11:
	movapd	%xmm8, %xmm1
	movapd	%xmm7, %xmm0
	addq	$1, %rbx
	call	hypotopt
	cmpq	%rbx, %rsi
	addsd	%xmm0, %xmm6
	jne	.L11
.L9:
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12testasmhypoty
	.def	_Z12testasmhypoty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12testasmhypoty
_Z12testasmhypoty:
.LFB2108:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	pxor	%xmm6, %xmm6
	testq	%rcx, %rcx
	movq	%rcx, %rsi
	je	.L14
	pxor	%xmm6, %xmm6
	xorl	%ebx, %ebx
	movsd	.LC3(%rip), %xmm8
	movsd	.LC4(%rip), %xmm7
	.p2align 4,,10
.L16:
	movapd	%xmm8, %xmm1
	movapd	%xmm7, %xmm0
	addq	$1, %rbx
	call	asmhypot
	cmpq	%rbx, %rsi
	addsd	%xmm0, %xmm6
	jne	.L16
.L14:
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC5:
	.ascii "Usage: benchmark <testnum>\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2109:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	.seh_endprologue
	movl	%ecx, %esi
	movq	%rdx, %rbx
	call	__main
	cmpl	$1, %esi
	jle	.L35
	movq	8(%rbx), %rcx
	call	atoi
	cmpl	$2, %eax
	je	.L22
	cmpl	$3, %eax
	je	.L23
	subl	$1, %eax
	je	.L36
.L21:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L36:
	pxor	%xmm6, %xmm6
	movabsq	$5000000000, %rbx
	movsd	.LC3(%rip), %xmm8
	movsd	.LC4(%rip), %xmm7
	.p2align 4,,10
.L25:
	movapd	%xmm8, %xmm1
	movapd	%xmm7, %xmm0
	call	hypotopt
	subq	$1, %rbx
	addsd	%xmm0, %xmm6
	jne	.L25
	jmp	.L21
.L23:
	pxor	%xmm6, %xmm6
	movabsq	$5000000000, %rbx
	movsd	.LC3(%rip), %xmm8
	movsd	.LC4(%rip), %xmm7
	.p2align 4,,10
.L27:
	movapd	%xmm8, %xmm1
	movapd	%xmm7, %xmm0
	call	asmhypot
	subq	$1, %rbx
	addsd	%xmm0, %xmm6
	jne	.L27
	jmp	.L21
.L22:
	pxor	%xmm6, %xmm6
	movabsq	$5000000000, %rax
	movsd	.LC0(%rip), %xmm0
	.p2align 4,,10
.L26:
	subq	$1, %rax
	addsd	%xmm0, %xmm6
	jne	.L26
	jmp	.L21
.L35:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	orl	$-1, %ecx
	call	exit
	nop
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z12testAccuracyv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z12testAccuracyv
_GLOBAL__sub_I__Z12testAccuracyv:
.LFB2570:
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
	.quad	_GLOBAL__sub_I__Z12testAccuracyv
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1075052544
	.align 8
.LC1:
	.long	1719614413
	.long	1073127582
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	0
	.long	1074266112
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	hypotopt;	.scl	2;	.type	32;	.endef
	.def	asmhypot;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
