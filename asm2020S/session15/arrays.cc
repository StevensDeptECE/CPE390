#include <iostream>
using namespace std;

int main() {
	int x[10]; // 40 bytes = 10 elements x 4 bytes per
	char s[] = "testing"; // 8 letters long including NUL character

	int sum = 0;
	for (int i = 0; i < sizeof(s); i++)
		sum += s[i];

	/*
		mov  r2, #0
		mov  r1, #8
		ldr  r3, sp   @ r3 points to the array
    ldrb  r0, [r3], #1
    add  r3, #1
    add  r2, r0

	 */
	cout << sum;
}
