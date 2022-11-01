    .global main
main:
    mov $2, %rax
    cpuid
    ret
    