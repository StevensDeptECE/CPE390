#include <iostream>
#include <cstdint>

using namespace std;

uint64_t sum (uint64_t a, uint64_t b) {
    uint64_t s;
    for (uint64_t i = a; i <= b; i++)
        s += i;
    return s;
}

int main() {
  cout << sum(1, 5);
}
