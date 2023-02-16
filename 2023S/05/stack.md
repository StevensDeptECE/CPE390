# Stack Visualization

initial conditions
rcx = 3
rdx = 4
|-------|------------|-----------------|
|       | f7fabffac8 | 00007ff6428713ae|
|       | f7fabffac0 | 0000000000000003|
|rsp--> | f7fabffab8 | 0000000000000004|


push rcx
push rdx
mov  $92, %rcx                      #rcx = 92
mov  $11, %rdx                      #rdx = 11
#to copy the value of rcx from before off the stack
mov  8(%rsp), %rax  # rax = 3



pop  rdx
pop  rcx