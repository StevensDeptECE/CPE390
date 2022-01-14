#include <cstdint>
#include <iostream>
typedef uint64_t u64;

using namespace std;
int main() {
  uint32_t a = 1234567890; // fits, max = 4.2 billion
  u64 b = 123456789012345678ULL; // big unsigned integer
}
