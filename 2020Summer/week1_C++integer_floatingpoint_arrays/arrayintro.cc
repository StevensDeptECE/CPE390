#include <iostream>
#include <cstdint>
using namespace std;
/*
   1 bit  = 1 binary digit
   byte = 8 bits
   int on our computers is 32 bits (4 bytes)  
   on Arduino int is 16 bits

*/

int main() {
  int x; // value of x? random garbage (whatever is on the stack)
  int y[10]; // 10 int  x[0], x[1], x[2], ... x[9]


  uint32_t a[100]; // how many bytes? 400
  cout << "sizeof(double)=" << sizeof(double) << '\n';
  cout << "sizeof(float)=" << sizeof(float) << '\n';
  
  double b[20] = {3}; // how big? 160 bytes
  
  for (int i = 0; i < 10; i++)
    cout << y[i] << ' ';
  cout << '\n';

  for (int i = 0; i < 20; i++)
    cout << b[i] << ' ';
  cout << '\n';


}