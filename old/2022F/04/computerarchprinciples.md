Q: how fast does electricity move?
A: electricity is energy through the medium of electrons

Q: how far does light travel in 1ns
A: 30cm = 1ft

Q: how to avoid the latency of a roundtrip?
A:
  1. ASk in advance (pipelining)
  2. Ask for multiple things at once (vectorization)
  3. caching (keep data you want close)

Q: to address n units of memory how many bits do I need in the address bus
A:  256 --> 8
A: 65536 --> 16
A: 4.2billion --> 32
A: 16 quadrillion --> 64

A: 48 bits address how much?

Q: How big do numbers get when you multiply them
  8
  99
x 99
====
  91
 910
 ====
1001

 101011000
x101110001

64 bits x 64 bits = 128 bits

most 64 bit computers will just give you 64 bit answer

Q: What is an n-bit computer?
A: generally ALU is n bits wide, and often so is the data bus

Special case: if we know we don't want much memory, the address bus can be smaller

DDR4 DDR5 gives burst 8 values
please give me location 512
30 clock cycles later.... memory returns
512..519 
520..527 +1
528..536 +1
...
 ... + 7

