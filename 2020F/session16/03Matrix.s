	.file	"03Matrix.cc"
	.text
.Ltext0:
	.section	.text._ZN6MatrixC2Ed,"axG",@progbits,_ZN6MatrixC5Ed,comdat
	.align 2
	.weak	_ZN6MatrixC2Ed
	.type	_ZN6MatrixC2Ed, @function
_ZN6MatrixC2Ed:
.LFB1:
	.file 1 "03Matrix.cc"
	.loc 1 5 2
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
.LBB2:
.LBB3:
.LBB4:
	.loc 1 6 12
	movl	$0, -8(%rbp)
.L5:
	.loc 1 6 21 discriminator 1
	cmpl	$99, -8(%rbp)
	jg	.L6
.LBB5:
.LBB6:
	.loc 1 7 13
	movl	$0, -4(%rbp)
.L4:
	.loc 1 7 22 discriminator 3
	cmpl	$99, -4(%rbp)
	jg	.L3
	.loc 1 8 13 discriminator 2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	.loc 1 7 4 discriminator 2
	addl	$1, -4(%rbp)
	jmp	.L4
.L3:
.LBE6:
.LBE5:
	.loc 1 6 3 discriminator 2
	addl	$1, -8(%rbp)
	jmp	.L5
.L6:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 9 2
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN6MatrixC2Ed, .-_ZN6MatrixC2Ed
	.weak	_ZN6MatrixC1Ed
	.set	_ZN6MatrixC1Ed,_ZN6MatrixC2Ed
	.section	.text._ZNK6Matrix3addERKS_,"axG",@progbits,_ZNK6Matrix3addERKS_,comdat
	.align 2
	.weak	_ZNK6Matrix3addERKS_
	.type	_ZNK6Matrix3addERKS_, @function
_ZNK6Matrix3addERKS_:
.LFB3:
	.loc 1 11 10
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 11 10
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 12 20
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	.loc 1 12 32
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	.loc 1 12 33
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6MatrixC1Ed
	.loc 1 13 10
	nop
	.loc 1 14 2
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZNK6Matrix3addERKS_, .-_ZNK6Matrix3addERKS_
	.section	.text._ZplRK6MatrixS1_,"axG",@progbits,_ZplRK6MatrixS1_,comdat
	.weak	_ZplRK6MatrixS1_
	.type	_ZplRK6MatrixS1_, @function
_ZplRK6MatrixS1_:
.LFB4:
	.loc 1 18 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 18 16
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 19 22
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	.loc 1 19 34
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	.loc 1 19 35
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6MatrixC1Ed
	.loc 1 20 10
	nop
	.loc 1 21 2
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZplRK6MatrixS1_, .-_ZplRK6MatrixS1_
	.section	.text._Z3addRK6MatrixS1_,"axG",@progbits,_Z3addRK6MatrixS1_,comdat
	.weak	_Z3addRK6MatrixS1_
	.type	_Z3addRK6MatrixS1_, @function
_Z3addRK6MatrixS1_:
.LFB5:
	.loc 1 24 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 24 16
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 25 22
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	.loc 1 25 34
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	.loc 1 25 35
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6MatrixC1Ed
	.loc 1 26 10
	nop
	.loc 1 27 2
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_Z3addRK6MatrixS1_, .-_Z3addRK6MatrixS1_
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.loc 1 31 12
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-397312(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$2704, %rsp
	.loc 1 31 12
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 32 14
	movq	.LC0(%rip), %rdx
	leaq	-400016(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZN6MatrixC1Ed
	.loc 1 33 14
	movq	.LC1(%rip), %rdx
	leaq	-320016(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZN6MatrixC1Ed
	.loc 1 34 17
	leaq	-240016(%rbp), %rax
	leaq	-320016(%rbp), %rdx
	leaq	-400016(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZplRK6MatrixS1_
	.loc 1 35 20
	leaq	-160016(%rbp), %rax
	leaq	-320016(%rbp), %rdx
	leaq	-400016(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z3addRK6MatrixS1_
	.loc 1 36 20
	leaq	-80016(%rbp), %rax
	leaq	-320016(%rbp), %rdx
	leaq	-400016(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK6Matrix3addERKS_
	.loc 1 39 1
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073217536
	.align 8
.LC1:
	.long	2576980378
	.long	1073846681
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF4
	.byte	0x4
	.long	.LASF5
	.long	.LASF6
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.long	0x13880
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.long	0x85
	.uleb128 0x3
	.string	"m"
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF0
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.long	.LASF7
	.byte	0x1
	.long	0x59
	.long	0x64
	.uleb128 0x5
	.long	0xae
	.uleb128 0x6
	.long	0xa7
	.byte	0
	.uleb128 0x7
	.string	"add"
	.byte	0x1
	.byte	0xb
	.byte	0xa
	.long	.LASF8
	.long	0x29
	.byte	0x1
	.long	0x79
	.uleb128 0x5
	.long	0xb9
	.uleb128 0x6
	.long	0xc4
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x29
	.uleb128 0x9
	.long	0xa7
	.long	0xa0
	.uleb128 0xa
	.long	0xa0
	.byte	0x63
	.uleb128 0xa
	.long	0xa0
	.byte	0x63
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0xc
	.byte	0x8
	.long	0x29
	.uleb128 0x8
	.long	0xae
	.uleb128 0xc
	.byte	0x8
	.long	0x85
	.uleb128 0x8
	.long	0xb9
	.uleb128 0xd
	.byte	0x8
	.long	0x85
	.uleb128 0xe
	.long	.LASF9
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.long	0x138
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x138
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.long	0x29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -400032
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.long	0x29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -320032
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.long	0x29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -240032
	.uleb128 0xf
	.string	"d"
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.long	0x29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160032
	.uleb128 0xf
	.string	"e"
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0x29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80032
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.string	"add"
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.long	.LASF10
	.long	0x29
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x190
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x18
	.byte	0x22
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x18
	.byte	0x33
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"ans"
	.byte	0x1
	.byte	0x19
	.byte	0xa
	.long	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.long	.LASF11
	.long	0x29
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x12
	.byte	0x29
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x12
	.byte	0x3a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"ans"
	.byte	0x1
	.byte	0x13
	.byte	0xa
	.long	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	0x64
	.long	0x200
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a
	.uleb128 0x15
	.long	.LASF12
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0xb
	.byte	0x1c
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"ans"
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.long	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.long	0x44
	.long	0x238
	.byte	0x2
	.long	0x264
	.uleb128 0x17
	.long	.LASF12
	.long	0xb4
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.long	0xa7
	.uleb128 0x19
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.long	0x138
	.uleb128 0x19
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.long	0x138
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x22a
	.long	.LASF13
	.long	0x283
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	0x238
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	0x24b
	.long	0x2ad
	.uleb128 0x1e
	.long	0x24c
	.uleb128 0x1f
	.long	0x256
	.uleb128 0x1e
	.long	0x257
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x24b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	0x256
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.long	0x257
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB1
	.quad	.LFE1
	.quad	.LFB3
	.quad	.LFE3
	.quad	.LFB4
	.quad	.LFE4
	.quad	.LFB5
	.quad	.LFE5
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"/home/dkruger/git/course/CPE390/2020F/session16"
.LASF13:
	.string	"_ZN6MatrixC2Ed"
.LASF1:
	.string	"long unsigned int"
.LASF7:
	.string	"_ZN6MatrixC4Ed"
.LASF9:
	.string	"main"
.LASF4:
	.string	"GNU C++14 9.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF10:
	.string	"_Z3addRK6MatrixS1_"
.LASF11:
	.string	"_ZplRK6MatrixS1_"
.LASF2:
	.string	"double"
.LASF0:
	.string	"Matrix"
.LASF3:
	.string	"operator+"
.LASF12:
	.string	"this"
.LASF8:
	.string	"_ZNK6Matrix3addERKS_"
.LASF5:
	.string	"03Matrix.cc"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
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
