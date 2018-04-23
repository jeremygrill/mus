	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi0:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
Lcfi1:
	.cfi_def_cfa_offset 80
Lcfi2:
	.cfi_offset %rbx, -16
	movl	$1, 36(%rsp)
	movl	$1694629891, 20(%rsp)   ## imm = 0x65020003
	movl	$1778843656, 4(%rsp)    ## imm = 0x6A070008
	movl	$12, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 8(%rsp)
	movl	4(%rsp), %eax
	movl	%eax, (%rbx)
	movq	8(%rsp), %rax
	movq	$0, 4(%rax)
	movl	$12, %edi
	callq	_malloc
	movq	%rax, 8(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	8(%rsp), %rax
	movq	%rbx, 4(%rax)
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	4(%rsp), %eax
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
	movl	20(%rsp), %eax
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
	movl	$0, 32(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 40(%rsp)
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
	leaq	L_fmt.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"(%d,%d|%d)\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"[(%d,%d|%d)]\n"


.subsections_via_symbols
