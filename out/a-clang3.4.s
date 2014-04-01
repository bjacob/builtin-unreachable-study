	.file	"a.cpp"
	.text
	.globl	_Z3fooii
	.align	16, 0x90
	.type	_Z3fooii,@function
_Z3fooii:                               # @_Z3fooii
	.cfi_startproc
# BB#0:
                                        # kill: EDI<def> EDI<kill> RDI<def>
	decl	%edi
	xorl	%eax, %eax
	cmpl	$4, %edi
	ja	.LBB0_8
# BB#1:
	jmpq	*.LJTI0_0(,%rdi,8)
.LBB0_2:
	movl	%esi, %eax
	ret
.LBB0_3:
	movl	%esi, %eax
	imull	%eax, %eax
	jmp	.LBB0_7
.LBB0_4:
	movl	%esi, %eax
	imull	%eax, %eax
	imull	%esi, %eax
	ret
.LBB0_5:
	imull	%esi, %esi
	incl	%esi
	movl	%esi, %eax
	ret
.LBB0_6:
	movl	%esi, %eax
	imull	%eax, %eax
	imull	%esi, %eax
.LBB0_7:
	addl	%esi, %eax
.LBB0_8:
	ret
.Ltmp0:
	.size	_Z3fooii, .Ltmp0-_Z3fooii
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6


	.ident	"clang version 3.4 (tags/RELEASE_34/final)"
	.section	".note.GNU-stack","",@progbits
