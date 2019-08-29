#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;

extern double hypot(double a, double b);

int main() {
	cout << setprecision(15);
	cout << hypot(3, 4) << '\n';
	cout << hypot(1, 1) << '\n';
}
