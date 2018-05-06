	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movl	$1006698507, 12(%rsp)   ## imm = 0x3C01000B
	movl	$1073938435, 24(%rsp)   ## imm = 0x40030003
	movl	$1125515266, 28(%rsp)   ## imm = 0x43160002
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 80(%rsp)
	movl	24(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movq	$0, 8(%rax)
	movq	80(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 72(%rsp)
	movl	28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	72(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	72(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 64(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	64(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 56(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	56(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	16(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 48(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	$0, 8(%rax)
	movq	40(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 32(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	32(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	16(%rsp), %rdi
	callq	_printc
	movq	96(%rsp), %rdi
	callq	_printc
	movq	104(%rsp), %rdi
	callq	_printc
	movq	88(%rsp), %rdi
	callq	_prints
	movq	88(%rsp), %rdi
	callq	_plays
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"(%d,%d|%d)\n"


.subsections_via_symbols
