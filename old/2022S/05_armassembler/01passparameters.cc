#include <iostream>
using namespace std;

int add(int, int, int, int); // _Z3addiiii
uint64_t divide(uint64_t, uint64_t, uint64_t, uint64_t);
int prod(int,int,int,int);
uint64_t max(uint64_t,uint64_t,uint64_t);

int main() {
  int ans1 = add(1,2,3,4);
  cout << ans1 << '\n';

  uint64_t ans2 = divide(3, 2, 5, 2);
  cout << ans2 << '\n';

	int ans3 = prod(2, 5, 3, 7);
	cout << ans3 << '\n';

	uint64_t ans4 = max(4000000000000ULL, 1, 9);
	cout << ans4 << '\n';
}
