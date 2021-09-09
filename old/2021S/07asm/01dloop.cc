#include <iostream>
using namespace std;

int main() {
	int sum = 0;
	for (int i = 0; i < 1000000000; i++)
		sum += i;
	cout << sum;
	return 0;
}
