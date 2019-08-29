#include <iostream>
#include <iomanip>
using namespace std;

extern "C" double hypot(double a, double b);
extern "C" double hypotopt(double a, double b);
extern "C" double asmhypot(double a, double b);
extern "C" double testasminline(uint64_t numTrials);

void testAccuracy() {
	cout << setprecision(15);
	cout << hypot(3,4) << '\n';
	cout << hypot(1,1) << '\n';
}	

double testcpphypot(uint64_t numTrials) {
	double sum = 0;
	for (uint64_t i = 0; i < numTrials; i++) {
		sum += hypot(3.0, 4.0);
	}
	return sum;
}

double testcpphypotopt(uint64_t numTrials) {
	double sum = 0;
	for (uint64_t i = 0; i < numTrials; i++) {
		sum += hypotopt(3.0, 4.0);
	}
	return sum;
}

double testasmhypot(uint64_t numTrials) {
	double sum = 0;
	for (uint64_t i = 0; i < numTrials; i++) {
		sum += asmhypot(3.0, 4.0);
	}
	return sum;	
}

int main(int argc, char* argv[]) {
	//	testAccuracy();
	const uint64_t numTrials = 5000000000L; // 5 x 10^9 trials
	if (argc < 2) {
		cerr << "Usage: benchmark <testnum>\n";
		exit(-1);
	}
	int test = atoi(argv[1]);
	double sum;
	switch(test) {
	case 1:	sum = testcpphypotopt(numTrials); break;
	case 2:	sum = testcpphypot(numTrials); break;
	case 3:	sum = testasmhypot(numTrials); break;
	case 4:	sum = testasminline(numTrials); break;
	}
	cout << sum << '\n';
}
