# Intel Architecture Summary

## Documentation

[Intel documentation](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html)
[Intel instruction set](https://www.intel.com/content/www/us/en/developer/tools/isa-extensions/overview.html)
[Best independent resource?](https://www.felixcloutier.com/x86/)
[Wikipedia](https://en.wikipedia.org/wiki/X86_instruction_listings)
[Penguin](http://www.penguin.cz/~literakl/intel/intel.html)

## Registers

### Integer Registers

Each CPU has 16 integer registers

|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|
---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
rax|rbx|rcx|rdx|rsi|rdi|rbp|rsp|r8 |r9 |r10|r11|r12|r13|r14|r15|

## Program Counter (PC)

On Intel the program counter is called RIP (instruction pointer)

The instruction about to be executed is the one at the address in rip.

## Addressing Modes

[See Intel](https://www.intel.com/content/dam/develop/external/us/en/documents/introduction-to-x64-assembly-181178.pdf)
|Mode      | Example              | Description |
|----------| ---------------------| ----------- |
|immediate | mov $5, %rax         | use the constant in the instruction
|immediate | addl $5, %eax         | add the constant to 32-bit register

|reg-reg   | add %r9, %rax        | rax=rax+r9 read and write registers only
|indexed   | mov 8(%rsp), %rax     | read from memory 8 + rsp into rax
|         | mov %rax, 24(rsp)    | same as above but writes to memory
|         | mov %rax, 24(%r9, %r10,8)    | write to mem[r9 + 8*r10 + 24]
| 
     



### Vector Registers

Most modern CPUs have 32 512-bit vector registers zmm0..zmm31
The low half of each of these is ymm0..ymm31 (256-bit)
The low half of each of these is xmm0..xmm31 (128-bit) for compatability with older computers

each vector register can hold:
1. 8 double precision numbers
1. 16 single precision (float) numbers
1. 8 64-bit integers
1. 16 32-bit integers
1. 32 16-bit integers
1. 64 8-bit integers
1. 4 128-bit integers

Intel registers

AX, BX, CX, DX, ..

32-bit registers start with e
EAX, EBX, ECX, EDX, ESI, EDI, ...

64-bit registers start with r

e registers are the low half of r

### Backward compatability of vector registers

float=32 bit and double=64 bit
AVX: 16 128-bit vector registers
AVX2: 16 256-bit vector registers 
AVX512: 32 512-bits   8 double precision in 1 operation

## Cache

Cache helps the CPU read faster if a value has been read before. It tries to remember the most recently used memory.

Speed is inversely related to size

## My CPU
Processor	12th Gen Intel(R) Core(TM) i5-1240P   1.70 GHz
Installed RAM	16.0 GB (15.7 GB usable)
System type	64-bit operating system, x64-based processor

[cpu specs](https://www.intel.com/content/www/us/en/products/sku/132221/intel-core-i51240p-processor-12m-cache-up-to-4-40-ghz/specifications.html)

Launch date           Q1 2022
Efficient cores       8
Performance cores     4
Max Turbo frequency   4.4GHz
Processor Base Power  28W
Processor Turbo power 64W
L1 cache: 
L2 cache
L3 cache
