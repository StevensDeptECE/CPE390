#include <iostream>
using namespace std;

#if 0
// WAAAAAY TOO GOOD! They know we are doing just 10
void zero(uint32_t a[], uint32_t len) {
    for (int i = 0; i < len; i++)
      a[i] = 0;
}
#endif
void zero(uint32_t a[], uint32_t len);

int main() {
    uint32_t a[10];
    zero(a, 10);
    for (int i = 0; i < 10; i++)
     cout << a[i];
}