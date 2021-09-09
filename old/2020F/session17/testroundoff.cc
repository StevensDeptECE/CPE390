#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

// write reverse in C++
void reverse(const char s[], int len) {

	//	swap(s[0], s[len-1]); cheating! write your own swap!
#if 0
	char temp = s[0];
	s[0] = s[len-1];
	s[len-1] = temp;

	//	swapping without a temp
	s[0] += s[len-1]; // s[0] = sum
	s[len-1] = s[0] - s[len-1];
	s[0] -= s[len-1];

	// 3=011       5=101
	s[0] ^= s[len-1]; //s[0] = 011^101 =110 
	s[len-1] ^= s[0]; //s[len-1] = 101^110 = 011
	s[0] ^= s[len-1]; //s[0] = 110^011 = 101
#endif
}

// reminder, divide by 2 using shift right
void revARM(const char s[], int len);


int main() {
	char s[] = "reverseme"; // "emesrever"
	//          emesrever
	for (int i = 0, j = 8; i < 9; i++, j--)
		;
	float x = 0;
	for (int i = 0; i <= 120; i++, x += 0.1)  //10*10 + 1
		cout << x << ' ';
	cout << '\n';

	cout << setprecision(15);
	x = 1e8;
	double y = 1e8;
	for (int i = 0; i < 10; x++, y++, i++)
		cout << x << '\t' << y << '\n';


	
}
