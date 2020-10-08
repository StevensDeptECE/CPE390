#include <iostream>
using namespace std;

int f0();
int f1(int);
int f2(int, int);
int f3(int, int, int);
int f4(int, int, int, int);
int f5(int, int, int, int, int);

int main() {
	cout << f0() << '\n';
	// operator<<(cout, integer)
	cout << f1(2) << '\n';
	cout << f2(2,3) << '\n';
	cout << f3(2,3,4) << '\n';
	cout << f4(2,3,4,5) << '\n';
  cout << f5(2,3,4,5,6) << '\n';
}
