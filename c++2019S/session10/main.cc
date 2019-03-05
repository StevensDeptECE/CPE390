#include <iostream>
using namespace std;

void set(uint32_t bits[], int pos);
void clear(uint32_t bits[], int pos);

int main() {
	uint32_t bits[4] = {0}; // 128 bits
	set(bits, 0); // set the rightmost bit of the first word
	set(bits, 10); // set the 11th bit (the rightmost is 0)
	set(bits, 40);
	cout << hex << bits[0] << ' ' << bits[1] << ' ' << bits[2] << '\n';
	clear(bits, 40);
	cout << hex << bits[0] << ' ' << bits[1] << ' ' << bits[2] << '\n';
	
	//	set4(bits, 45, 0xE); // set bits 45,46,47,48 to 1110
}
