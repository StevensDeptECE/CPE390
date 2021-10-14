#include <iostream>
using namespace std;

void print(const char* s) {
	while (*s != '\0') { // ldrb r1, [r0]
		cout << *s;
		s++;  // add r0, #1
	}
}

int main() {
	print("hello"); // "h e l l o \0


	int a; // suppose this is sp+4
	int x[10] = {3, 9, 4}; // then maybe this is sp+8
  int y; // sp+48
	for (int i = 0 ; i < 10; i++)
		x[i] = 19;

	char b[10] = "hello"; // sp+52
  int zzz; // sp+62?
	/*
    mov r2, #19
		add r1, sp, #8 // assume r1 points to the array

		mov r3, #10
1:
    str r2, [r1]
		add r1, #4 // move to the next memory location
		subs r3, #1
    bne  1b

   add r1, sp, #52
    mov r1, #0
  	mov r3, #10
1:
    strb r2, [r1]
		add r1, #4 // move to the next memory location
		subs r3, #1
    bne  1b
	 */
}
