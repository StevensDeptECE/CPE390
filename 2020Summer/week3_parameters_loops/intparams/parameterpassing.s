	.file	"parameterpassing.cc"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1586:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rbx
	call	_Z2f1i@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movl	%eax, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %esi
	movl	$2, %edi
	call	_Z2f2ii@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movl	%eax, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$4, %edx
	movl	$3, %esi
	movl	$2, %edi
	call	_Z2f3iii@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movl	%eax, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %ecx
	movl	$4, %edx
	movl	$3, %esi
	movl	$2, %edi
	call	_Z2f4iiii@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movl	%eax, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %ecx
	movl	$6, %r8d
	movl	$4, %edx
	movl	$3, %esi
	movl	$2, %edi
	call	_Z2f5iiiii@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movl	%eax, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movb	$10, 7(%rsp)
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L5
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1586:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2068:
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
.LFE2068:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
