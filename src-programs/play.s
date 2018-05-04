	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _Z4playi
LCPI0_0:
	.quad	4611686018427387904     ## double 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z4playi
	.p2align	4, 0x90
__Z4playi:                              ## @_Z4playi
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1640, %rsp             ## imm = 0x668
Lcfi3:
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	%edi, -1284(%rbp)
	leaq	-1392(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1488(%rbp)       ## 8-byte Spill
	callq	__ZN3smf8MidiFileC1Ev
Ltmp0:
	movq	-1488(%rbp), %rdi       ## 8-byte Reload
	callq	__ZN3smf8MidiFile13absoluteTicksEv
Ltmp1:
	jmp	LBB0_1
LBB0_1:
Ltmp2:
	leaq	-1392(%rbp), %rdi
	movl	$1, %esi
	callq	__ZN3smf8MidiFile8addTrackEi
Ltmp3:
	movl	%eax, -1492(%rbp)       ## 4-byte Spill
	jmp	LBB0_2
LBB0_2:
	leaq	-1168(%rbp), %rax
	leaq	-1208(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	leaq	-1256(%rbp), %rdi
	leaq	-1088(%rbp), %r8
	leaq	-1248(%rbp), %r9
	leaq	-1040(%rbp), %r10
	leaq	-1432(%rbp), %r11
	movq	%r11, -1280(%rbp)
	movq	-1280(%rbp), %r11
	movq	%r11, -1272(%rbp)
	movq	-1272(%rbp), %r11
	movq	%r11, -1240(%rbp)
	movq	-1240(%rbp), %r11
	movq	%r11, %rbx
	movq	%rbx, -1232(%rbp)
	movq	%r10, -1024(%rbp)
	movq	$-1, -1032(%rbp)
	movq	-1024(%rbp), %r10
	movq	-1032(%rbp), %rbx
	movq	%r10, -1008(%rbp)
	movq	%rbx, -1016(%rbp)
	movq	-1008(%rbp), %r10
	movq	$0, (%r10)
	movq	-1040(%rbp), %r10
	movq	%r10, -1248(%rbp)
	movq	%r9, -1048(%rbp)
	movq	$0, (%r11)
	movq	%r8, -1072(%rbp)
	movq	$-1, -1080(%rbp)
	movq	-1072(%rbp), %r8
	movq	-1080(%rbp), %r9
	movq	%r8, -1056(%rbp)
	movq	%r9, -1064(%rbp)
	movq	-1056(%rbp), %r8
	movq	$0, (%r8)
	movq	-1088(%rbp), %r8
	movq	%r8, -1256(%rbp)
	movq	%rdi, -1096(%rbp)
	movq	$0, 8(%r11)
	addq	$16, %r11
	movq	%rsi, -1120(%rbp)
	movq	$-1, -1128(%rbp)
	movq	-1120(%rbp), %rsi
	movq	-1128(%rbp), %rdi
	movq	%rsi, -1104(%rbp)
	movq	%rdi, -1112(%rbp)
	movq	-1104(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-1136(%rbp), %rsi
	movq	%rsi, -1264(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	%r11, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rdx
	movq	-1224(%rbp), %rsi
	movq	%rdx, -1200(%rbp)
	movq	%rsi, -1208(%rbp)
	movq	-1200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, -1192(%rbp)
	movq	-1192(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rsi, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	-1160(%rbp), %rcx
	movq	%rax, -1152(%rbp)
	movq	-1152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, -1184(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1176(%rbp)
## BB#3:
Ltmp4:
	movl	$3, %eax
	movl	%eax, %esi
	leaq	-1432(%rbp), %rdi
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm
Ltmp5:
	jmp	LBB0_4
LBB0_4:
	movl	$120, -1436(%rbp)
	movl	-1436(%rbp), %esi
Ltmp6:
	leaq	-1392(%rbp), %rdi
	callq	__ZN3smf8MidiFile22setTicksPerQuarterNoteEi
Ltmp7:
	jmp	LBB0_5
LBB0_5:
	leaq	-1432(%rbp), %rax
	leaq	l__ZZ4playiE7brhythm(%rip), %rcx
	movl	$200, %edx
	movl	%edx, %esi
	leaq	-848(%rbp), %rdi
	leaq	l__ZZ4playiE4bass(%rip), %r8
	leaq	-640(%rbp), %r9
	xorl	%edx, %edx
	leaq	-432(%rbp), %r10
	leaq	-224(%rbp), %r11
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	-1284(%rbp), %ebx
	movl	%ebx, -1440(%rbp)
	movl	-1440(%rbp), %ebx
	andl	$-16777216, %ebx        ## imm = 0xFF000000
	movl	%ebx, -1440(%rbp)
	movsd	%xmm0, -992(%rbp)
	movl	$24, -996(%rbp)
	movsd	-992(%rbp), %xmm0       ## xmm0 = mem[0],zero
	cvtsi2sdl	-996(%rbp), %xmm1
	movq	%rax, -1504(%rbp)       ## 8-byte Spill
	movq	%rcx, -1512(%rbp)       ## 8-byte Spill
	movq	%rsi, -1520(%rbp)       ## 8-byte Spill
	movq	%rdi, -1528(%rbp)       ## 8-byte Spill
	movq	%r8, -1536(%rbp)        ## 8-byte Spill
	movq	%r9, -1544(%rbp)        ## 8-byte Spill
	movl	%edx, -1548(%rbp)       ## 4-byte Spill
	movq	%r10, -1560(%rbp)       ## 8-byte Spill
	movq	%r11, -1568(%rbp)       ## 8-byte Spill
	callq	_pow
	movsd	%xmm0, -1448(%rbp)
	cvtsi2sdl	-1440(%rbp), %xmm0
	divsd	-1448(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -1440(%rbp)
	movq	-1568(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %rdi
	movl	-1548(%rbp), %esi       ## 4-byte Reload
	movq	-1520(%rbp), %rdx       ## 8-byte Reload
	callq	_memset
	movl	-1440(%rbp), %esi
	movl	%esi, -224(%rbp)
	movl	$-1, -220(%rbp)
	movq	-1560(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %rdi
	movl	-1548(%rbp), %esi       ## 4-byte Reload
	movq	-1520(%rbp), %rdx       ## 8-byte Reload
	callq	_memset
	movl	$1, -432(%rbp)
	movl	$-1, -428(%rbp)
	movq	-1544(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %rdi
	movq	-1536(%rbp), %rsi       ## 8-byte Reload
	movq	-1520(%rbp), %rdx       ## 8-byte Reload
	callq	_memcpy
	movq	-1528(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %rdi
	movq	-1512(%rbp), %rsi       ## 8-byte Reload
	movq	-1520(%rbp), %rdx       ## 8-byte Reload
	callq	_memcpy
	movl	$0, -1452(%rbp)
	movl	$0, -1456(%rbp)
	movq	-1504(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -976(%rbp)
	movq	$2, -984(%rbp)
	movq	-976(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-984(%rbp), %rcx
	movq	%rcx, -1576(%rbp)       ## 8-byte Spill
## BB#6:
	movq	-1576(%rbp), %rax       ## 8-byte Reload
	movb	$64, (%rax)
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-1452(%rbp), %rax
	cmpl	$0, -224(%rbp,%rax,4)
	jl	LBB0_16
## BB#8:                                ##   in Loop: Header=BB0_7 Depth=1
	leaq	-1432(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	$0, -968(%rbp)
	movq	-960(%rbp), %rax
	movq	(%rax), %rax
	addq	-968(%rbp), %rax
	movq	%rax, -1584(%rbp)       ## 8-byte Spill
## BB#9:                                ##   in Loop: Header=BB0_7 Depth=1
	leaq	-1432(%rbp), %rax
	movq	-1584(%rbp), %rcx       ## 8-byte Reload
	movb	$-112, (%rcx)
	movslq	-1452(%rbp), %rdx
	movl	-224(%rbp,%rdx,4), %esi
	movb	%sil, %dil
	movq	%rax, -872(%rbp)
	movq	$1, -880(%rbp)
	movq	-872(%rbp), %rax
	movq	(%rax), %rax
	addq	-880(%rbp), %rax
	movb	%dil, -1585(%rbp)       ## 1-byte Spill
	movq	%rax, -1600(%rbp)       ## 8-byte Spill
## BB#10:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-1600(%rbp), %rax       ## 8-byte Reload
	movb	-1585(%rbp), %cl        ## 1-byte Reload
	movb	%cl, (%rax)
	movl	-1456(%rbp), %edx
Ltmp22:
	leaq	-1392(%rbp), %rdi
	movl	$1, %esi
	leaq	-1432(%rbp), %rcx
	callq	__ZN3smf8MidiFile8addEventEiiRNSt3__16vectorIhNS1_9allocatorIhEEEE
Ltmp23:
	movq	%rax, -1608(%rbp)       ## 8-byte Spill
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=1
	leaq	-1432(%rbp), %rax
	movl	-1436(%rbp), %ecx
	movslq	-1452(%rbp), %rdx
	imull	-432(%rbp,%rdx,4), %ecx
	addl	-1456(%rbp), %ecx
	movl	%ecx, -1456(%rbp)
	movq	%rax, -856(%rbp)
	movq	$0, -864(%rbp)
	movq	-856(%rbp), %rax
	movq	(%rax), %rax
	addq	-864(%rbp), %rax
	movq	%rax, -1616(%rbp)       ## 8-byte Spill
## BB#12:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-1616(%rbp), %rax       ## 8-byte Reload
	movb	$-128, (%rax)
	movl	-1456(%rbp), %edx
Ltmp24:
	leaq	-1392(%rbp), %rdi
	movl	$1, %esi
	leaq	-1432(%rbp), %rcx
	callq	__ZN3smf8MidiFile8addEventEiiRNSt3__16vectorIhNS1_9allocatorIhEEEE
Ltmp25:
	movq	%rax, -1624(%rbp)       ## 8-byte Spill
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	-1452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1452(%rbp)
	jmp	LBB0_7
LBB0_14:
Ltmp21:
	movl	%edx, %ecx
	movq	%rax, -1400(%rbp)
	movl	%ecx, -1404(%rbp)
	jmp	LBB0_28
LBB0_15:
Ltmp26:
	movl	%edx, %ecx
	movq	%rax, -1400(%rbp)
	movl	%ecx, -1404(%rbp)
	jmp	LBB0_26
LBB0_16:
Ltmp8:
	leaq	-1392(%rbp), %rdi
	callq	__ZN3smf8MidiFile10sortTracksEv
Ltmp9:
	jmp	LBB0_17
LBB0_17:
	leaq	-1480(%rbp), %rax
	movq	%rax, -944(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -952(%rbp)
	movq	-944(%rbp), %rax
	movq	-952(%rbp), %rcx
	movq	%rax, -928(%rbp)
	movq	%rcx, -936(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rcx, -912(%rbp)
	movq	-912(%rbp), %rcx
	movq	%rcx, -904(%rbp)
	movq	-904(%rbp), %rdx
	movq	$0, 16(%rdx)
	movq	$0, 8(%rdx)
	movq	$0, (%rdx)
	movq	%rcx, -896(%rbp)
	movq	-896(%rbp), %rcx
	movq	%rcx, -888(%rbp)
	movq	-936(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1632(%rbp)       ## 8-byte Spill
	movq	%rcx, -1640(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
Ltmp10:
	movq	-1632(%rbp), %rdi       ## 8-byte Reload
	movq	-1640(%rbp), %rsi       ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp11:
	jmp	LBB0_18
LBB0_18:
	jmp	LBB0_19
LBB0_19:
Ltmp12:
	leaq	-1392(%rbp), %rdi
	leaq	-1480(%rbp), %rsi
	callq	__ZN3smf8MidiFile5writeERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
Ltmp13:
	movb	%al, -1641(%rbp)        ## 1-byte Spill
	jmp	LBB0_20
LBB0_20:
Ltmp17:
	leaq	-1480(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp18:
	jmp	LBB0_21
LBB0_21:
Ltmp19:
	leaq	-1432(%rbp), %rdi
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev
Ltmp20:
	jmp	LBB0_24
LBB0_22:
Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -1400(%rbp)
	movl	%ecx, -1404(%rbp)
Ltmp15:
	leaq	-1480(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp16:
	jmp	LBB0_23
LBB0_23:
	jmp	LBB0_26
LBB0_24:
	leaq	-1392(%rbp), %rdi
	callq	__ZN3smf8MidiFileD1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdi
	jne	LBB0_32
## BB#25:
	xorl	%eax, %eax
	addq	$1640, %rsp             ## imm = 0x668
	popq	%rbx
	popq	%rbp
	retq
LBB0_26:
Ltmp27:
	leaq	-1432(%rbp), %rdi
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev
Ltmp28:
	jmp	LBB0_27
LBB0_27:
	jmp	LBB0_28
LBB0_28:
Ltmp29:
	leaq	-1392(%rbp), %rdi
	callq	__ZN3smf8MidiFileD1Ev
Ltmp30:
	jmp	LBB0_29
LBB0_29:
	jmp	LBB0_30
LBB0_30:
	movq	-1400(%rbp), %rdi
	callq	__Unwind_Resume
LBB0_31:
Ltmp31:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1648(%rbp)       ## 4-byte Spill
	callq	___clang_call_terminate
LBB0_32:
	callq	___stack_chk_fail
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\245\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp3-Ltmp0                     ##   Call between Ltmp0 and Ltmp3
	.long	Lset3
Lset4 = Ltmp21-Lfunc_begin0             ##     jumps to Ltmp21
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp4-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp7-Ltmp4                     ##   Call between Ltmp4 and Ltmp7
	.long	Lset6
Lset7 = Ltmp26-Lfunc_begin0             ##     jumps to Ltmp26
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp7-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp22-Ltmp7                    ##   Call between Ltmp7 and Ltmp22
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp22-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp11-Ltmp22                  ##   Call between Ltmp22 and Ltmp11
	.long	Lset11
Lset12 = Ltmp26-Lfunc_begin0            ##     jumps to Ltmp26
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp12-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset13
Lset14 = Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.long	Lset14
Lset15 = Ltmp14-Lfunc_begin0            ##     jumps to Ltmp14
	.long	Lset15
	.byte	0                       ##   On action: cleanup
Lset16 = Ltmp17-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Ltmp18-Ltmp17                  ##   Call between Ltmp17 and Ltmp18
	.long	Lset17
Lset18 = Ltmp26-Lfunc_begin0            ##     jumps to Ltmp26
	.long	Lset18
	.byte	0                       ##   On action: cleanup
Lset19 = Ltmp19-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset19
Lset20 = Ltmp20-Ltmp19                  ##   Call between Ltmp19 and Ltmp20
	.long	Lset20
Lset21 = Ltmp21-Lfunc_begin0            ##     jumps to Ltmp21
	.long	Lset21
	.byte	0                       ##   On action: cleanup
Lset22 = Ltmp15-Lfunc_begin0            ## >> Call Site 9 <<
	.long	Lset22
Lset23 = Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.long	Lset23
Lset24 = Ltmp31-Lfunc_begin0            ##     jumps to Ltmp31
	.long	Lset24
	.byte	1                       ##   On action: 1
Lset25 = Ltmp16-Lfunc_begin0            ## >> Call Site 10 <<
	.long	Lset25
Lset26 = Ltmp27-Ltmp16                  ##   Call between Ltmp16 and Ltmp27
	.long	Lset26
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp27-Lfunc_begin0            ## >> Call Site 11 <<
	.long	Lset27
Lset28 = Ltmp30-Ltmp27                  ##   Call between Ltmp27 and Ltmp30
	.long	Lset28
Lset29 = Ltmp31-Lfunc_begin0            ##     jumps to Ltmp31
	.long	Lset29
	.byte	1                       ##   On action: 1
Lset30 = Ltmp30-Lfunc_begin0            ## >> Call Site 12 <<
	.long	Lset30
Lset31 = Lfunc_end0-Ltmp30              ##   Call between Ltmp30 and Lfunc_end0
	.long	Lset31
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm
	.weak_definition	__ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi4:
	.cfi_def_cfa_offset 16
Lcfi5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi6:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	movq	%rdi, -368(%rbp)
	movq	%rsi, -376(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rdi
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	cmpq	-376(%rbp), %rax
	movq	%rsi, -392(%rbp)        ## 8-byte Spill
	jae	LBB1_2
## BB#1:
	movq	-376(%rbp), %rax
	subq	-384(%rbp), %rax
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm
	jmp	LBB1_8
LBB1_2:
	movq	-384(%rbp), %rax
	cmpq	-376(%rbp), %rax
	jbe	LBB1_7
## BB#3:
	movq	-392(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	addq	-376(%rbp), %rcx
	movq	%rax, -320(%rbp)
	movq	%rcx, -328(%rbp)
	movq	-320(%rbp), %rcx
	movq	-328(%rbp), %rdx
	movq	%rcx, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdx
	subq	%rdx, %rsi
	movq	%rsi, -352(%rbp)
	movq	%rcx, %rdx
	movq	-328(%rbp), %rsi
	movq	%rdx, -96(%rbp)
	movq	%rsi, -104(%rbp)
	movq	-96(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rsi, -112(%rbp)
	movq	%rcx, -400(%rbp)        ## 8-byte Spill
	movq	%rdx, -408(%rbp)        ## 8-byte Spill
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	LBB1_6
## BB#5:                                ##   in Loop: Header=BB1_4 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -112(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	jmp	LBB1_4
LBB1_6:
	movq	-104(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-352(%rbp), %rax
	movq	-400(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -288(%rbp)
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %r8
	movq	%r8, -176(%rbp)
	movq	-176(%rbp), %r8
	movq	%r8, -168(%rbp)
	movq	-168(%rbp), %r9
	addq	$16, %r9
	movq	%r9, -160(%rbp)
	movq	-160(%rbp), %r9
	movq	%r9, -152(%rbp)
	movq	-152(%rbp), %r9
	movq	(%r9), %r9
	movq	(%r8), %r8
	subq	%r8, %r9
	addq	%r9, %rdi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %r8
	movq	(%r8), %r8
	movq	%r8, -192(%rbp)
	movq	-192(%rbp), %r8
	addq	-296(%rbp), %r8
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %r9
	movq	(%r9), %r9
	movq	%r9, -208(%rbp)
	movq	-208(%rbp), %r9
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %r10
	movq	8(%r10), %r11
	movq	(%r10), %r10
	subq	%r10, %r11
	addq	%r11, %r9
	movq	%rax, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdi, -248(%rbp)
	movq	%r8, -256(%rbp)
	movq	%r9, -264(%rbp)
LBB1_7:
	jmp	LBB1_8
LBB1_8:
	addq	$416, %rsp              ## imm = 0x1A0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi7:
	.cfi_def_cfa_offset 16
Lcfi8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi10:
	.cfi_def_cfa_offset 16
Lcfi11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1006632960, -20(%rbp)  ## imm = 0x3C000000
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	leaq	L_.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movl	-20(%rbp), %edi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__Z4playi
	xorl	%edi, %edi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi13:
	.cfi_def_cfa_offset 16
Lcfi14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi15:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi16:
	.cfi_def_cfa_offset 16
Lcfi17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev ## -- Begin function _ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev: ## @_ZNSt3__113__vector_baseIhNS_9allocatorIhEEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi19:
	.cfi_def_cfa_offset 16
Lcfi20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi21:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              ## imm = 0x150
	leaq	-320(%rbp), %rax
	leaq	-304(%rbp), %rcx
	movq	%rdi, -312(%rbp)
	movq	-312(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	%rcx, -288(%rbp)
	movq	$-1, -296(%rbp)
	movq	-288(%rbp), %rcx
	movq	-296(%rbp), %rsi
	movq	%rcx, -272(%rbp)
	movq	%rsi, -280(%rbp)
	movq	-272(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-304(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	%rax, -192(%rbp)
	cmpq	$0, %rdx
	movq	%rdi, -328(%rbp)        ## 8-byte Spill
	je	LBB7_5
## BB#1:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, -104(%rbp)
	movq	%rcx, -336(%rbp)        ## 8-byte Spill
LBB7_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	LBB7_4
## BB#3:                                ##   in Loop: Header=BB7_2 Depth=1
	movq	-336(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -104(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rcx, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	LBB7_2
LBB7_4:
	movq	-96(%rbp), %rax
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	(%rax), %rsi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-176(%rbp), %r8
	addq	$16, %r8
	movq	%r8, -168(%rbp)
	movq	-168(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	subq	%rdi, %r8
	movq	%rdx, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	-248(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	movq	%rdx, -208(%rbp)
	movq	%rsi, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	__ZdlPv
LBB7_5:
	addq	$336, %rsp              ## imm = 0x150
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm
	.weak_definition	__ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Lcfi22:
	.cfi_def_cfa_offset 16
Lcfi23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi24:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              ## imm = 0x160
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -224(%rbp)
	movq	-224(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	%rdi, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	8(%rsi), %rax
	subq	%rax, %rdi
	cmpq	-240(%rbp), %rdi
	movq	%rsi, -312(%rbp)        ## 8-byte Spill
	jb	LBB8_2
## BB#1:
	movq	-240(%rbp), %rsi
	movq	-312(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm
	jmp	LBB8_15
LBB8_2:
	movq	-312(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-312(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	(%rcx), %rcx
	subq	%rcx, %rdx
	addq	-240(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -320(%rbp)        ## 8-byte Spill
	callq	__ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jbe	LBB8_4
## BB#3:
	movq	-320(%rbp), %rax        ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB8_4:
	movq	-320(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
	subq	%rcx, %rdx
	movq	%rdx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	shrq	$1, %rdx
	cmpq	%rdx, %rcx
	jb	LBB8_6
## BB#5:
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	LBB8_10
LBB8_6:
	leaq	-40(%rbp), %rax
	leaq	-144(%rbp), %rcx
	leaq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	shlq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	LBB8_8
## BB#7:
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	jmp	LBB8_9
LBB8_8:
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        ## 8-byte Spill
LBB8_9:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
LBB8_10:
	movq	-128(%rbp), %rsi
	movq	-312(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	subq	%rdx, %rcx
	movq	-248(%rbp), %rdx
	leaq	-288(%rbp), %rdi
	movq	%rdi, -336(%rbp)        ## 8-byte Spill
	movq	%rdx, -344(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_
	movq	-240(%rbp), %rsi
Ltmp32:
	movq	-336(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm
Ltmp33:
	jmp	LBB8_11
LBB8_11:
Ltmp34:
	leaq	-288(%rbp), %rsi
	movq	-312(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE
Ltmp35:
	jmp	LBB8_12
LBB8_12:
	leaq	-288(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev
	jmp	LBB8_15
LBB8_13:
Ltmp36:
	movl	%edx, %ecx
	movq	%rax, -296(%rbp)
	movl	%ecx, -300(%rbp)
Ltmp37:
	leaq	-288(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev
Ltmp38:
	jmp	LBB8_14
LBB8_14:
	jmp	LBB8_16
LBB8_15:
	addq	$352, %rsp              ## imm = 0x160
	popq	%rbp
	retq
LBB8_16:
	movq	-296(%rbp), %rdi
	callq	__Unwind_Resume
LBB8_17:
Ltmp39:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -348(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset32 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset32
Lset33 = Ltmp32-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp32
	.long	Lset33
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset34 = Ltmp32-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset34
Lset35 = Ltmp35-Ltmp32                  ##   Call between Ltmp32 and Ltmp35
	.long	Lset35
Lset36 = Ltmp36-Lfunc_begin1            ##     jumps to Ltmp36
	.long	Lset36
	.byte	0                       ##   On action: cleanup
Lset37 = Ltmp35-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset37
Lset38 = Ltmp37-Ltmp35                  ##   Call between Ltmp35 and Ltmp37
	.long	Lset38
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset39 = Ltmp37-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset39
Lset40 = Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.long	Lset40
Lset41 = Ltmp39-Lfunc_begin1            ##     jumps to Ltmp39
	.long	Lset41
	.byte	1                       ##   On action: 1
Lset42 = Ltmp38-Lfunc_begin1            ## >> Call Site 5 <<
	.long	Lset42
Lset43 = Lfunc_end1-Ltmp38              ##   Call between Ltmp38 and Lfunc_end1
	.long	Lset43
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi25:
	.cfi_def_cfa_offset 16
Lcfi26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -112(%rbp)
	movq	%rsi, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movq	%rsi, -144(%rbp)        ## 8-byte Spill
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdx, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-128(%rbp), %rdx
	movq	8(%rcx), %rsi
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rdx, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rdx
	movb	$0, (%rdx)
	movq	8(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rcx)
	movq	-120(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -120(%rbp)
	movq	%rax, -80(%rbp)
## BB#2:                                ##   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -120(%rbp)
	ja	LBB9_1
## BB#3:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_: ## @_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC1EmmS3_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi28:
	.cfi_def_cfa_offset 16
Lcfi29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm ## -- Begin function _ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm: ## @_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi31:
	.cfi_def_cfa_offset 16
Lcfi32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi33:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
LBB11_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	16(%rcx), %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	16(%rcx), %rax
	addq	$1, %rax
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
## BB#2:                                ##   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -64(%rbp)
	ja	LBB11_1
## BB#3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE ## -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE
	.weak_definition	__ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE
	.p2align	4, 0x90
__ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE: ## @_ZNSt3__16vectorIhNS_9allocatorIhEEE26__swap_out_circular_bufferERNS_14__split_bufferIhRS2_EE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi34:
	.cfi_def_cfa_offset 16
Lcfi35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi36:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$696, %rsp              ## imm = 0x2B8
Lcfi37:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -688(%rbp)
	movq	%rsi, -696(%rbp)
	movq	-688(%rbp), %rsi
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rdi
	movq	%rdi, -672(%rbp)
	movq	-672(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -664(%rbp)
	movq	-664(%rbp), %rdx
	movq	%rdi, -496(%rbp)
	movq	-496(%rbp), %r8
	movq	(%r8), %r8
	movq	%r8, -488(%rbp)
	movq	-488(%rbp), %r8
	movq	%rdi, -536(%rbp)
	movq	-536(%rbp), %r9
	movq	%r9, -528(%rbp)
	movq	-528(%rbp), %r9
	movq	%r9, -520(%rbp)
	movq	-520(%rbp), %r10
	addq	$16, %r10
	movq	%r10, -512(%rbp)
	movq	-512(%rbp), %r10
	movq	%r10, -504(%rbp)
	movq	-504(%rbp), %r10
	movq	(%r10), %r10
	movq	(%r9), %r9
	subq	%r9, %r10
	addq	%r10, %r8
	movq	%rdi, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	(%r9), %r9
	movq	%r9, -544(%rbp)
	movq	-544(%rbp), %r9
	movq	%rdi, -560(%rbp)
	movq	-560(%rbp), %r10
	movq	8(%r10), %r11
	movq	(%r10), %r10
	subq	%r10, %r11
	addq	%r11, %r9
	movq	%rdi, -576(%rbp)
	movq	-576(%rbp), %r10
	movq	(%r10), %r10
	movq	%r10, -568(%rbp)
	movq	-568(%rbp), %r10
	movq	%rdi, -616(%rbp)
	movq	-616(%rbp), %r11
	movq	%r11, -608(%rbp)
	movq	-608(%rbp), %r11
	movq	%r11, -600(%rbp)
	movq	-600(%rbp), %rbx
	addq	$16, %rbx
	movq	%rbx, -592(%rbp)
	movq	-592(%rbp), %rbx
	movq	%rbx, -584(%rbp)
	movq	-584(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	subq	%r11, %rbx
	addq	%rbx, %r10
	movq	%rdi, -624(%rbp)
	movq	%rdx, -632(%rbp)
	movq	%r8, -640(%rbp)
	movq	%r9, -648(%rbp)
	movq	%r10, -656(%rbp)
	movq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	movq	-696(%rbp), %r9
	addq	$8, %r9
	movq	%rdx, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	subq	%rdi, %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	(%rdi), %r8
	subq	%rdx, %rcx
	addq	%rcx, %r8
	movq	%r8, (%rdi)
	cmpq	$0, -72(%rbp)
	movq	%rsi, -704(%rbp)        ## 8-byte Spill
	jle	LBB12_2
## BB#1:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	_memcpy
LBB12_2:
	leaq	-264(%rbp), %rax
	leaq	-168(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	movq	-704(%rbp), %rsi        ## 8-byte Reload
	movq	-696(%rbp), %rdi
	addq	$8, %rdi
	movq	%rsi, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-104(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-112(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-704(%rbp), %rdx        ## 8-byte Reload
	addq	$8, %rdx
	movq	-696(%rbp), %rsi
	addq	$16, %rsi
	movq	%rdx, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-152(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-160(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-704(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	-696(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	-216(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, -208(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rcx, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-248(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-696(%rbp), %rax
	movq	8(%rax), %rax
	movq	-696(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-704(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	(%rcx), %rcx
	subq	%rcx, %rdx
	movq	%rax, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-464(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -448(%rbp)
	movq	-448(%rbp), %rdx
	movq	%rcx, -288(%rbp)
	movq	-288(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -280(%rbp)
	movq	-280(%rbp), %rsi
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	-320(%rbp), %rdi
	movq	%rdi, -312(%rbp)
	movq	-312(%rbp), %r8
	addq	$16, %r8
	movq	%r8, -304(%rbp)
	movq	-304(%rbp), %r8
	movq	%r8, -296(%rbp)
	movq	-296(%rbp), %r8
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	subq	%rdi, %r8
	addq	%r8, %rsi
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -336(%rbp)
	movq	-336(%rbp), %rdi
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %r8
	movq	%r8, -376(%rbp)
	movq	-376(%rbp), %r8
	movq	%r8, -368(%rbp)
	movq	-368(%rbp), %r9
	addq	$16, %r9
	movq	%r9, -360(%rbp)
	movq	-360(%rbp), %r9
	movq	%r9, -352(%rbp)
	movq	-352(%rbp), %r9
	movq	(%r9), %r9
	movq	(%r8), %r8
	subq	%r8, %r9
	addq	%r9, %rdi
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %r8
	movq	(%r8), %r8
	movq	%r8, -392(%rbp)
	movq	-392(%rbp), %r8
	addq	-472(%rbp), %r8
	movq	%rcx, -408(%rbp)
	movq	%rdx, -416(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%rdi, -432(%rbp)
	movq	%r8, -440(%rbp)
	movq	%rax, -480(%rbp)
	addq	$696, %rsp              ## imm = 0x2B8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev ## -- Begin function _ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev: ## @_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi38:
	.cfi_def_cfa_offset 16
Lcfi39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi40:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv: ## @_ZNKSt3__16vectorIhNS_9allocatorIhEEE8max_sizeEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi41:
	.cfi_def_cfa_offset 16
Lcfi42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi43:
	.cfi_def_cfa_register %rbp
	subq	$88, %rsp
	leaq	-96(%rbp), %rax
	leaq	-184(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movabsq	$9223372036854775807, %rsi ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	%rdi, -160(%rbp)
	movq	-160(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	%rdi, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	$-1, -176(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	%rcx, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	LBB14_2
## BB#1:
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	jmp	LBB14_3
LBB14_2:
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)        ## 8-byte Spill
LBB14_3:
	movq	-208(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -216(%rbp)        ## 8-byte Spill
## BB#4:
	movq	-216(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	addq	$88, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_: ## @_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi44:
	.cfi_def_cfa_offset 16
Lcfi45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi46:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              ## imm = 0x180
	leaq	-24(%rbp), %rax
	leaq	-80(%rbp), %r8
	leaq	-352(%rbp), %r9
	leaq	-312(%rbp), %r10
	movq	%rdi, -320(%rbp)
	movq	%rsi, -328(%rbp)
	movq	%rdx, -336(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$24, %rdx
	movq	%r10, -296(%rbp)
	movq	$-1, -304(%rbp)
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	movq	%rsi, -280(%rbp)
	movq	%rdi, -288(%rbp)
	movq	-280(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-312(%rbp), %rsi
	movq	%rsi, -352(%rbp)
	movq	%r9, -144(%rbp)
	movq	-344(%rbp), %rsi
	movq	%rdx, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	%rdx, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%r8, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsi)
	addq	$8, %rdx
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -328(%rbp)
	movq	%rcx, -368(%rbp)        ## 8-byte Spill
	je	LBB15_2
## BB#1:
	movq	-368(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-328(%rbp), %rdx
	movq	%rcx, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	%rcx, -168(%rbp)
	movq	%rdx, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	__Znwm
	movq	%rax, -376(%rbp)        ## 8-byte Spill
	jmp	LBB15_3
LBB15_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-360(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	%rsi, -224(%rbp)
	movq	$-1, -232(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movq	%rsi, -208(%rbp)
	movq	%rdi, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-240(%rbp), %rsi
	movq	%rsi, -360(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -376(%rbp)        ## 8-byte Spill
LBB15_3:
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	addq	-336(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	addq	-328(%rbp), %rax
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, -264(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$384, %rsp              ## imm = 0x180
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev ## -- Begin function _ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev: ## @_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi47:
	.cfi_def_cfa_offset 16
Lcfi48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi49:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              ## imm = 0x130
	movq	%rdi, -288(%rbp)
	movq	-288(%rbp), %rdi
	movq	%rdi, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, -224(%rbp)
	movq	%rcx, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rdi, -296(%rbp)        ## 8-byte Spill
	movq	%rax, -304(%rbp)        ## 8-byte Spill
LBB16_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	cmpq	16(%rcx), %rax
	je	LBB16_3
## BB#2:                                ##   in Loop: Header=BB16_1 Depth=1
	movq	-304(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	16(%rax), %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rax)
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rcx, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	%rcx, -144(%rbp)
	movq	%rdx, -152(%rbp)
	jmp	LBB16_1
LBB16_3:
	movq	-296(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, (%rax)
	je	LBB16_5
## BB#4:
	movq	-296(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	subq	%rsi, %rdi
	movq	%rcx, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rdi, -128(%rbp)
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB16_5:
	addq	$304, %rsp              ## imm = 0x130
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi50:
	.cfi_def_cfa_offset 16
Lcfi51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi52:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Lcfi53:
	.cfi_def_cfa_offset 16
Lcfi54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi55:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-200(%rbp), %rsi
Ltmp40:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp41:
	jmp	LBB18_1
LBB18_1:
	leaq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -265(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-265(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB18_3
	jmp	LBB18_26
LBB18_3:
	leaq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -280(%rbp)        ## 8-byte Spill
	movl	%edi, -284(%rbp)        ## 4-byte Spill
## BB#4:
	movl	-284(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB18_6
## BB#5:
	movq	-208(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	jmp	LBB18_7
LBB18_6:
	movq	-208(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
LBB18_7:
	movq	-296(%rbp), %rax        ## 8-byte Reload
	movq	-208(%rbp), %rcx
	addq	-216(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-200(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	movq	%rcx, -312(%rbp)        ## 8-byte Spill
	movq	%rdx, -320(%rbp)        ## 8-byte Spill
	movq	%rsi, -328(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	movl	144(%rcx), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB18_8
	jmp	LBB18_16
LBB18_8:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movb	$32, -33(%rbp)
	movq	-32(%rbp), %rsi
Ltmp42:
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp43:
	jmp	LBB18_9
LBB18_9:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
Ltmp44:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp45:
	movq	%rax, -336(%rbp)        ## 8-byte Spill
	jmp	LBB18_10
LBB18_10:
	movb	-33(%rbp), %al
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp46:
	movl	%edi, -340(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-340(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -352(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-352(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp47:
	movb	%al, -353(%rbp)         ## 1-byte Spill
	jmp	LBB18_14
LBB18_11:
Ltmp48:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp49:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp50:
	jmp	LBB18_12
LBB18_12:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB18_24
LBB18_13:
Ltmp51:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -376(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB18_14:
Ltmp52:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp53:
	jmp	LBB18_15
LBB18_15:
	movb	-353(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	movl	%ecx, 144(%rdx)
LBB18_16:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -377(%rbp)         ## 1-byte Spill
## BB#17:
	movq	-256(%rbp), %rdi
Ltmp54:
	movb	-377(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-280(%rbp), %rsi        ## 8-byte Reload
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	movq	-312(%rbp), %rcx        ## 8-byte Reload
	movq	-320(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp55:
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	jmp	LBB18_18
LBB18_18:
	leaq	-264(%rbp), %rax
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -264(%rbp)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB18_25
## BB#19:
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movl	$5, -116(%rbp)
	movq	-112(%rbp), %rax
	movl	-116(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	32(%rax), %edx
	movl	-100(%rbp), %esi
	orl	%esi, %edx
Ltmp56:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp57:
	jmp	LBB18_20
LBB18_20:
	jmp	LBB18_21
LBB18_21:
	jmp	LBB18_25
LBB18_22:
Ltmp63:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
	jmp	LBB18_29
LBB18_23:
Ltmp58:
	movl	%edx, %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB18_24
LBB18_24:
	movl	-372(%rbp), %eax        ## 4-byte Reload
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movl	%eax, -244(%rbp)
Ltmp59:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp60:
	jmp	LBB18_28
LBB18_25:
	jmp	LBB18_26
LBB18_26:
Ltmp61:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp62:
	jmp	LBB18_27
LBB18_27:
	jmp	LBB18_31
LBB18_28:
	jmp	LBB18_29
LBB18_29:
	movq	-240(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp64:
	movq	%rax, -400(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp65:
	jmp	LBB18_30
LBB18_30:
	callq	___cxa_end_catch
LBB18_31:
	movq	-200(%rbp), %rax
	addq	$416, %rsp              ## imm = 0x1A0
	popq	%rbp
	retq
LBB18_32:
Ltmp66:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
Ltmp67:
	callq	___cxa_end_catch
Ltmp68:
	jmp	LBB18_33
LBB18_33:
	jmp	LBB18_34
LBB18_34:
	movq	-240(%rbp), %rdi
	callq	__Unwind_Resume
LBB18_35:
Ltmp69:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -404(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table18:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\253\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset44 = Ltmp40-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset44
Lset45 = Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.long	Lset45
Lset46 = Ltmp63-Lfunc_begin2            ##     jumps to Ltmp63
	.long	Lset46
	.byte	5                       ##   On action: 3
Lset47 = Ltmp42-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset47
Lset48 = Ltmp43-Ltmp42                  ##   Call between Ltmp42 and Ltmp43
	.long	Lset48
Lset49 = Ltmp58-Lfunc_begin2            ##     jumps to Ltmp58
	.long	Lset49
	.byte	5                       ##   On action: 3
Lset50 = Ltmp44-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset50
Lset51 = Ltmp47-Ltmp44                  ##   Call between Ltmp44 and Ltmp47
	.long	Lset51
Lset52 = Ltmp48-Lfunc_begin2            ##     jumps to Ltmp48
	.long	Lset52
	.byte	3                       ##   On action: 2
Lset53 = Ltmp49-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset53
Lset54 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset54
Lset55 = Ltmp51-Lfunc_begin2            ##     jumps to Ltmp51
	.long	Lset55
	.byte	7                       ##   On action: 4
Lset56 = Ltmp52-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset56
Lset57 = Ltmp57-Ltmp52                  ##   Call between Ltmp52 and Ltmp57
	.long	Lset57
Lset58 = Ltmp58-Lfunc_begin2            ##     jumps to Ltmp58
	.long	Lset58
	.byte	5                       ##   On action: 3
Lset59 = Ltmp59-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset59
Lset60 = Ltmp60-Ltmp59                  ##   Call between Ltmp59 and Ltmp60
	.long	Lset60
Lset61 = Ltmp69-Lfunc_begin2            ##     jumps to Ltmp69
	.long	Lset61
	.byte	5                       ##   On action: 3
Lset62 = Ltmp61-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset62
Lset63 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset63
Lset64 = Ltmp63-Lfunc_begin2            ##     jumps to Ltmp63
	.long	Lset64
	.byte	5                       ##   On action: 3
Lset65 = Ltmp62-Lfunc_begin2            ## >> Call Site 8 <<
	.long	Lset65
Lset66 = Ltmp64-Ltmp62                  ##   Call between Ltmp62 and Ltmp64
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp64-Lfunc_begin2            ## >> Call Site 9 <<
	.long	Lset67
Lset68 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset68
Lset69 = Ltmp66-Lfunc_begin2            ##     jumps to Ltmp66
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp65-Lfunc_begin2            ## >> Call Site 10 <<
	.long	Lset70
Lset71 = Ltmp67-Ltmp65                  ##   Call between Ltmp65 and Ltmp67
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp67-Lfunc_begin2            ## >> Call Site 11 <<
	.long	Lset72
Lset73 = Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.long	Lset73
Lset74 = Ltmp69-Lfunc_begin2            ##     jumps to Ltmp69
	.long	Lset74
	.byte	5                       ##   On action: 3
Lset75 = Ltmp68-Lfunc_begin2            ## >> Call Site 12 <<
	.long	Lset75
Lset76 = Lfunc_end2-Ltmp68              ##   Call between Ltmp68 and Lfunc_end2
	.long	Lset76
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 3
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Lcfi56:
	.cfi_def_cfa_offset 16
Lcfi57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi58:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              ## imm = 0x2E0
	movb	%r9b, %al
	leaq	-560(%rbp), %r10
	leaq	-496(%rbp), %r11
	movq	%rdi, -512(%rbp)
	movq	%rsi, -520(%rbp)
	movq	%rdx, -528(%rbp)
	movq	%rcx, -536(%rbp)
	movq	%r8, -544(%rbp)
	movb	%al, -545(%rbp)
	movq	-512(%rbp), %rcx
	movq	%r11, -480(%rbp)
	movq	$-1, -488(%rbp)
	movq	-480(%rbp), %rdx
	movq	-488(%rbp), %rsi
	movq	%rdx, -464(%rbp)
	movq	%rsi, -472(%rbp)
	movq	-464(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-496(%rbp), %rdx
	movq	%rdx, -560(%rbp)
	movq	%r10, -456(%rbp)
	cmpq	$0, %rcx
	jne	LBB19_2
## BB#1:
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB19_29
LBB19_2:
	movq	-536(%rbp), %rax
	movq	-520(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -568(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jle	LBB19_4
## BB#3:
	movq	-568(%rbp), %rax
	movq	-576(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -576(%rbp)
	jmp	LBB19_5
LBB19_4:
	movq	$0, -576(%rbp)
LBB19_5:
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jle	LBB19_9
## BB#6:
	movq	-512(%rbp), %rax
	movq	-520(%rbp), %rcx
	movq	-584(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-584(%rbp), %rax
	je	LBB19_8
## BB#7:
	leaq	-592(%rbp), %rax
	leaq	-248(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	$-1, -240(%rbp)
	movq	-232(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	%rcx, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-216(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-248(%rbp), %rcx
	movq	%rcx, -592(%rbp)
	movq	%rax, -8(%rbp)
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB19_29
LBB19_8:
	jmp	LBB19_9
LBB19_9:
	cmpq	$0, -576(%rbp)
	jle	LBB19_24
## BB#10:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-616(%rbp), %rcx
	movq	-576(%rbp), %rdi
	movb	-545(%rbp), %r8b
	movq	%rcx, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movb	%r8b, -89(%rbp)
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdi
	movb	-89(%rbp), %r8b
	movq	%rcx, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movb	%r8b, -65(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, %r9
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %r9
	movq	%rdi, -664(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-664(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-64(%rbp), %rsi
	movq	-672(%rbp), %rdi        ## 8-byte Reload
	movsbl	-65(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leaq	-616(%rbp), %rcx
	movq	-512(%rbp), %rsi
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-176(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, %edi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movq	%rsi, -680(%rbp)        ## 8-byte Spill
	movq	%rcx, -688(%rbp)        ## 8-byte Spill
	je	LBB19_12
## BB#11:
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
	jmp	LBB19_13
LBB19_12:
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
LBB19_13:
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-576(%rbp), %rcx
	movq	-680(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -280(%rbp)
	movq	%rax, -288(%rbp)
	movq	%rcx, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdx
Ltmp70:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp71:
	movq	%rax, -704(%rbp)        ## 8-byte Spill
	jmp	LBB19_14
LBB19_14:
	jmp	LBB19_15
LBB19_15:
	movq	-704(%rbp), %rax        ## 8-byte Reload
	cmpq	-576(%rbp), %rax
	je	LBB19_20
## BB#16:
	leaq	-336(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$-1, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, -304(%rbp)
	movq	%rcx, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	$0, (%rax)
	movq	-336(%rbp), %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
## BB#17:
	leaq	-640(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -640(%rbp)
	movq	%rax, -344(%rbp)
## BB#18:
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	$1, -644(%rbp)
	jmp	LBB19_21
LBB19_19:
Ltmp72:
	movl	%edx, %ecx
	movq	%rax, -624(%rbp)
	movl	%ecx, -628(%rbp)
Ltmp73:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp74:
	jmp	LBB19_23
LBB19_20:
	movl	$0, -644(%rbp)
LBB19_21:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-644(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -716(%rbp)        ## 4-byte Spill
	je	LBB19_22
	jmp	LBB19_33
LBB19_33:
	movl	-716(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -720(%rbp)        ## 4-byte Spill
	je	LBB19_29
	jmp	LBB19_32
LBB19_22:
	jmp	LBB19_24
LBB19_23:
	jmp	LBB19_30
LBB19_24:
	movq	-536(%rbp), %rax
	movq	-528(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jle	LBB19_28
## BB#25:
	movq	-512(%rbp), %rax
	movq	-528(%rbp), %rcx
	movq	-584(%rbp), %rdx
	movq	%rax, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-584(%rbp), %rax
	je	LBB19_27
## BB#26:
	leaq	-656(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movq	$-1, -408(%rbp)
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	%rcx, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-384(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-416(%rbp), %rcx
	movq	%rcx, -656(%rbp)
	movq	%rax, -424(%rbp)
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB19_29
LBB19_27:
	jmp	LBB19_28
LBB19_28:
	movq	-544(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$0, -440(%rbp)
	movq	-432(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -448(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
LBB19_29:
	movq	-504(%rbp), %rax
	addq	$736, %rsp              ## imm = 0x2E0
	popq	%rbp
	retq
LBB19_30:
	movq	-624(%rbp), %rdi
	callq	__Unwind_Resume
LBB19_31:
Ltmp75:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -724(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB19_32:
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table19:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset77 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset77
Lset78 = Ltmp70-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp70
	.long	Lset78
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset79 = Ltmp70-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset79
Lset80 = Ltmp71-Ltmp70                  ##   Call between Ltmp70 and Ltmp71
	.long	Lset80
Lset81 = Ltmp72-Lfunc_begin3            ##     jumps to Ltmp72
	.long	Lset81
	.byte	0                       ##   On action: cleanup
Lset82 = Ltmp73-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset82
Lset83 = Ltmp74-Ltmp73                  ##   Call between Ltmp73 and Ltmp74
	.long	Lset83
Lset84 = Ltmp75-Lfunc_begin3            ##     jumps to Ltmp75
	.long	Lset84
	.byte	1                       ##   On action: 1
Lset85 = Ltmp74-Lfunc_begin3            ## >> Call Site 4 <<
	.long	Lset85
Lset86 = Lfunc_end3-Ltmp74              ##   Call between Ltmp74 and Lfunc_end3
	.long	Lset86
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi59:
	.cfi_def_cfa_offset 16
Lcfi60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi61:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi62:
	.cfi_def_cfa_offset 16
Lcfi63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi64:
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @_ZZ4playiE4bass
l__ZZ4playiE4bass:
	.long	48                      ## 0x30
	.long	60                      ## 0x3c
	.long	64                      ## 0x40
	.long	60                      ## 0x3c
	.long	65                      ## 0x41
	.long	60                      ## 0x3c
	.long	64                      ## 0x40
	.long	60                      ## 0x3c
	.long	62                      ## 0x3e
	.long	59                      ## 0x3b
	.long	60                      ## 0x3c
	.long	57                      ## 0x39
	.long	53                      ## 0x35
	.long	55                      ## 0x37
	.long	48                      ## 0x30
	.long	4294967295              ## 0xffffffff
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.p2align	4               ## @_ZZ4playiE7brhythm
l__ZZ4playiE7brhythm:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	4294967295              ## 0xffffffff
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"themidi.mid"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
