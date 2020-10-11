	.file	"cppfuncs.cc"
	.text
	.p2align 4,,15
	.globl	_Z2f1i
	.type	_Z2f1i, @function
_Z2f1i:
.LFB1586:
	.cfi_startproc
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE1586:
	.size	_Z2f1i, .-_Z2f1i
	.p2align 4,,15
	.globl	_Z2f2ii
	.type	_Z2f2ii, @function
_Z2f2ii:
.LFB1587:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE1587:
	.size	_Z2f2ii, .-_Z2f2ii
	.p2align 4,,15
	.globl	_Z2f3iii
	.type	_Z2f3iii, @function
_Z2f3iii:
.LFB1588:
	.cfi_startproc
	addl	%esi, %edi
	leal	(%rdi,%rdx), %eax
	ret
	.cfi_endproc
.LFE1588:
	.size	_Z2f3iii, .-_Z2f3iii
	.p2align 4,,15
	.globl	_Z2f4iiii
	.type	_Z2f4iiii, @function
_Z2f4iiii:
.LFB1589:
	.cfi_startproc
	addl	%esi, %edi
	addl	%edx, %edi
	leal	(%rdi,%rcx), %eax
	ret
	.cfi_endproc
.LFE1589:
	.size	_Z2f4iiii, .-_Z2f4iiii
	.p2align 4,,15
	.globl	_Z2f5iiiii
	.type	_Z2f5iiiii, @function
_Z2f5iiiii:
.LFB1590:
	.cfi_startproc
	addl	%esi, %edi
	addl	%edx, %edi
	addl	%ecx, %edi
	leal	(%rdi,%r8), %eax
	ret
	.cfi_endproc
.LFE1590:
	.size	_Z2f5iiiii, .-_Z2f5iiiii
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z2f1i, @function
_GLOBAL__sub_I__Z2f1i:
.LFB2071:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2071:
	.size	_GLOBAL__sub_I__Z2f1i, .-_GLOBAL__sub_I__Z2f1i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z2f1i
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
