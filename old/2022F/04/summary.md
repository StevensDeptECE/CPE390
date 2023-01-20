1. Computers process in chunks of n-bits
2. Computers access memory with large latency
  a. sequential is much faster
  b. burst mode DDR x8
  c. 2 banks of memory 
3. Computers can't go faster with faster clock because
  a. heat
4. Instead, what can we do?
  a. design better instructions
  b. video encoder
  c. CRC
  d. compression
  e. encryption
  f. Gouraud Shading
5. Other ways to speed up computing
  a. wider word width
  b. Very Long Instruction Word (VLIW)
  c. vectorization
6. Future
  a. optical computers
     1. cheap, low power laser/photodetector
     2. optical transistor
  b. quantum computers
     1. qbits can try 2^n combinations in one operation
7. Integer math 
  overflow 
  signed/unsigned 2s complement
  -1 = 1111111111111111111111111
  uint16_t a = -1; // 1111111111111111
  // 65535
8. Floating point math
  seeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
  0.5
  100.5
  .2 = 1/5
  double a = 1.0 / 0.0; // inf
  double b = -1.0 / 0.0; // -inf
  double c = 5/ a; //0
  double d = 3 / b; // -0
  NAN = a + b
  NAN = 0.0 / 0.0
  sin(a) == NAN

Hardware
1. design a circuit to turn on/off
2. look up spec sheet find relevant limits



extra:
E= 1/2mv^2

E = 1/2LI^2

V = L dI/dt