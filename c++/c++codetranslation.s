	.file	"c++codetranslation.cc"
	.text
	.p2align 4
	.globl	_Z3op0ii
	.type	_Z3op0ii, @function
_Z3op0ii:
.LFB256:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE256:
	.size	_Z3op0ii, .-_Z3op0ii
	.p2align 4
	.globl	_Z3op1ii
	.type	_Z3op1ii, @function
_Z3op1ii:
.LFB257:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	subl	%esi, %eax
	ret
	.cfi_endproc
.LFE257:
	.size	_Z3op1ii, .-_Z3op1ii
	.p2align 4
	.globl	_Z3op2ii
	.type	_Z3op2ii, @function
_Z3op2ii:
.LFB258:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	imull	%esi, %eax
	ret
	.cfi_endproc
.LFE258:
	.size	_Z3op2ii, .-_Z3op2ii
	.p2align 4
	.globl	_Z3op3ii
	.type	_Z3op3ii, @function
_Z3op3ii:
.LFB259:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cltd
	idivl	%esi
	ret
	.cfi_endproc
.LFE259:
	.size	_Z3op3ii, .-_Z3op3ii
	.p2align 4
	.globl	_Z3op4ii
	.type	_Z3op4ii, @function
_Z3op4ii:
.LFB260:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE260:
	.size	_Z3op4ii, .-_Z3op4ii
	.p2align 4
	.globl	_Z3op5i
	.type	_Z3op5i, @function
_Z3op5i:
.LFB261:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE261:
	.size	_Z3op5i, .-_Z3op5i
	.p2align 4
	.globl	_Z3op5mm
	.type	_Z3op5mm, @function
_Z3op5mm:
.LFB262:
	.cfi_startproc
	endbr64
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE262:
	.size	_Z3op5mm, .-_Z3op5mm
	.p2align 4
	.globl	_Z3op6mm
	.type	_Z3op6mm, @function
_Z3op6mm:
.LFB263:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
	.cfi_endproc
.LFE263:
	.size	_Z3op6mm, .-_Z3op6mm
	.p2align 4
	.globl	_Z3op7mm
	.type	_Z3op7mm, @function
_Z3op7mm:
.LFB264:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE264:
	.size	_Z3op7mm, .-_Z3op7mm
	.p2align 4
	.globl	_Z3op8mm
	.type	_Z3op8mm, @function
_Z3op8mm:
.LFB265:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	ret
	.cfi_endproc
.LFE265:
	.size	_Z3op8mm, .-_Z3op8mm
	.p2align 4
	.globl	_Z3op9mm
	.type	_Z3op9mm, @function
_Z3op9mm:
.LFB266:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE266:
	.size	_Z3op9mm, .-_Z3op9mm
	.p2align 4
	.globl	_Z4op10dd
	.type	_Z4op10dd, @function
_Z4op10dd:
.LFB267:
	.cfi_startproc
	endbr64
	addsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE267:
	.size	_Z4op10dd, .-_Z4op10dd
	.p2align 4
	.globl	_Z4op11dd
	.type	_Z4op11dd, @function
_Z4op11dd:
.LFB268:
	.cfi_startproc
	endbr64
	subsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE268:
	.size	_Z4op11dd, .-_Z4op11dd
	.p2align 4
	.globl	_Z4op12dd
	.type	_Z4op12dd, @function
_Z4op12dd:
.LFB269:
	.cfi_startproc
	endbr64
	mulsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE269:
	.size	_Z4op12dd, .-_Z4op12dd
	.p2align 4
	.globl	_Z4op13dd
	.type	_Z4op13dd, @function
_Z4op13dd:
.LFB270:
	.cfi_startproc
	endbr64
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE270:
	.size	_Z4op13dd, .-_Z4op13dd
	.p2align 4
	.globl	_Z4op14d
	.type	_Z4op14d, @function
_Z4op14d:
.LFB271:
	.cfi_startproc
	endbr64
	xorpd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE271:
	.size	_Z4op14d, .-_Z4op14d
	.p2align 4
	.globl	_Z4op15dd
	.type	_Z4op15dd, @function
_Z4op15dd:
.LFB272:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movsd	%xmm1, (%rsp)
	movsd	%xmm0, 24(%rsp)
	call	cos@PLT
	movsd	%xmm0, 8(%rsp)
	movsd	(%rsp), %xmm0
	call	sin@PLT
	movsd	24(%rsp), %xmm2
	movsd	%xmm0, 16(%rsp)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rsp)
	call	tan@PLT
	movsd	(%rsp), %xmm4
	xorpd	.LC0(%rip), %xmm4
	movsd	%xmm0, 24(%rsp)
	movapd	%xmm4, %xmm0
	call	exp@PLT
	movsd	40(%rsp), %xmm2
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rsp)
	call	log@PLT
	movsd	48(%rsp), %xmm2
	movsd	%xmm0, 40(%rsp)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 56(%rsp)
	call	atan@PLT
	movsd	56(%rsp), %xmm2
	movsd	%xmm0, 48(%rsp)
	movsd	(%rsp), %xmm0
	movapd	%xmm2, %xmm1
	call	atan2@PLT
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm3
	mulsd	16(%rsp), %xmm1
	movsd	56(%rsp), %xmm2
	mulsd	32(%rsp), %xmm3
	addsd	%xmm3, %xmm1
	addsd	40(%rsp), %xmm1
	movapd	%xmm2, %xmm3
	addsd	48(%rsp), %xmm1
	sqrtsd	%xmm3, %xmm3
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	ja	.L21
.L19:
	addsd	%xmm3, %xmm1
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movapd	%xmm1, %xmm0
	ret
.L21:
	.cfi_restore_state
	movapd	%xmm2, %xmm0
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm1
	jmp	.L19
	.cfi_endproc
.LFE272:
	.size	_Z4op15dd, .-_Z4op15dd
	.p2align 4
	.globl	_Z4opt1d
	.type	_Z4opt1d, @function
_Z4opt1d:
.LFB273:
	.cfi_startproc
	endbr64
	subsd	%xmm0, %xmm0
	ret
	.cfi_endproc
.LFE273:
	.size	_Z4opt1d, .-_Z4opt1d
	.p2align 4
	.globl	_Z4opt2d
	.type	_Z4opt2d, @function
_Z4opt2d:
.LFB274:
	.cfi_startproc
	endbr64
	mulsd	.LC1(%rip), %xmm0
	ret
	.cfi_endproc
.LFE274:
	.size	_Z4opt2d, .-_Z4opt2d
	.p2align 4
	.globl	_Z4opt3d
	.type	_Z4opt3d, @function
_Z4opt3d:
.LFB275:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE275:
	.size	_Z4opt3d, .-_Z4opt3d
	.p2align 4
	.globl	_Z4opt4d
	.type	_Z4opt4d, @function
_Z4opt4d:
.LFB276:
	.cfi_startproc
	endbr64
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE276:
	.size	_Z4opt4d, .-_Z4opt4d
	.p2align 4
	.globl	_Z4opt5d
	.type	_Z4opt5d, @function
_Z4opt5d:
.LFB277:
	.cfi_startproc
	endbr64
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE277:
	.size	_Z4opt5d, .-_Z4opt5d
	.p2align 4
	.globl	_Z4opt6d
	.type	_Z4opt6d, @function
_Z4opt6d:
.LFB278:
	.cfi_startproc
	endbr64
	movapd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm2
	movsd	.LC6(%rip), %xmm0
	divsd	%xmm1, %xmm2
	divsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	.LC3(%rip), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	.LC8(%rip), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE278:
	.size	_Z4opt6d, .-_Z4opt6d
	.p2align 4
	.globl	_Z4opt7d
	.type	_Z4opt7d, @function
_Z4opt7d:
.LFB279:
	.cfi_startproc
	endbr64
	andpd	.LC9(%rip), %xmm0
	pxor	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L34
	movapd	%xmm1, %xmm0
	ret
.L34:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE279:
	.size	_Z4opt7d, .-_Z4opt7d
	.p2align 4
	.globl	_Z4opt8d
	.type	_Z4opt8d, @function
_Z4opt8d:
.LFB280:
	.cfi_startproc
	endbr64
	subsd	.LC6(%rip), %xmm0
	ret
	.cfi_endproc
.LFE280:
	.size	_Z4opt8d, .-_Z4opt8d
	.p2align 4
	.globl	_Z4opt9dd
	.type	_Z4opt9dd, @function
_Z4opt9dd:
.LFB281:
	.cfi_startproc
	endbr64
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	sqrtsd	%xmm2, %xmm2
	ja	.L42
	movapd	%xmm2, %xmm0
	ret
.L42:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm2, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE281:
	.size	_Z4opt9dd, .-_Z4opt9dd
	.p2align 4
	.globl	_Z1fi
	.type	_Z1fi, @function
_Z1fi:
.LFB282:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE282:
	.size	_Z1fi, .-_Z1fi
	.p2align 4
	.globl	_Z4f0_1i
	.type	_Z4f0_1i, @function
_Z4f0_1i:
.LFB313:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE313:
	.size	_Z4f0_1i, .-_Z4f0_1i
	.p2align 4
	.globl	_Z4f0_2i
	.type	_Z4f0_2i, @function
_Z4f0_2i:
.LFB315:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE315:
	.size	_Z4f0_2i, .-_Z4f0_2i
	.p2align 4
	.globl	_Z4f0_3i
	.type	_Z4f0_3i, @function
_Z4f0_3i:
.LFB285:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L53
	leal	-1(%rdi), %eax
	cmpl	$17, %eax
	jbe	.L54
	movl	%edi, %edx
	movdqa	.LC10(%rip), %xmm1
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movdqa	.LC11(%rip), %xmm3
	shrl	$2, %edx
	.p2align 4,,10
	.p2align 3
.L50:
	movdqa	%xmm1, %xmm2
	addl	$1, %eax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	cmpl	%edx, %eax
	jne	.L50
	movdqa	%xmm0, %xmm1
	movl	%edi, %ecx
	psrldq	$8, %xmm1
	andl	$-4, %ecx
	paddd	%xmm1, %xmm0
	leal	1(%rcx), %edx
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpl	%ecx, %edi
	je	.L55
	.p2align 4,,10
	.p2align 3
.L52:
	addl	%edx, %eax
	addl	$1, %edx
	cmpl	%edx, %edi
	jge	.L52
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	xorl	%eax, %eax
	ret
.L54:
	movl	$1, %edx
	xorl	%eax, %eax
	jmp	.L52
	.cfi_endproc
.LFE285:
	.size	_Z4f0_3i, .-_Z4f0_3i
	.p2align 4
	.globl	_Z4f0_4i
	.type	_Z4f0_4i, @function
_Z4f0_4i:
.LFB286:
	.cfi_startproc
	endbr64
	cmpl	$1, %edi
	jle	.L59
	addl	$1, %edi
	movl	$2, %eax
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L58:
	imull	%eax, %r8d
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L58
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	movl	$1, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE286:
	.size	_Z4f0_4i, .-_Z4f0_4i
	.p2align 4
	.globl	_Z4f0_5i
	.type	_Z4f0_5i, @function
_Z4f0_5i:
.LFB287:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L64
	addl	$1, %edi
	movl	$1, %ecx
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	cltd
	idivl	%ecx
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L63
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE287:
	.size	_Z4f0_5i, .-_Z4f0_5i
	.p2align 4
	.globl	_Z4f0_6i
	.type	_Z4f0_6i, @function
_Z4f0_6i:
.LFB288:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L73
	leal	-1(%rdi), %eax
	cmpl	$33, %eax
	jbe	.L74
	movl	%edi, %edx
	movdqa	.LC10(%rip), %xmm3
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	movdqa	.LC11(%rip), %xmm4
	shrl	$2, %edx
	.p2align 4,,10
	.p2align 3
.L70:
	movdqa	%xmm3, %xmm0
	addl	$1, %eax
	paddd	%xmm4, %xmm3
	movdqa	%xmm0, %xmm2
	pmuludq	%xmm0, %xmm2
	psrlq	$32, %xmm0
	pmuludq	%xmm0, %xmm0
	pshufd	$8, %xmm2, %xmm2
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm2
	paddd	%xmm2, %xmm1
	cmpl	%edx, %eax
	jne	.L70
	movdqa	%xmm1, %xmm0
	movl	%edi, %edx
	psrldq	$8, %xmm0
	andl	$-4, %edx
	paddd	%xmm0, %xmm1
	leal	1(%rdx), %eax
	movdqa	%xmm1, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm1
	movd	%xmm1, %r8d
	cmpl	%edx, %edi
	je	.L66
	.p2align 4,,10
	.p2align 3
.L72:
	movl	%eax, %edx
	imull	%eax, %edx
	addl	$1, %eax
	addl	%edx, %r8d
	cmpl	%eax, %edi
	jge	.L72
.L66:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
.L74:
	movl	$1, %eax
	xorl	%r8d, %r8d
	jmp	.L72
	.cfi_endproc
.LFE288:
	.size	_Z4f0_6i, .-_Z4f0_6i
	.p2align 4
	.globl	_Z4f0_7i
	.type	_Z4f0_7i, @function
_Z4f0_7i:
.LFB289:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L90
	cmpl	$1, %edi
	je	.L91
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	addl	$1, %edi
	movl	$2, %ebx
	movl	$1, %eax
	pxor	%xmm2, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L79:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	ucomisd	%xmm0, %xmm2
	movapd	%xmm0, %xmm1
	sqrtsd	%xmm1, %xmm1
	ja	.L92
.L78:
	pxor	%xmm0, %xmm0
	addl	$1, %ebx
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	cmpl	%edi, %ebx
	jne	.L79
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore 3
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	movl	$1, %eax
	ret
.L92:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	movl	%eax, 12(%rsp)
	movl	%edi, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	sqrt@PLT
	movl	12(%rsp), %eax
	movl	8(%rsp), %edi
	pxor	%xmm2, %xmm2
	movsd	(%rsp), %xmm1
	jmp	.L78
	.cfi_endproc
.LFE289:
	.size	_Z4f0_7i, .-_Z4f0_7i
	.p2align 4
	.globl	_Z4f1_1i
	.type	_Z4f1_1i, @function
_Z4f1_1i:
.LFB290:
	.cfi_startproc
	endbr64
	pxor	%xmm2, %xmm2
	movss	.LC12(%rip), %xmm3
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm2
	movaps	%xmm3, %xmm0
	comiss	%xmm3, %xmm2
	jb	.L93
	.p2align 4,,10
	.p2align 3
.L96:
	addss	%xmm0, %xmm1
	addss	%xmm3, %xmm0
	comiss	%xmm0, %xmm2
	jnb	.L96
.L93:
	movaps	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE290:
	.size	_Z4f1_1i, .-_Z4f1_1i
	.p2align 4
	.globl	_Z4f1_2i
	.type	_Z4f1_2i, @function
_Z4f1_2i:
.LFB291:
	.cfi_startproc
	endbr64
	pxor	%xmm2, %xmm2
	movss	.LC12(%rip), %xmm3
	cvtsi2ssl	%edi, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm3, %xmm1
	comiss	%xmm3, %xmm2
	jb	.L101
	.p2align 4,,10
	.p2align 3
.L104:
	mulss	%xmm0, %xmm1
	addss	%xmm3, %xmm0
	comiss	%xmm0, %xmm2
	jnb	.L104
.L101:
	movaps	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE291:
	.size	_Z4f1_2i, .-_Z4f1_2i
	.p2align 4
	.globl	_Z4f1_3i
	.type	_Z4f1_3i, @function
_Z4f1_3i:
.LFB292:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	movss	.LC12(%rip), %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm4
	movaps	%xmm1, %xmm0
	comiss	%xmm1, %xmm4
	jb	.L109
	.p2align 4,,10
	.p2align 3
.L112:
	movaps	%xmm1, %xmm3
	divss	%xmm0, %xmm3
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm4
	addss	%xmm3, %xmm2
	jnb	.L112
.L109:
	movaps	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE292:
	.size	_Z4f1_3i, .-_Z4f1_3i
	.p2align 4
	.globl	_Z4f1_4i
	.type	_Z4f1_4i, @function
_Z4f1_4i:
.LFB293:
	.cfi_startproc
	endbr64
	pxor	%xmm3, %xmm3
	movss	.LC12(%rip), %xmm4
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm3
	movaps	%xmm4, %xmm0
	comiss	%xmm4, %xmm3
	jb	.L117
	.p2align 4,,10
	.p2align 3
.L120:
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm4, %xmm0
	comiss	%xmm0, %xmm3
	addss	%xmm2, %xmm1
	jnb	.L120
.L117:
	movaps	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE293:
	.size	_Z4f1_4i, .-_Z4f1_4i
	.p2align 4
	.globl	_Z4f1_5i
	.type	_Z4f1_5i, @function
_Z4f1_5i:
.LFB294:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	cvtsi2ssl	%edi, %xmm4
	comiss	.LC12(%rip), %xmm4
	movss	%xmm4, 12(%rsp)
	jb	.L135
	movss	.LC15(%rip), %xmm1
	movss	.LC14(%rip), %xmm2
	comiss	%xmm1, %xmm4
	jb	.L125
	.p2align 4,,10
	.p2align 3
.L128:
	movaps	%xmm1, %xmm0
	movss	%xmm2, 8(%rsp)
	movss	%xmm1, 4(%rsp)
	call	cosf@PLT
	movss	4(%rsp), %xmm1
	addss	.LC12(%rip), %xmm1
	movss	12(%rsp), %xmm3
	movss	8(%rsp), %xmm2
	comiss	%xmm1, %xmm3
	addss	%xmm0, %xmm2
	jnb	.L128
.L125:
	movaps	%xmm2, %xmm0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movaps	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE294:
	.size	_Z4f1_5i, .-_Z4f1_5i
	.p2align 4
	.globl	_Z4f1_6i
	.type	_Z4f1_6i, @function
_Z4f1_6i:
.LFB295:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	cvtsi2ssl	%edi, %xmm4
	comiss	.LC12(%rip), %xmm4
	movss	%xmm4, 12(%rsp)
	jb	.L144
	movss	.LC12(%rip), %xmm1
	pxor	%xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L140:
	movaps	%xmm1, %xmm0
	xorps	.LC16(%rip), %xmm0
	movss	%xmm2, 8(%rsp)
	movss	%xmm1, 4(%rsp)
	call	expf@PLT
	movss	4(%rsp), %xmm1
	addss	.LC12(%rip), %xmm1
	movss	12(%rsp), %xmm3
	movss	8(%rsp), %xmm2
	comiss	%xmm1, %xmm3
	addss	%xmm0, %xmm2
	jnb	.L140
	movaps	%xmm2, %xmm0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movaps	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE295:
	.size	_Z4f1_6i, .-_Z4f1_6i
	.p2align 4
	.globl	_Z4f2_1i
	.type	_Z4f2_1i, @function
_Z4f2_1i:
.LFB296:
	.cfi_startproc
	endbr64
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%edi, %xmm3
	testl	%edi, %edi
	jle	.L149
	movsd	.LC6(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	.p2align 4,,10
	.p2align 3
.L148:
	addsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm0
	comisd	%xmm0, %xmm3
	jnb	.L148
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE296:
	.size	_Z4f2_1i, .-_Z4f2_1i
	.p2align 4
	.globl	_Z4f2_2i
	.type	_Z4f2_2i, @function
_Z4f2_2i:
.LFB297:
	.cfi_startproc
	endbr64
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%edi, %xmm3
	testl	%edi, %edi
	jle	.L154
	movsd	.LC6(%rip), %xmm2
	movapd	%xmm2, %xmm0
	movapd	%xmm2, %xmm1
	.p2align 4,,10
	.p2align 3
.L153:
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm0
	comisd	%xmm0, %xmm3
	jnb	.L153
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	movsd	.LC6(%rip), %xmm1
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE297:
	.size	_Z4f2_2i, .-_Z4f2_2i
	.p2align 4
	.globl	_Z4f2_3i
	.type	_Z4f2_3i, @function
_Z4f2_3i:
.LFB298:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%edi, %xmm4
	testl	%edi, %edi
	jle	.L159
	movsd	.LC6(%rip), %xmm2
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	.p2align 4,,10
	.p2align 3
.L158:
	movapd	%xmm2, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm0
	comisd	%xmm0, %xmm4
	addsd	%xmm3, %xmm1
	jnb	.L158
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE298:
	.size	_Z4f2_3i, .-_Z4f2_3i
	.p2align 4
	.globl	_Z4f2_4i
	.type	_Z4f2_4i, @function
_Z4f2_4i:
.LFB299:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%edi, %xmm4
	testl	%edi, %edi
	jle	.L164
	movsd	.LC6(%rip), %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm3, %xmm0
	.p2align 4,,10
	.p2align 3
.L163:
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm4
	addsd	%xmm2, %xmm1
	jnb	.L163
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE299:
	.size	_Z4f2_4i, .-_Z4f2_4i
	.p2align 4
	.globl	_Z4f2_5i
	.type	_Z4f2_5i, @function
_Z4f2_5i:
.LFB300:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	cvtsi2sdl	%edi, %xmm4
	movsd	%xmm4, 24(%rsp)
	testl	%edi, %edi
	jle	.L170
	movsd	.LC17(%rip), %xmm2
	cmpl	$1, %edi
	jle	.L166
	movsd	.LC7(%rip), %xmm1
	movsd	.LC17(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L168:
	movapd	%xmm1, %xmm0
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	call	cos@PLT
	movsd	8(%rsp), %xmm1
	addsd	.LC6(%rip), %xmm1
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	comisd	%xmm1, %xmm3
	addsd	%xmm0, %xmm2
	jnb	.L168
.L166:
	movapd	%xmm2, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE300:
	.size	_Z4f2_5i, .-_Z4f2_5i
	.p2align 4
	.globl	_Z4f2_6i
	.type	_Z4f2_6i, @function
_Z4f2_6i:
.LFB301:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	cvtsi2sdl	%edi, %xmm4
	movsd	%xmm4, 24(%rsp)
	testl	%edi, %edi
	jle	.L178
	movsd	.LC18(%rip), %xmm2
	cmpl	$1, %edi
	jle	.L174
	movsd	.LC7(%rip), %xmm1
	movsd	.LC18(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L176:
	movapd	%xmm1, %xmm0
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	call	sin@PLT
	movsd	8(%rsp), %xmm1
	addsd	.LC6(%rip), %xmm1
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	comisd	%xmm1, %xmm3
	addsd	%xmm0, %xmm2
	jnb	.L176
.L174:
	movapd	%xmm2, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE301:
	.size	_Z4f2_6i, .-_Z4f2_6i
	.p2align 4
	.globl	_Z4f2_7i
	.type	_Z4f2_7i, @function
_Z4f2_7i:
.LFB302:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	cvtsi2sdl	%edi, %xmm4
	movsd	%xmm4, 24(%rsp)
	testl	%edi, %edi
	jle	.L185
	movq	.LC6(%rip), %rax
	pxor	%xmm2, %xmm2
	movq	%rax, %xmm1
	.p2align 4,,10
	.p2align 3
.L184:
	movapd	%xmm1, %xmm0
	xorpd	.LC0(%rip), %xmm0
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	call	exp@PLT
	movsd	8(%rsp), %xmm1
	addsd	.LC6(%rip), %xmm1
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	comisd	%xmm1, %xmm3
	addsd	%xmm0, %xmm2
	jnb	.L184
	movapd	%xmm2, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE302:
	.size	_Z4f2_7i, .-_Z4f2_7i
	.p2align 4
	.globl	_Z4f2_8i
	.type	_Z4f2_8i, @function
_Z4f2_8i:
.LFB303:
	.cfi_startproc
	endbr64
	pxor	%xmm4, %xmm4
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	cvtsi2sdl	%edi, %xmm4
	movsd	%xmm4, 24(%rsp)
	testl	%edi, %edi
	jle	.L191
	movq	.LC6(%rip), %rax
	pxor	%xmm2, %xmm2
	movq	%rax, %xmm1
	.p2align 4,,10
	.p2align 3
.L190:
	movapd	%xmm1, %xmm0
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	call	log@PLT
	movsd	8(%rsp), %xmm1
	addsd	.LC6(%rip), %xmm1
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	comisd	%xmm1, %xmm3
	addsd	%xmm0, %xmm2
	jnb	.L190
	movapd	%xmm2, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
	pxor	%xmm2, %xmm2
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE303:
	.size	_Z4f2_8i, .-_Z4f2_8i
	.p2align 4
	.globl	_Z4f3_1PVii
	.type	_Z4f3_1PVii, @function
_Z4f3_1PVii:
.LFB304:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L197
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L196:
	movl	(%rdi), %edx
	addl	$1, %eax
	addl	%edx, %r8d
	cmpl	%eax, %esi
	jne	.L196
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	ret
	.cfi_endproc
.LFE304:
	.size	_Z4f3_1PVii, .-_Z4f3_1PVii
	.p2align 4
	.globl	_Z4f3_2PKii
	.type	_Z4f3_2PKii, @function
_Z4f3_2PKii:
.LFB305:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L205
	leal	-1(%rsi), %eax
	cmpl	$3, %eax
	jbe	.L206
	movl	%esi, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	$2, %edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L203:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	paddd	%xmm2, %xmm0
	cmpq	%rdx, %rax
	jne	.L203
	movdqa	%xmm0, %xmm1
	movl	%esi, %edx
	psrldq	$8, %xmm1
	andl	$-4, %edx
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %sil
	je	.L207
.L201:
	movslq	%edx, %rcx
	addl	(%rdi,%rcx,4), %eax
	leal	1(%rdx), %ecx
	cmpl	%ecx, %esi
	jle	.L199
	movslq	%ecx, %rcx
	addl	(%rdi,%rcx,4), %eax
	leal	2(%rdx), %ecx
	cmpl	%ecx, %esi
	jle	.L199
	movslq	%ecx, %rcx
	addl	$3, %edx
	addl	(%rdi,%rcx,4), %eax
	cmpl	%edx, %esi
	jle	.L199
	movslq	%edx, %rdx
	addl	(%rdi,%rdx,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L205:
	xorl	%eax, %eax
.L199:
	ret
	.p2align 4,,10
	.p2align 3
.L207:
	ret
.L206:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L201
	.cfi_endproc
.LFE305:
	.size	_Z4f3_2PKii, .-_Z4f3_2PKii
	.p2align 4
	.globl	_Z4f3_3PKii
	.type	_Z4f3_3PKii, @function
_Z4f3_3PKii:
.LFB306:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L211
	leal	-1(%rsi), %eax
	pxor	%xmm0, %xmm0
	leaq	4(%rdi,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L210:
	pxor	%xmm1, %xmm1
	addq	$4, %rdi
	cvtsi2sdl	-4(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rdi, %rax
	jne	.L210
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L211:
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE306:
	.size	_Z4f3_3PKii, .-_Z4f3_3PKii
	.p2align 4
	.globl	_Z4f3_4PKii
	.type	_Z4f3_4PKii, @function
_Z4f3_4PKii:
.LFB307:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L216
	leal	-1(%rsi), %eax
	movsd	.LC6(%rip), %xmm0
	leaq	4(%rdi,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L215:
	pxor	%xmm1, %xmm1
	addq	$4, %rdi
	cvtsi2sdl	-4(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cmpq	%rdi, %rax
	jne	.L215
	ret
	.p2align 4,,10
	.p2align 3
.L216:
	movsd	.LC6(%rip), %xmm0
	ret
	.cfi_endproc
.LFE307:
	.size	_Z4f3_4PKii, .-_Z4f3_4PKii
	.p2align 4
	.globl	_Z4f3_5PKdi
	.type	_Z4f3_5PKdi, @function
_Z4f3_5PKdi:
.LFB308:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L224
	cmpl	$1, %esi
	je	.L225
	movl	%esi, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	%edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L222:
	movsd	(%rax), %xmm1
	addq	$16, %rax
	addsd	%xmm1, %xmm0
	movsd	-8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L222
	movl	%esi, %eax
	andl	$-2, %eax
	andl	$1, %esi
	je	.L226
.L220:
	cltq
	addsd	(%rdi,%rax,8), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L226:
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	pxor	%xmm0, %xmm0
	ret
.L225:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	jmp	.L220
	.cfi_endproc
.LFE308:
	.size	_Z4f3_5PKdi, .-_Z4f3_5PKdi
	.p2align 4
	.globl	_Z4f3_6PKdi
	.type	_Z4f3_6PKdi, @function
_Z4f3_6PKdi:
.LFB309:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L230
	leal	-1(%rsi), %eax
	movsd	.LC6(%rip), %xmm0
	leaq	8(%rdi,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L229:
	mulsd	(%rdi), %xmm0
	addq	$8, %rdi
	cmpq	%rdi, %rax
	jne	.L229
	ret
	.p2align 4,,10
	.p2align 3
.L230:
	movsd	.LC6(%rip), %xmm0
	ret
	.cfi_endproc
.LFE309:
	.size	_Z4f3_6PKdi, .-_Z4f3_6PKdi
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB310:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE310:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	0
	.long	1070596096
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 8
.LC8:
	.long	0
	.long	1075052544
	.section	.rodata.cst16
	.align 16
.LC9:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 16
.LC10:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC11:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	1065353216
	.align 4
.LC14:
	.long	1057640768
	.align 4
.LC15:
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC16:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC17:
	.long	263521932
	.long	1071729192
	.align 8
.LC18:
	.long	2399735022
	.long	1072360788
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
