#include <iostream>

int main() {
	int sum = 0;
	for (int i = 0; i < 2000000000; i++)
		sum += i;
	cout << sum;
}
