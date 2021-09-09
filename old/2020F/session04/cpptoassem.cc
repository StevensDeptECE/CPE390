#include <iostream>
using namespace std;

int f(int x) {
	return x*x;
}

int g(int x, int y) {
	return x+y;
}

int h(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum = sum + i;
	return sum;
}

