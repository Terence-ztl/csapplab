	.file	"sum.c"
	.text
	.globl	plus
	.type	plus, @function
plus:
.LFB39:
	.cfi_startproc
	endbr64
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE39:
	.size	plus, .-plus
	.globl	sumstore
	.type	sumstore, @function
sumstore:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	call	plus
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	sumstore, .-sumstore
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"name: %s\n"
.LC1:
	.string	"%ld + %ld --> %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, %rbx
	movl	$40, %r12d
	movq	%fs:(%r12), %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	8(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %rbp
	movq	16(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %rbx
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	sumstore
	movq	(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %rax
	xorq	%fs:(%r12), %rax
	jne	.L7
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
