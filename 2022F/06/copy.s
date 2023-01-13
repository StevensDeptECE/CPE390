	.globl copy
	# rcx points to src
	# rdx points to dest
	# rsi is the number of 64-bit ints to copy
copy:
	movq  (%rcx), %r9
	movq  %r9, (%rdx)
	add   $8, %rcx
	add   $8, %rdx
	subq  $1, %rsi
	cmpq  $0, %rsi
	jne   copy
	ret
