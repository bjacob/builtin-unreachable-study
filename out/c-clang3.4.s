	.file	"c.cpp"
	.text
	.globl	_Z3fooj
	.align	16, 0x90
	.type	_Z3fooj,@function
_Z3fooj:                                # @_Z3fooj
	.cfi_startproc
# BB#0:
	movl	%edi, %eax
	cmpl	$101, %eax
	jb	.LBB0_2
# BB#1:
	movl	%eax, %edx
	imull	%edx, %edx
	imull	%eax, %edx
	leal	(%rdx,%rax), %ecx
	imull	%eax, %ecx
	incl	%ecx
	leal	1234(%rdx,%rax), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
                                        # kill: EAX<def> EAX<kill> RAX<def>
.LBB0_2:
                                        # kill: EAX<def> EAX<kill> RAX<kill>
	ret
.Ltmp0:
	.size	_Z3fooj, .Ltmp0-_Z3fooj
	.cfi_endproc


	.ident	"clang version 3.4 (tags/RELEASE_34/final)"
	.section	".note.GNU-stack","",@progbits
