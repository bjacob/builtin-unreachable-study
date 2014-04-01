	.file	"a.cpp"
	.text
	.p2align 4,,15
	.globl	_Z3fooii
	.type	_Z3fooii, @function
_Z3fooii:
.LFB0:
	.cfi_startproc
	cmpl	$5, %edi
	jbe	.L12
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%edi, %edi
	jmp	*.L9(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L9:
	.quad	.L3
	.quad	.L10
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.text
	.p2align 4,,10
	.p2align 3
.L7:
	imull	%esi, %esi
	leal	1(%rsi), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	%esi, %eax
	imull	%esi, %eax
	addl	$1, %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	leal	1(%rsi), %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%esi, %eax
	imull	%esi, %eax
	imull	%esi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3fooii, .-_Z3fooii
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
