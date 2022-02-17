#include <iostream>
using namespace std;

int f(int a, int b) {
  return a + b;
}

uint64_t g(uint64_t a, uint64_t b) {
  return a + b;
}

int main()  {
  cout << f(1,2);

  cout << g(1000000000000ULL, 1000000000001241254ULL);

  //  1 << 2;   //100
  //  1ULL << 40;
}
