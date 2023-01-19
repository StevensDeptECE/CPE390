	leaq	(%rcx,%rdx), %rax
	leaq	(%rcx,%rdx,4), %rax    # rax = rcx + (rdx << 2)
	leaq	(%rcx,%rdx,8), %rax    # rax = rcx + (rdx << 3)

	#  99 * 99 
	imulq   %rcx, %rax             #rax = rax * rcx

	// x = x * 5 (%rcx = x)
	imulq   $5, %rcx               # rcx = rcx * 5
	leaq    (%rcx, %rcx, 4), %rcx  #rcx = rcx + rcx*4

	#   x << 3
	shlq   $3, %rcx


	#   x * 16   g++ -O2 (optimizer)
	shlq  $4, %rcx

        #   x / 16   g++ -O2 (optimizer)
	shrq  $4, %rcx


	# x mod 64     x % 64
	# 101011100
	# 101011101
	# 101011110
	# 101011111
	# 101100000

	# how to mask out the last n bits
	and  $0x3F, %rcx
	ret
	
	# count from 0 to 9
f:
	xor  %rax, %rax
	#  this is slower way to zero rax: mov $0, %rax
.L56:	
	addq $1, %rax
	cmpq $10, %rax
	jl   .L56
	ret

g:
	mov $10, %rax
.L57:	
	subq $1, %rax
#	cmpq $0, %rax   #does it work without compare? automatic compare against zero?
	jb   .L57
	ret

#	addq	(%rcx), %rax  # load from memory location %rcx into rax

	
