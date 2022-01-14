#include <iostream>
using namespace std;
int main() {
	
	int a, b;
	cin >> a >> b;
	
	if (a < b) {
		cout << "less";
	} else {
		cout << "xxx";
	}
	/*
		cmp r2, r3
    bge .L1
@ this is the else
   	ldr	r0, .L6+4 @ trust them, this is r0=cout
    ldr r1, .L6+8  @"less"
  	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc

.L1:   @ if ... THEN part
   	ldr	r0, .L6+4 @ trust them, this is r0=cout
    ldr r1, .L6+12  @"xxx"
  	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc

	 */
	return 0;
}
