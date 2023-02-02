# CPU Terminology

clock master timer for the CPU
TDP   Thermal Design Power

Today: server TDP = 250Watts
all chips contain temp sensors. If they are too hot, they automatically SHUT DOWN
overclocking

air, heat sinks, thermal paste silver
why don't we use silver contacts (tarnish)
gold is even more expensive, but does not corrode therefore

32-bit = 4Gbyte address space
64-bit = 4.2B * 4.2B = 18quintillion

Intel CPU does NOT address 64-bit  48 pins to the outside
2^48 = 2^16 * 2^32

ALU  Arithmetic Logic Unit
   add
	add %rbx, %rcx  # rcx = rbx + rcx
	add $1, %rcx    #immediate mode    add 1 to %rcx
	add (%rbx), %rcx # load memory location %rbx and add to rcx
   sub
   mul
   div
   mod???
   and
   or
   xor
   not

microcode

CISC Complex Instruction Set Computer (Intel)
RISC Reduced Instruction Set Computer (ARM)
     ldr 1251, x6
     ldr 12555, x7
     str [x9], x7 
     add   x9, x6, x7
     sub   x19, x4, x5
     
pipelining