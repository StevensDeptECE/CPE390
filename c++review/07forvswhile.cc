#include <iostream>
using namespace std;

int f(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum += i;
	return sum;
}

int add(int a, int b) {
	return a + b;
}


int main() {
	int n;
	cin >> n;
	cout << f(n);
}
