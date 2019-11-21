#include <cstdint>
using namespace std;

int biguglyfunction(int x, int y, int z);

int add(int a, int b) {
	return a + b;
}


uint64_t bigloop(int n) {
	uint64_t sum = 3;
	for (int i = 0; i < n; i++)
		for (int j = 0; j < n; j++)
			sum += i*j;
	return sum;
}

int main() {
	cout << add(2,3) << '\n';
  cout << bigloop(5) << '\n';
}
