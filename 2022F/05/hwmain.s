	.globl main
main:
	mov	$6, %rcx
	mov	$7, %rdx
#	call    f    
	// when you get here, rax should be (rcx + rdx)/2
	// remember, the div instruction on intel is complicated and slow
	// use logical shift to achieve the division for speed

	mov     $F2C729E1D6BA8365, %rcx
	
	ret