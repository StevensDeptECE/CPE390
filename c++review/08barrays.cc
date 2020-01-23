#include <iostream>
using namespace std;

double avgFirstAndLast(int x[], int n) {
	for (int i = 0; i < n; i++)
		cout << x[i] << ' ';
	cout << '\n';
	return (x[0] + x[n-1]) / 2.0;
}

int main() {
	int a[] = { 1, 2, 3};
	cout << avgFirstAndLast(a, sizeof(a)/sizeof(int)) << '\n';
	int b[] = { 5, 3, 1, 8};
	cout << avgFirstAndLast(b, sizeof(b)/sizeof(int)) << '\n';
}
