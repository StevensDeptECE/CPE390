#include <iostream>
using namespace std;

int main() {
	uint64_t n = 0xF000E00000001;
	cout << __builtin_popcountll(n) << '\n';
}
