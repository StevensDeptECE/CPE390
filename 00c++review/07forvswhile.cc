#include <iostream>
using namespace std;

int f(uint32_t n) {
	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum += i;
	return sum;
}

int g(uint32_t n) {
	int sum = 0;
	int i = 1;
	while (i <= n) {
		sum += i;
		i++;
	}
	return sum;
}

int dowhile(int n) {
	int sum = 0;
	int i = 1;
	do {
		sum += i;
		i++;
	} while (i <= n);
	return sum;
}	

int add(int a, int b) {
	return a + b;
}


int main() {
	int n;
	cin >> n;
	cout << f(n) << flush;
	int x = 0;
	cout << 5 / x << '\n'; // divide by zero CRASH!!!!

	cout << '\n';
}
