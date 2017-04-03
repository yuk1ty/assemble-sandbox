.text

.globl _add
_add:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  addl -4(%rbp), %eax
  leave
  ret

.globl _sub
_sub:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  movl -8(%rbp), %edx
  movl -4(%rbp), %eax
  subl %edx, %eax
  leave
  ret

.globl _mul
_mul:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  movl -4(%rbp), %eax
  imull -8(%rbp), %eax
  leave
  ret

.globl _div
_div:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  movl -4(%rbp), %edx
  movl %edx, %eax
  sarl $31, %edx
  idivl -8(%rbp)
  leave
  ret

.globl _mod
_mod:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  movl -4(%rbp), %edx
  movl %edx, %eax
  sarl $31, %edx
  idivl -8(%rbp)
  movl %edx, %eax
  leave
  ret
