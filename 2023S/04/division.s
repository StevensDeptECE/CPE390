.globl main
main:

    xor %edx, %edx
    mov $23, %eax
    mov $10, $esi
    div %esi

    # divide = eax
    # mod = edx
    ret