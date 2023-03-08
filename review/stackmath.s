    .globl main
main:

    call f
    ret
    mov   (%rcx), %r8
f:
//assume rsp = 0x7ffffDEC0
    sub $32, %rsp   #rsp = rsp-32 (make room for variables)
    #rsp=______________A0
    mov  $5, %r8
    push %r8        # r8=_5______ rsp=7ffffDE98________
    push %r9        #rsp=____________90

    pop  %r8
    add $32, %rsp   #must be stack neutral!
    ret