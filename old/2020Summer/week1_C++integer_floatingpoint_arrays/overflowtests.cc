#include <iostream>
using namespace std;

int main() {
  int16_t a = 32767;
  cout << a << '\n';
  a++;
  cout << a << '\n';
  a = a + 1;
  cout << a << '\n';
  a += 1;
  ++a;
  cout << a << '\n';
  uint64_t big = 1;
  for (int i = 0; i < 66; i++) {
    cout << i << '\t' << big << '\n';
    big *= 2; // big = big * 2;
  }
  return 0;
}
