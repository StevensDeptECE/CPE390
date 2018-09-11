	.globl	testasminline
testasminline:
	subq	$1, %rbx
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	testl	%rbx, %rbx	
	jg	testasminline
	
	ret
