	.globl _Z8checksumPKc	
_Z8checksumPKc:		;# PKc =pointer to const char	
	xorl	%eax, %eax
	jmp .L2
.L1:
	addq	$1, %rcx
.L2:
	movsbl	(%rcx), %edx
	addl	%edx, %eax
	testb	%dl, %dl
	jne	.L1
	ret
