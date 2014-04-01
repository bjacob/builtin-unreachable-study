	.file	"b.cpp"
	.text
	.globl	_Z3fooii
	.align	16, 0x90
	.type	_Z3fooii,@function
_Z3fooii:                               # @_Z3fooii
	.cfi_startproc
# BB#0:
                                        # kill: ESI<def> ESI<kill> RSI<def>
	movl	%edi, %ecx
	cmpl	$9, %edi
	jbe	.LBB0_1
# BB#11:
	movl	%esi, %eax
	imull	%eax, %eax
	imull	%esi, %eax
	leal	(%rax,%rax,2), %ecx
	movl	$1, %eax
	subl	%esi, %eax
	addl	%ecx, %eax
.LBB0_12:
	ret
.LBB0_1:
	movl	$1, %eax
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_2:
	movl	%esi, %eax
	ret
.LBB0_3:
	movl	%esi, %eax
	imull	%eax, %eax
	addl	%esi, %eax
	ret
.LBB0_4:
	movl	%esi, %eax
	imull	%eax, %eax
	imull	%esi, %eax
	ret
.LBB0_5:
	movl	%esi, %eax
	imull	%eax, %eax
	incl	%eax
	addl	$10, %esi
	cltd
	idivl	%esi
	ret
.LBB0_6:
	movl	%esi, %eax
	imull	%eax, %eax
	imull	%esi, %eax
	addl	%esi, %eax
	ret
.LBB0_7:
	addl	%esi, %esi
	movl	%esi, %eax
	ret
.LBB0_8:
	leal	3(%rsi), %eax
	imull	%esi, %eax
	ret
.LBB0_9:
	movl	%esi, %eax
	imull	%eax, %eax
	leal	(%rax,%rax,4), %eax
	addl	%esi, %eax
	imull	%esi, %eax
	ret
.LBB0_10:
	imull	%esi, %esi
	imull	$7, %esi, %eax
	incl	%eax
	ret
.Ltmp0:
	.size	_Z3fooii, .Ltmp0-_Z3fooii
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_12
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10


	.ident	"clang version 3.4 (tags/RELEASE_34/final)"
	.section	".note.GNU-stack","",@progbits
