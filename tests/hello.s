	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, 4(%rsp)
	movl	$16908291, 12(%rsp)     ## imm = 0x1020003
	movl	$101122056, 8(%rsp)     ## imm = 0x6070008
	movl	$40, %edi
	callq	_malloc
	movl	$16, %edi
	callq	_malloc
	movl	4(%rsp), %esi
	leaq	L_fmt(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"(%d,%d|%d)\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%g\n"


.subsections_via_symbols
