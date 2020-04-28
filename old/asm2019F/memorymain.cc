#include <iostream>

int sum(int a[], int n) {
  int s = 0;
	for (int i = 0; i < n; i++)
		s += a[i];
	return s;
}

int main() {
	int x[] = {6, 5, 4, 3};
	f(x, 4);
