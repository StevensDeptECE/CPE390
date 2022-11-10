	.file	"asm_examples.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2391:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z3addyy
	.def	_Z3addyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3addyy
_Z3addyy:
.LFB1859:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3subyy
	.def	_Z3subyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3subyy
_Z3subyy:
.LFB1860:
	.seh_endprologue
	movq	%rcx, %rax
	subq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z4prodyy
	.def	_Z4prodyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4prodyy
_Z4prodyy:
.LFB1861:
	.seh_endprologue
	movl	$1, %eax
	cmpq	%rcx, %rdx
	jb	.L5
	.p2align 4,,10
	.p2align 3
.L7:
	imulq	%rcx, %rax
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jnb	.L7
.L5:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3maxyy
	.def	_Z3maxyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3maxyy
_Z3maxyy:
.LFB1862:
	.seh_endprologue
	cmpq	%rdx, %rcx
	movq	%rdx, %rax
	cmovnb	%rcx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z11complicatedyyyy
	.def	_Z11complicatedyyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11complicatedyyyy
_Z11complicatedyyyy:
.LFB1863:
	.seh_endprologue
	testb	$1, %dl
	leaq	3(%r9), %rax
	movq	%r8, %r10
	cmove	%rax, %r9
	andl	$3, %r10d
	leaq	-4(%rcx), %rax
	cmpq	$2, %r10
	cmove	%rax, %rcx
	leaq	-3(%rdx), %rax
	addq	$1, %rdx
	imulq	%r8, %rax
	imulq	%rcx, %rdx
	addq	$2, %rcx
	imulq	%r9, %rax
	addq	%rdx, %rax
	imulq	%rcx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z6spice5yyyyy
	.def	_Z6spice5yyyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6spice5yyyyy
_Z6spice5yyyyy:
.LFB1864:
	.seh_endprologue
	addq	40(%rsp), %r9
	addq	%r8, %r9
	addq	%rdx, %r9
	leaq	(%r9,%rcx), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z1giii
	.def	_Z1giii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z1giii
_Z1giii:
.LFB1865:
	.seh_endprologue
	leal	(%r8,%rcx), %eax
	movl	%ecx, %r9d
	imull	%r8d, %r9d
	imull	%edx, %eax
	addl	%r9d, %eax
	movl	%ecx, %r9d
	addl	%edx, %ecx
	negl	%r9d
	addl	%r8d, %ecx
	cltq
	subl	%edx, %r9d
	movslq	%ecx, %rcx
	subl	%r8d, %r9d
	movslq	%r9d, %r9
	addq	%r9, %rax
	addq	%rcx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z1fi
	.def	_Z1fi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z1fi
_Z1fi:
.LFB1866:
	.seh_endprologue
	leal	3(%rcx), %edx
	movl	%ecx, %eax
	movl	%edx, %r8d
	movl	%edx, %r10d
	leal	(%rcx,%rdx), %r9d
	negl	%eax
	imull	%edx, %r8d
	subl	%edx, %eax
	imull	%edx, %ecx
	imull	%r8d, %r10d
	subl	%r8d, %eax
	addl	%r8d, %r9d
	leal	(%r8,%r8,2), %r8d
	movslq	%r9d, %r9
	cltq
	addq	%r9, %rax
	leal	(%rcx,%r10,2), %edx
	subl	%r8d, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z3addyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z3addyy
_GLOBAL__sub_I__Z3addyy:
.LFB2392:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z3addyy
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
