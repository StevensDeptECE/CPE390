#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
	double a,b,c;
	cout << "Enter quadratic coefficients: ";
	cin >> a >> b >> c;
	double disc = sqrt(b*b - 4*a*c);
	double r1 = -b + disc;
	double r2 = -b - disc;
	cout << "roots = " << setprecision(15) << r1 << '\t' << r2 << '\n';
}
