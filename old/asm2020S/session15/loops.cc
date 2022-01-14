#include <iostream>
using namespace std;

void f(int n) {
	for (int i = 0; i < n; i++)
		cout << i; // printsomething(cout, i)
}

int main() {
	int n;
	cin >> n;
	//	f(10);
	f(n);
	//	f(12);
	/*
		mov r4, #0

.L1:
		ldr r0, .cout
    mov r1, r4
    bl whatevertheprintfunctioniscalled
		add r1, #1
		cmp r1, #10
		blt .L1

	
	for (int i = 0;  ; i++)
		cout << "test";

	while(true)
		cout << "test";
	 */
		
	int i = 0;
	do {
		cout << i;
	} while (i++ < 10);

}
