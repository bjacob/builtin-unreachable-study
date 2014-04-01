	.file	"b.cpp"
	.text
	.p2align 4,,15
	.globl	_Z3fooii
	.type	_Z3fooii, @function
_Z3fooii:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	movl	$1, %eax
	je	.L2
	cmpl	$1, %edi
	movl	%esi, %eax
	je	.L2
	cmpl	$2, %edi
	je	.L15
	cmpl	$3, %edi
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
	xorl	%eax, %eax
	cmpl	$10, %edi
	je	.L23
	.p2align 4,,10
	.p2align 3
.L2:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	leal	1(%rax), %edx
	imull	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%esi, %edx
	imull	%esi, %edx
	imull	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%esi, %edx
	leal	10(%rax), %ecx
	imull	%esi, %edx
	addl	$1, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movl	%esi, %edx
	imull	%esi, %edx
	addl	$1, %edx
	imull	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	addl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movl	%esi, %eax
	imull	%esi, %eax
	leal	-1(%rax,%rax,2), %eax
	imull	%esi, %eax
	addl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	leal	3(%rax), %edx
	imull	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%esi, %edx
	imull	%esi, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	%esi, %edx
	imull	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	imull	%esi, %esi
	leal	0(,%rsi,8), %eax
	subl	%esi, %eax
	addl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3fooii, .-_Z3fooii
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
