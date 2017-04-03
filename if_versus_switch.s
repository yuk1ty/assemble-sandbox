	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_if_assemble
	.p2align	4, 0x90
_if_assemble:                           ## @if_assemble
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %edi
	cmpl	$65, %edi
	jne	LBB0_2
## BB#1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	jmp	LBB0_6
LBB0_2:
	movsbl	-1(%rbp), %eax
	cmpl	$66, %eax
	jne	LBB0_4
## BB#3:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -16(%rbp)         ## 4-byte Spill
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_switch_assemble
	.p2align	4, 0x90
_switch_assemble:                       ## @switch_assemble
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %edi
	movl	%edi, %ecx
	subl	$65, %ecx
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	movl	%ecx, -12(%rbp)         ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_5
LBB1_5:
	movl	-8(%rbp), %eax          ## 4-byte Reload
	subl	$66, %eax
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	je	LBB1_2
	jmp	LBB1_3
LBB1_1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB1_4
LBB1_2:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB1_4
LBB1_3:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB1_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$65, %edi
	movl	$0, -4(%rbp)
	callq	_if_assemble
	movl	$65, %edi
	callq	_switch_assemble
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"A\343\201\214\345\207\272\343\201\276\343\201\227\343\201\237"

L_.str.1:                               ## @.str.1
	.asciz	"B\343\201\214\345\207\272\343\201\276\343\201\227\343\201\237"

L_.str.2:                               ## @.str.2
	.asciz	"\344\275\225\343\202\202\350\265\267\343\201\215\343\201\276\343\201\233\343\202\223\343\201\247\343\201\227\343\201\237"


.subsections_via_symbols
