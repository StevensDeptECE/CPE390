#include <iostream>
#include <iomanip>
#include <cmath>
#include <bitset>
using namespace std;


void displayAsBinary(float f) {
	uint32_t u = *(uint32_t*)&f; // look at the bits as an integer
	bitset<32> bits(u);	
	cout << bits;
}

void displayAsHex(float f) {
	uint32_t u = *(uint32_t*)&f; // look at the bits as an integer
	cout << hex << u;
}

void display(float f) {
	uint32_t u = *(uint32_t*)&f; // look at the bits as an integer
	bitset<32> bits(u);
	cout << setw(13) << setprecision(7) << f << ' ' << hex << u << '\t' << bits << '\n';
}

void display(double d) {
	uint64_t u = *(uint64_t*)&d; // look at the bits as an integer
	bitset<64> bits(u);
	cout << setw(22) << setprecision(15) << d << ' ' << hex << u << ' ' << bits << '\n';
}

#if 0
// this is more work because long double is longer than the biggest representable int
void display(long double d) {
	uint64_t u = *(uint64_t*)&d; // look at the bits as an integer
	cout << setw(32) << setprecision(30) << f << '\t' << hex << u << '\t' << binary << u << '\n';
}
#endif

void display(const char msg[], double v) {
	cout << msg << " = " << v << '\n';
}

#define trueOrFalse(e) cout << #e << ((e) ? " true" : " false") << '\n';


int main() {
	cout << "float\n";
	display(0.5f);
	display(0.25f);
	display(-1.0f);
	display(0.1f);
	display(1e+6f);
	display(1.234567f);
	display(1.234567e+38f);
	display(1.234567e-38f);

	cout << "\n\ndouble\n";
	display(0.5);
	display(0.25);
	display(-1.0);
	display(0.1f);
	display(1.23456789012345);
	display(1.23456789012345e+308);
	display(1.23456789012345e-308);

	cout << "\n\nlong double\n";
	display(1.23456789012345678901234567890);
	display(1.23456789012345678901234567890E+300);

	display("1.0/0.0", 1.0 / 0.0);
	display("-1.0/0.0", -1.0 / 0.0);
	display("2.0/0.0", 2.0 / 0.0);
	display("-1.0/0.0 + 1.0/0.0", -1.0 / 0.0 + 1.0 / 0.0);
	display("0.0/0.0", 0.0 / 0.0);
	display("sqrt(1.0/0.0)", sqrt(1.0/0.0));
	display("sin(1.0/0.0)", sin(1.0/0.0));

	double a = 1.0 / 0.0;
	trueOrFalse(a + 1 > a);
	trueOrFalse(a * 2 > a);
	double b = 0.0 / 0.0;
	trueOrFalse(b == b);
	trueOrFalse(b != b);
	trueOrFalse(b > b);

}
