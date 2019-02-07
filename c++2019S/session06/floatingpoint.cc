#include <iostream>
using namespace std;

void printFloatAsHex(float f) {
  int* p = (int*)&f;
  cout << f << '\t' << hex << *p << '\n';
}

int main() {
  cout << 64 << '\t' << 128 << '\t' << 256 << '\t' << 123 << '\n';
  cout << hex <<
    64 << '\t' << 128 << '\t' << 256 << '\t' << 123 << '\n';
  cout << oct <<
    64 << '\t' << 128 << '\t' << 256 << '\t' << 123 << '\n';
  printFloatAsHex(1.0f);
  printFloatAsHex(2.0f);
  printFloatAsHex(4.0f);
  printFloatAsHex(-1.0f);
  printFloatAsHex(1.0f / 0.0f);
}
  
