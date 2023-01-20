	.file	"loop_in_main.cc"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%ebx, %ebx
	call	__main
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ebx, %ecx
	addl	$1, %ebx
	call	_Z1fi
	cmpl	$10, %ebx
	jne	.L2
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_Z1fi;	.scl	2;	.type	32;	.endef
