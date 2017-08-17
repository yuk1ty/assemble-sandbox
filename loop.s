.text
  .globl start

str:
  .ascii "A"

start:
  pushq %rbp
  movq %rsp, %rax
  movl $0x2000004, -4(%rax)
  movl $20, %ecx
  leal label($str), %edi
