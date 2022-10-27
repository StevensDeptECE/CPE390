#include <iostream>
using namespace std;

int main() {
   uint8_t a = 3;
   a >>= 1;
   cout << (int)a << '\n';
   a = 255;
   a <<= 1;
   cout << (int)a << '\n';

   int8_t b = -3;
   b >>= 1;
   cout << (int)b << '\n';

}