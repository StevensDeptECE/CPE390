	.file	"main.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2386:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1859:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	call	_Z1fdd
	movq	.refptr._ZSt4cout(%rip), %rbx
	movapd	%xmm0, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	48(%rsp), %rcx
	movl	$4, %edx
	movupd	.LC2(%rip), %xmm0
	movups	%xmm0, 48(%rsp)
	movupd	.LC3(%rip), %xmm0
	movups	%xmm0, 64(%rsp)
	call	_Z3sumPdi
	movq	%rbx, %rcx
	movapd	%xmm0, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 47(%rsp)
	movq	%rax, %rcx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rcx,%rax)
	je	.L4
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L5:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
.L4:
	movl	$10, %edx
	call	_ZNSo3putEc
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2387:
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
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.set	.LC1,.LC3
	.align 16
.LC2:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 16
.LC3:
	.long	0
	.long	1074266112
	.long	0
	.long	1075183616
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Z1fdd;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Z3sumPdi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
