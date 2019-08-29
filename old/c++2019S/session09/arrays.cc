#include <iostream>
using namespace std;

int main() {
	bool x[10] = {false, false, false, false, true, true, true};
	bool y[8] = { false, true, false, true, true, true, true, false };


	for (int i = 0; i < 8; i++)
		cout << y[i];
cout << '\n';
//  1010
int v;
for (int i = 0; i < 8; i++) {
int bit = y[i] << i; // LSL
v = v | bit; // OR
cout << v << '\n';
		}
cout << v << '\n';
}
	
