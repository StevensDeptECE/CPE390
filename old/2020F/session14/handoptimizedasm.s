	.globl	_Z5hypotdd
	# %xmm0 = x, %xmm1 = y
_Z5hypotdd:
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	ret
