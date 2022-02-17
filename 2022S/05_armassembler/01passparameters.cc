#include <iostream>
using namespace std;

int add(int, int, int, int); // _Z3addiiii
uint64_t divide(uint64_t, uint64_t, uint64_t, uint64_t);

int main() {
  int ans1 = add(1,2,3,4);
  cout << ans1 << '\n';

  uint64_t ans2 = divide(3, 2, 5, 2);
  cout << ans2 << '\n';
}
