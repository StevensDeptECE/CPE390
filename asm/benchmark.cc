#include <iostream>
#include <iomanip>
using namespace std;

extern "C" double hypot(double a, double b);

void testAccuracy() {
	cout << setprecision(15);
	cout << hypot(3,4) << '\n';
	cout << hypot(1,1) << '\n';
}	

int main() {
	//	testAccuracy();
	const uint64_t numTrials = 5000000000L; // 5 x 10^9 trials
	double sum = 0;
	for (uint64_t i = 0; i < numTrials; i++) {
		sum += hypot(3.0, 4.0);
	}
	cout << sum << '\n';
}
