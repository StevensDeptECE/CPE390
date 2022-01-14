#include <iostream>
using namespace std;

bool isNan(double x) {
	return x != x;
}

int main() {
	double nan = 0.0 / 0.0;
	cout << isNan(nan) << '\n';
	cout << isNan(2.0) << '\n';
}
