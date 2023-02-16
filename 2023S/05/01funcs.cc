#include <cstdint>

#if 0
//                rcx          rdx         r8          r9
uint64_t f(uint64_t a, uint64_t b, uint64_t c, uint64_t d, uint64_t x) {
  return something....
}

 //               xmm0        xmm1      rcx            rdx
void rect2polar(double x, double y, double& r, double& theta) {

}
#endif


//pass by value (makes a copy)
void zero(uint64_t a, uint64_t b) {
    a = 0;
    b = 0;
}

void zerobyref(uint64_t& a, uint64_t& b) {
    a = 0;
    b = 0;
}

