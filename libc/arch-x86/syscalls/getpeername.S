/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(getpeername)
    pushl   %ebx
    .cfi_def_cfa_offset 8
    .cfi_rel_offset ebx, 0
    pushl   %ecx
    .cfi_adjust_cfa_offset 4
    .cfi_rel_offset ecx, 0

    call    __kernel_syscall
    pushl   %eax
    .cfi_adjust_cfa_offset 4
    .cfi_rel_offset eax, 0

    mov     $7, %ebx
    mov     %esp, %ecx
    addl    $16, %ecx
    movl    $__NR_socketcall, %eax
    call    *(%esp)
    addl    $4, %esp

    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno_internal
    addl    $4, %esp
1:
    popl    %ecx
    popl    %ebx
    ret
END(getpeername)
