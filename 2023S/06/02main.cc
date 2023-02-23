#include <iostream>
using namespace std;

uint64_t sum(uint64_t a[], uint64_t len);
void zero(uint64_t a[], uint64_t len);

int main() {
    uint64_t a[10] = {9, 7, 3}; // all the rest are zero
    uint64_t b[100];
    uint64_t c[1024]; //8k = 8192 
//    uint64_t d[1024*1024];
    uint64_t s = sum(a, 10);
    cout << s << '\n';
    s = sum(b, 100);
    cout << s << '\n';
    zero(b, 100);
}