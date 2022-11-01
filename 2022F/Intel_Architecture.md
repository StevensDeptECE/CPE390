# Intel Architecture Summary

## Registers

### Integer Registers

Each CPU has 16 integer registers

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

32-bit 
EAX, EBX, ECX, EDX, ESI, EDI, ...

64-bit

RAX, RBX, RCX, RDX, RSI, RDI, ...  R9, R10, R11, R12, R13, R14, r15

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
