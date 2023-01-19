#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
	float t1 = 70.0000; // 70.0001 - 70.0000 = .00019
	float t2 = 70.0001;

	double dt = t2 - t1; // how accurate?? about 50%?


	double a = 1, b = 2.0001, c = 1;

	double root1 = (-b + sqrt(b*b - 4*a*c)) / (2*a);
	double root2 = (-b - sqrt(b*b - 4*a*c)) / (2*a);

	cout << root1 << " " << root2 << '\n';
	


}
	
