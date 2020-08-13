	.file	"accessingmemory.cc"
	.text
	.p2align 4
	.globl	_Z21readOneMemoryLocationPii
	.type	_Z21readOneMemoryLocationPii, @function
_Z21readOneMemoryLocationPii:
.LFB1590:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE1590:
	.size	_Z21readOneMemoryLocationPii, .-_Z21readOneMemoryLocationPii
	.p2align 4
	.globl	_Z15readEntireArrayPKii
	.type	_Z15readEntireArrayPKii, @function
_Z15readEntireArrayPKii:
.LFB2085:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE2085:
	.size	_Z15readEntireArrayPKii, .-_Z15readEntireArrayPKii
	.p2align 4
	.globl	_Z14sumEntireArrayPKii
	.type	_Z14sumEntireArrayPKii, @function
_Z14sumEntireArrayPKii:
.LFB1592:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L7
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	addl	(%rdi), %eax
	addq	$4, %rdi
	cmpq	%rdx, %rdi
	jne	.L6
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1592:
	.size	_Z14sumEntireArrayPKii, .-_Z14sumEntireArrayPKii
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Read One Memory Location elapsed t="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Read Entire Array elapsed t="
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"sum Entire Location elapsed t="
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1593:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$4000000000, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rbp
	call	_Znam@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rsi
	movq	%rax, %rbx
	call	_ZNSo9_M_insertIPKvEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	clock@PLT
	movq	%rax, %r13
	call	clock@PLT
	movl	$35, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	clock@PLT
	movq	%rax, %r13
	call	clock@PLT
	movl	$28, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	call	clock@PLT
	movl	$4000000000, %edx
	movq	%rax, %r12
	addq	%rbx, %rdx
	movq	%rbx, %rax
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L10:
	addl	(%rax), %ebx
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L10
	call	clock@PLT
	movl	$30, %edx
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r12, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L14
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1593:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z21readOneMemoryLocationPii, @function
_GLOBAL__sub_I__Z21readOneMemoryLocationPii:
.LFB2081:
	.cfi_startproc
	endbr64
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
.LFE2081:
	.size	_GLOBAL__sub_I__Z21readOneMemoryLocationPii, .-_GLOBAL__sub_I__Z21readOneMemoryLocationPii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z21readOneMemoryLocationPii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.2.1-9ubuntu2) 9.2.1 20191008"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
