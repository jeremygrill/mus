	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi1:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
Lcfi2:
	.cfi_def_cfa_offset 112
Lcfi3:
	.cfi_offset %rbx, -24
Lcfi4:
	.cfi_offset %r14, -16
	movl	$1, 44(%rsp)
	movl	$184614923, 12(%rsp)    ## imm = 0xB01000B
	movl	$34996226, 28(%rsp)     ## imm = 0x2160002
	movl	$12, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movl	12(%rsp), %eax
	movl	%eax, (%rbx)
	movq	16(%rsp), %rax
	movq	$0, 4(%rax)
	movl	$12, %edi
	callq	_malloc
	movq	%rax, %r14
	movq	%r14, 16(%rsp)
	movl	28(%rsp), %eax
	movl	%eax, (%r14)
	movq	16(%rsp), %rax
	movq	%rbx, 4(%rax)
	movl	$12, %edi
	callq	_malloc
	movq	%rax, 16(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	16(%rsp), %rax
	movq	%r14, 4(%rax)
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	28(%rsp), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$8, %esi
	addl	%eax, %esi
	sarl	$24, %esi
	movzwl	%ax, %ecx
	movl	%eax, %edx
	andl	$16711680, %edx         ## imm = 0xFF0000
	shrl	$16, %edx
	leaq	L_fmt.1(%rip), %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	12(%rsp), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$8, %esi
	addl	%eax, %esi
	sarl	$24, %esi
	movzwl	%ax, %ecx
	movl	%eax, %edx
	andl	$16711680, %edx         ## imm = 0xFF0000
	shrl	$16, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_fmt.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	32(%rsp), %rax
	movq	4(%rax), %rbx
	movq	%rax, 56(%rsp)
	movl	(%rbx), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$8, %esi
	addl	%eax, %esi
	sarl	$24, %esi
	movzwl	%ax, %ecx
	movl	%eax, %edx
	andl	$16711680, %edx         ## imm = 0xFF0000
	shrl	$16, %edx
	leaq	L_fmt.3(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	4(%rbx), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movl	(%rax), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$8, %esi
	addl	%eax, %esi
	sarl	$24, %esi
	movzwl	%ax, %ecx
	movl	%eax, %edx
	andl	$16711680, %edx         ## imm = 0xFF0000
	shrl	$16, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	leaq	L_fmt.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"(%d,%d|%d)\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"["

L_fmt.3:                                ## @fmt.3
	.asciz	"(%d,%d|%d)"

L_fmt.4:                                ## @fmt.4
	.asciz	"]\n"


.subsections_via_symbols
