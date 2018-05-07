	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$328, %rsp              ## imm = 0x148
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$76, 76(%rsp)
	movl	$1010827266, 4(%rsp)    ## imm = 0x3C400002
	movl	$1044381698, 36(%rsp)   ## imm = 0x3E400002
	movl	$1077936130, 32(%rsp)   ## imm = 0x40400002
	movl	$1094713346, 28(%rsp)   ## imm = 0x41400002
	movl	$1128267780, 24(%rsp)   ## imm = 0x43400004
	movl	$1077936130, 72(%rsp)   ## imm = 0x40400002
	movl	$1128267778, 20(%rsp)   ## imm = 0x43400002
	movl	$1044381698, 68(%rsp)   ## imm = 0x3E400002
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 248(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	248(%rsp), %rax
	movq	$0, 8(%rax)
	movq	248(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 240(%rsp)
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	240(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	240(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 232(%rsp)
	movl	72(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	232(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	232(%rsp), %rbx
	movq	%rbx, 56(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 224(%rsp)
	movl	68(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	224(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	224(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 216(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	216(%rsp), %rax
	movq	$0, 8(%rax)
	movq	216(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 208(%rsp)
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	208(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	208(%rsp), %rax
	movq	%rax, 304(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 200(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rax
	movq	$0, 8(%rax)
	movq	200(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 192(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	192(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	192(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 296(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	296(%rsp), %rax
	movq	$0, 8(%rax)
	movq	40(%rsp), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 184(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 176(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	176(%rsp), %rax
	movq	$0, 8(%rax)
	movq	176(%rsp), %rax
	movq	%rax, (%rbx)
	movq	184(%rsp), %rax
	movq	%r14, 8(%rax)
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 168(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	168(%rsp), %rax
	movq	$0, 8(%rax)
	movq	168(%rsp), %rbx
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 160(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	160(%rsp), %rax
	movq	%rbx, 8(%rax)
	movq	160(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 288(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	288(%rsp), %rax
	movq	$0, 8(%rax)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 280(%rsp)
	movl	36(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	280(%rsp), %rax
	movq	$0, 8(%rax)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 152(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 144(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	144(%rsp), %rax
	movq	$0, 8(%rax)
	movq	144(%rsp), %rax
	movq	%rax, (%rbx)
	movq	152(%rsp), %rax
	movq	$0, 8(%rax)
	movq	152(%rsp), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 136(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 128(%rsp)
	movl	36(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	128(%rsp), %rax
	movq	$0, 8(%rax)
	movq	128(%rsp), %rax
	movq	%rax, (%rbx)
	movq	136(%rsp), %rax
	movq	%r14, 8(%rax)
	movq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 272(%rsp)
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	272(%rsp), %rax
	movq	$0, 8(%rax)
	movq	8(%rsp), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 120(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 112(%rsp)
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	112(%rsp), %rax
	movq	$0, 8(%rax)
	movq	112(%rsp), %rax
	movq	%rax, (%rbx)
	movq	120(%rsp), %rax
	movq	%r14, 8(%rax)
	movq	120(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 264(%rsp)
	movl	28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	264(%rsp), %rax
	movq	$0, 8(%rax)
	movq	8(%rsp), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 104(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 96(%rsp)
	movl	28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	96(%rsp), %rax
	movq	$0, 8(%rax)
	movq	96(%rsp), %rax
	movq	%rax, (%rbx)
	movq	104(%rsp), %rax
	movq	%r14, 8(%rax)
	movq	104(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 256(%rsp)
	movl	24(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	256(%rsp), %rax
	movq	$0, 8(%rax)
	movq	8(%rsp), %r14
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, 88(%rsp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, 80(%rsp)
	movl	24(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movq	$0, 8(%rax)
	movq	80(%rsp), %rax
	movq	%rax, (%rbx)
	movq	88(%rsp), %rax
	movq	%r14, 8(%rax)
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	76(%rsp), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	56(%rsp), %rdi
	callq	_printc
	movq	48(%rsp), %rdi
	callq	_printc
	movq	304(%rsp), %rdi
	callq	_printc
	movq	40(%rsp), %rdi
	callq	_prints
	movq	8(%rsp), %rdi
	callq	_prints
	movq	8(%rsp), %rdi
	callq	_plays
	xorl	%eax, %eax
	addq	$328, %rsp              ## imm = 0x148
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


.subsections_via_symbols
