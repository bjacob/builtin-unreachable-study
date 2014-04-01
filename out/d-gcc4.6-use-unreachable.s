	.file	"d.cpp"
	.text
	.p2align 4,,15
	.globl	_Z3fooj
	.type	_Z3fooj, @function
_Z3fooj:
.LFB0:
	.cfi_startproc
	movl	%edi, %ecx
	xorl	%edx, %edx
	imull	%edi, %ecx
	addl	$1, %ecx
	imull	%edi, %ecx
	movl	%ecx, %eax
	addl	$1234, %ecx
	imull	%edi, %eax
	addl	$1, %eax
	divl	%ecx
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3fooj, .-_Z3fooj
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
