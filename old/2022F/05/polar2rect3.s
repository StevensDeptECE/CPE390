_Z11polar2rect3dd:
	subq	$64, %rsp
	movupd  %xmm0, 24(%rsp) // save current value of xmm0 on stack
	fsincos %xmm1
	movapd  24(%rsp), %xmm2
	
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
	ret
