#include <iostream>
#include <iomanip>
using namespace std;
int packBits(int n);
#if 0
int packBits(int n) {
	int num = 0;
  for (int i = 0; i <= n; i++) {
    num = (num << 3) | i;
	}
	return num;
}
#endif

int main() {
	cout << hex <<	packBits(2) << '\n'; // 0000 0101 0011 1001 0111 0111
	//              0x053977
	//  000
	//  000001
	//  000001010
	//  000001010011
	//  000001010011100
		cout << hex <<	packBits(7) << '\n'; // 0000 0101 0011 1001 0111 0111
}
