	.file	"b.cpp"
	.text
	.p2align 4,,15
	.globl	_Z3fooii
	.type	_Z3fooii, @function
_Z3fooii:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	je	.L12
	cmpl	$1, %edi
	je	.L13
	cmpl	$2, %edi
	je	.L15
	cmpl	$3, %edi
	.p2align 4,,2
	je	.L16
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L17
	cmpl	$5, %edi
	.p2align 4,,2
	je	.L18
	cmpl	$6, %edi
	.p2align 4,,2
	je	.L19
	cmpl	$7, %edi
	.p2align 4,,2
	je	.L20
	cmpl	$8, %edi
	.p2align 4,,2
	je	.L21
	cmpl	$9, %edi
	.p2align 4,,2
	je	.L22
	cmpl	$10, %edi
	.p2align 4,,2
	jne	.L11
	movl	%esi, %eax
	imull	%esi, %eax
	leal	-1(%rax,%rax,2), %eax
	imull	%esi, %eax
	addl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	leal	1(%rsi), %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%esi, %eax
	imull	%esi, %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%esi, %eax
	imull	%esi, %eax
	addl	$10, %esi
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%esi
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movl	%esi, %eax
	imull	%esi, %eax
	addl	$1, %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	leal	(%rsi,%rsi), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	leal	3(%rsi), %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%esi, %eax
	imull	%esi, %eax
	leal	(%rax,%rax,4), %eax
	addl	%esi, %eax
	imull	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	imull	%esi, %esi
	leal	0(,%rsi,8), %eax
	subl	%esi, %eax
	addl	$1, %eax
	ret
.L11:
	.cfi_endproc
.LFE0:
	.size	_Z3fooii, .-_Z3fooii
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
