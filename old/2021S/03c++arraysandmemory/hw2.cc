/*
	Pledge goes here
	Author: your name goes here
	cite: any person who gave you help
 */


#include <iostream>
using namespace std;

int main() {
	int a[10] = {5, 4, 6, 1, 2}; // 5 more zeros here...
	int ans = sum(a, 10);
	cout << ans  << '\n'; // compute the sum of all elements = 5+4+6+1+2 =18
	
	int b[3] = {9, 1, -2};
	cout << sum(b, 3) << '\n'; // compute the sum of all elements = 9+1+-2=8

}
