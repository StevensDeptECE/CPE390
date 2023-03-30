#include <iostream>
using namespace std;
uint64_t f(uint64_t a, uint64_t b, uint64_t c, uint64_t d);
uint64_t g(uint64_t a, uint64_t b, uint64_t c, uint64_t d, uint64_t e);
uint64_t h(uint64_t a, uint64_t b, uint64_t c, uint64_t d, uint64_t e, uint64_t f);

int main() {
    uint64_t y = f(1,2,3,4);
    y = g(1,2,3,4,5);
    cout << y;
    cout << y;
    y = h(1,2,3,4,5,6);
    cout << y;
} 