	.file	"assembler_translation.cc"
	.text
	.p2align 4
	.globl	_Z3f1ayy
	.def	_Z3f1ayy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1ayy
_Z3f1ayy:
.LFB3:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1byy
	.def	_Z3f1byy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1byy
_Z3f1byy:
.LFB4:
	.seh_endprologue
	movq	%rcx, %rax
	subq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1cyy
	.def	_Z3f1cyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1cyy
_Z3f1cyy:
.LFB5:
	.seh_endprologue
	movq	%rcx, %rax
	imulq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1dyy
	.def	_Z3f1dyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1dyy
_Z3f1dyy:
.LFB6:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1eyy
	.def	_Z3f1eyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1eyy
_Z3f1eyy:
.LFB7:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1fy
	.def	_Z3f1fy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1fy
_Z3f1fy:
.LFB8:
	.seh_endprologue
	movq	%rcx, %rax
	negq	%rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1gyy
	.def	_Z3f1gyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1gyy
_Z3f1gyy:
.LFB9:
	.seh_endprologue
	movq	%rcx, %rax
	andq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1hyy
	.def	_Z3f1hyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1hyy
_Z3f1hyy:
.LFB10:
	.seh_endprologue
	movq	%rcx, %rax
	orq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1iyy
	.def	_Z3f1iyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1iyy
_Z3f1iyy:
.LFB11:
	.seh_endprologue
	movq	%rcx, %rax
	xorq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1jy
	.def	_Z3f1jy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1jy
_Z3f1jy:
.LFB12:
	.seh_endprologue
	movq	%rcx, %rax
	notq	%rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1kyy
	.def	_Z3f1kyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1kyy
_Z3f1kyy:
.LFB13:
	.seh_endprologue
	movq	%rcx, %rax
	movl	%edx, %ecx
	salq	%cl, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1my
	.def	_Z3f1my;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1my
_Z3f1my:
.LFB14:
	.seh_endprologue
	leaq	0(,%rcx,4), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1nyy
	.def	_Z3f1nyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1nyy
_Z3f1nyy:
.LFB15:
	.seh_endprologue
	movq	%rcx, %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1oy
	.def	_Z3f1oy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1oy
_Z3f1oy:
.LFB16:
	.seh_endprologue
	movq	%rcx, %rax
	shrq	$2, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3f1py
	.def	_Z3f1py;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1py
_Z3f1py:
.LFB17:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rcx, %rdx
	rorq	$20, %rcx
	rorq	$2, %rax
	rorq	$9, %rdx
	xorq	%rdx, %rax
	xorq	%rcx, %rax
	ret
	.seh_endproc
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
