#include <iostream>
#include <cstdint>
using namespace std;


int count(int num) {
    for (int i = 1; i <= num; i++) {
        cout << i << " "; //Why do we need std:: before cout
    }
    cout << '\n';

    int i = 1;
    while (i <= num) {
        cout << i << ' ';
        i++;
    }
    cout << '\n';
}

int sum(int n) {
  int count = 0;
  for (int i = 0; i <=n; i++){
    count += i;
  }

  return count;
}

// product
int prod(int n) {
    long long runningProduct=1;
    for (int i=1;i<=n;i++){
        runningProduct *= i; // runningProduct = runningProduct * i;
    }
    cout << runningProduct << '\n';
}

int main() {
  cout << count(10) << '\n';
  sum(10);
  prod(10);
  prod(20);
  prod(30);
#if 0
  int a = 2100000000;
  long int b = 34;
  long long int c = 123;
  short int d = 43;
  //short <= int <= long <= long long
  // int >= 16 bits
  // on our machine, int = 32 bits
  // on the arduino int=16 bits

  //new c++ 11 standard
  int8_t i1; // -128 .. 127
  int16_t i2; // -32768 .. 32767 
  int32_t i3; // about 4 billion combinations
  int64_t i4;
  uint8_t u1; // 0 .. 255       2^8 = 256
  uint16_t u2; // 0 .. 65535
  uint32_t u3 = 5;
  uint64_t u4;// huge (about 4.2 billion SQUARED)
  cout << "\n\n";
  cout << u3 + 7 << '\n';
  cout << u3 - 7 << '\n';
  cout << u3 * 7 << '\n';
  cout << u3 / 7 << '\n';
  cout << 12 / 7 << '\n';
  cout << 12 % 7 << '\n'; //mod


/*
8421     unsigned      signed       hex
0000     0             0
0001     1             1
0010     2             2
0011     3             3
0100     4             4
0101     5             5
0110     6             6
0111     7             7
1000     8            -8
1001     9            -7
1010     10           -6
1011     11           -5
1100     12           -4
1101     13           -3
1110     14           -2
1111     15           -1

 111
 1111
+   1
=====
10000

*/

  //int s = sum(10);
  //cout << s << \n';
#endif
}

