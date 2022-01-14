#include <iostream>
#include <cmath>
using namespace std;

// a boring function, always does the same thing
void hello() {
	cout << "hello";
}

// takes one integer parameter, and returns the square
int f(int x) { return x*x; }

// takes two double parameters and returns the length of the hypotenuse
double hypot(double x, double y) { return sqrt(x*x + y*y); }

void sampler() {
	cout << sin(0.0) << '\n';
	cout << cos(0.0) << '\n';
	cout << 1.0 / 0.0 << '\n';
	cout << abs(-1.5) << '\n';
}

int main() {
	hello; // without parentheses a function does nothing
	hello(); // calls function hello
	int y = f(3);
	cout << y << '\n';
	cout << hypot(3, 4) << '\n';
	sampler();
}
