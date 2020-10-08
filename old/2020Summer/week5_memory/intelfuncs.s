  .globl _Z15readEntireArrayPKii
_Z15readEntireArrayPKii:
	.cfi_startproc
	endbr64
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rdx
.L6:
	movl	(%rdi), %eax   
                       
	addq	$4, %rdi       
	cmpq	%rdx, %rdi
	jne	.L6
	ret
  .cfi_endproc


  .globl _Z21readOneMemoryLocationPKii
_Z21readOneMemoryLocationPKii:
	.cfi_startproc
	endbr64
  leal  -1(%rsi), %ebx
  xor  %ecx, %ecx
1:
	movl	(%rdi), %eax   
  sub   $1, %ebx                       
	cmpl	%ebx, %ecx
	jne   1b
	ret
  .cfi_endproc

