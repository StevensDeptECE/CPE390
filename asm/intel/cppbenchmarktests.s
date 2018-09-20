	.file	"cppbenchmarktests.cc"
	.text
	.p2align 4,,15
	.globl	_Z7sum1Tonj
	.def	_Z7sum1Tonj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sum1Tonj
_Z7sum1Tonj:
.LFB1:
	.seh_endprologue
	testl	%ecx, %ecx
	je	.L4
	movl	$1, %edx
	xorl	%eax, %eax
	.p2align 4,,10
.L3:
	addq	%rdx, %rax
	addq	$1, %rdx
	cmpl	%edx, %ecx
	jnb	.L3
	rep ret
.L4:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z6sumDivj
	.def	_Z6sumDivj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6sumDivj
_Z6sumDivj:
.LFB2:
	.seh_endprologue
	testl	%ecx, %ecx
	je	.L10
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	$1, %r10d
	.p2align 4,,10
.L9:
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	addl	$1, %r8d
	cltq
	addq	%rax, %r9
	cmpl	%ecx, %r8d
	jbe	.L9
.L7:
	movq	%r9, %rax
	ret
.L10:
	xorl	%r9d, %r9d
	jmp	.L7
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
