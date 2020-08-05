#include <iostream>
using namespace std;

int main() {
	int q[10]; // random
	int a[10] = {5, 4, 3}; // 5, 4, 3, 0, 0, 0, 0, 0, 0, 0
	int b[10] = {0};
	int c[] = {1, 5, 3};
	cout << sizeof(c) << '\n'; // 3 * sizeof(int) = 12
	char s[] = "XYZ"; // all strings end with NUL \0 control-@
	cout << sizeof(s) << '\n'; // 4*1 = 4
  wchar_t	bigLetter;


	for (int i = 0; i < 4; i++)
		cout << (int)s[i] << ' ';
	cout << '\n';

	double d[10] = {1.2, 4.5, 9.1}; // 0.0
	cout << sizeof(d) << '\n';


	// going out of bounds. THe first number past the array is
	// the bits of s[] so when we change the letters the number
	// changes
	for (int i = 0; i < 100; i++)
		cout << d[i] << ' ';
  cout << '\n';	
}
