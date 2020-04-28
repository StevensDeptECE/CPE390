#include <iostream>
using namespace std;

int main() {
	const int n = 30;
	uint64_t product = 1;
	for (int i = 1; i <= n; i++) {
		product = product * i; // type promotion
		//uint64_t * int --> uint64_t * uint64_t
		cout << product << '\n';
	}
	return 0;
}		
