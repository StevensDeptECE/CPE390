#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
	double x,y;
	cin >> x >> y;
	cout << setprecision(15);
	//	x = -1.0 / 0;
	double r = sqrt(pow(x,2)+y*y);
	double q = pow(x, 2.1379);
	cout << "r=" << r << '\n';
	cout << "q=" << q << '\n';
	double theta = atan2(y,x);
}
