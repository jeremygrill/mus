	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movl	$184614923, 12(%rsp)    ## imm = 0xB01000B
	movl	$50528259, 20(%rsp)     ## imm = 0x3030003
	movl	$34996226, 16(%rsp)     ## imm = 0x2160002
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 56(%rsp)
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	56(%rsp), %rax
	movq	$0, 8(%rax)
	movq	56(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 48(%rsp)
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	48(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 40(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 32(%rsp)
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	$0, 8(%rax)
	movq	32(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 24(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	24(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	24(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rdi
	callq	_printc
	movq	64(%rsp), %rdi
	callq	_printc
	movl	12(%rsp), %edi
	callq	_play
	xorl	%eax, %eax
	addq	$80, %rsp
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
