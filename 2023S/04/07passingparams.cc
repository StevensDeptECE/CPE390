#include <iostream>
#include <iomanip>
#include <bitset>
#include <cmath>
using namespace std;

     //%ecx    %edx     %esi  %edi
int f(int a, int b);

//                 %rcx       %rdx
uint64_t g(uint64_t a, uint64_t b);


uint64_t h(uint64_t a, uint64_t b, uint64_t c, uint64_t d, uint64_t e);

//                %xmm0    %xmm1    %rcx          %rdx
void rect2polar(double x, double y, double& r, double& theta) {
    r = sqrt(x*x+y*y);
    theta = atan2(y,x);
}


int main() {
    {
        int y = f(2, 3);
        uint64_t z = g(5, 6); 
        z = h(1, 2, 3, 4, 5);
    }
    {
        double x = 3, y = 4;
        double r , theta;
    }
    
}