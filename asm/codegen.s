	.file	"codegen.c"
	.text
	.p2align 4,,15
	.globl	f
	.def	f;	.scl	2;	.type	32;	.endef
	.seh_proc	f
f:
	.seh_endprologue
	movl	$14, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	sum
	.def	sum;	.scl	2;	.type	32;	.endef
	.seh_proc	sum
sum:
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L5
	addl	$1, %ecx
	movl	$1, %edx
	xorl	%eax, %eax
	.p2align 4,,10
.L4:
	addl	%edx, %eax
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L4
	rep ret
.L5:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	max
	.def	max;	.scl	2;	.type	32;	.endef
	.seh_proc	max
max:
	.seh_endprologue
	maxsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	sumlist
	.def	sumlist;	.scl	2;	.type	32;	.endef
	.seh_proc	sumlist
sumlist:
	.seh_endprologue
	testl	%edx, %edx
	jle	.L14
	leal	-1(%rdx), %eax
	leaq	4(%rcx,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
.L13:
	addl	(%rcx), %eax
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	jne	.L13
	rep ret
.L14:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	covariance
	.def	covariance;	.scl	2;	.type	32;	.endef
	.seh_proc	covariance
covariance:
	.seh_endprologue
	testl	%r8d, %r8d
	jle	.L19
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	.p2align 4,,10
.L18:
	addsd	(%rcx,%rax,8), %xmm1
	addsd	(%rdx,%rax,8), %xmm2
	addq	$1, %rax
	cmpl	%eax, %r8d
	jg	.L18
	mulsd	%xmm2, %xmm1
.L17:
	pxor	%xmm2, %xmm2
	cvtsi2sd	%r8d, %xmm2
	imull	%r8d, %r8d
	divsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sd	%r8d, %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	ret
.L19:
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	jmp	.L17
	.seh_endproc
	.p2align 4,,15
	.globl	h
	.def	h;	.scl	2;	.type	32;	.endef
	.seh_proc	h
h:
	.seh_endprologue
	leal	(%rcx,%rdx), %eax
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "%lf\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	call	__main
	leaq	.LC1(%rip), %rcx
	movl	$55, %edx
	call	printf
	leaq	.LC1(%rip), %rcx
	movl	$20, %edx
	call	printf
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movapd	%xmm6, %xmm1
	movq	%xmm6, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	movapd	%xmm6, %xmm0
	leaq	.LC2(%rip), %rcx
	maxsd	%xmm6, %xmm0
	movq	%xmm0, %rdx
	movapd	%xmm0, %xmm1
	call	printf
	cvttsd2si	%xmm6, %edx
	leaq	.LC2(%rip), %rcx
	addl	%edx, %edx
	call	printf
	nop
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
