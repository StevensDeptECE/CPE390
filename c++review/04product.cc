#include <iostream>
using namespace std;

int main() {
	const int n = 20;
	int product = 1;
	for (int i = 1; i <= n; i++) {
		product = product * i; // product *= i;
		cout << product << '\n';
	}
	return 0;
}		
