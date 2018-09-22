	// In this file you have to write the assembler code to evaluate a polynomial
	// this requires us to  find out the name of the function
	.globl 	_Z8fastevalPi
_Z8fastevalPi:
	vpxor	%xmm2, %xmm0, %xmm0 ;# just zero out %xmm2
	movl	8(%rcx), %rdx
	movl	(%rcx), %eax	;# r12 has the degree of the polynomial
.L2:
	movq    %eax, %ecx	;# load ecx with the degree of the polynomial each iteration
	movsd	(%edx), %xmm0   ;# load the first coefficient into xmm0
.L1:	
	add	$8, %rdx        ;# point to second coefficient
	mulsd	%xmm1, %xmm0    ;# multiply by x
	addsd   (%rdx), %xmm0   ;# add each coefficient
	subl	$1, %ecx        ;# count down to zero
	jg	.L1             ;# keep doing it
	addsd   %xmm0, %xmm2    ;# add to total in %xmm2
	subl    $1, %edx
	jg .L2
	;# xmm0 has the answer
	ret

