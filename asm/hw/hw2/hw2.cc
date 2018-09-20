#include "BigNum.hh"

using namespace std;

int main() {
	BigNum b1(3); // 0 0 0 3
	BigNum b2(5); // 0 0 0 5
	BigNum b3 = add128(b1, b2); // this calls a function
	BigNum b4 = b1 + b2; // this uses a function called operator +
	
	cout << b3 << '\n'; // print out the answer!!
}
