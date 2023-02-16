1.
  int a = 0x3E & 0xBA;            0011 1110
                                  1011 1010
                                  00111010
  uint64_t b = 0x2C ^ 0x9F;
  uint64_t c = 0xA8 | 0x23;
  uint64_t d = 0x31 << 3;      001 1000 1000
                               0x188 


//   (a << 3) | (a >> 61) ==> rol (a, 3) = ror(a, 61)

  2. 
  uint64_t a = 5, b = 7, c;
  c = f(a,b);

