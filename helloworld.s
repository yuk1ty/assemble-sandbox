.text

  .globl start

msg:
  .ascii "Hello, World!\n"

start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq msg(%rip), %rsi
  movq $14, %rdx

  syscall

  movq $0x2000001, %rax
  movq $0, %rdi

  syscall
