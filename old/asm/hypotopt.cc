#include <cmath>
using namespace std;

extern "C" double hypotopt(double a, double b);
double hypotopt(double a, double b) {
	return sqrt(a*a + b*b);
}
