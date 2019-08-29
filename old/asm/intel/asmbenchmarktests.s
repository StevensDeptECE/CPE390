	.globl	_Z7sum1Tonj
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
