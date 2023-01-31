	.file	"testsincos.cc"
	.text
	.p2align 4
	.globl	_Z3f1ad
	.def	_Z3f1ad;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1ad
_Z3f1ad:
.LFB1015:
	.seh_endprologue
	jmp	sin
	.seh_endproc
	.p2align 4
	.globl	_Z3f1bd
	.def	_Z3f1bd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1bd
_Z3f1bd:
.LFB1016:
	.seh_endprologue
	jmp	cos
	.seh_endproc
	.p2align 4
	.globl	_Z3f1cd
	.def	_Z3f1cd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3f1cd
_Z3f1cd:
.LFB1017:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L12
	sqrtsd	%xmm0, %xmm0
	ret
.L12:
	jmp	sqrt
	.seh_endproc
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
