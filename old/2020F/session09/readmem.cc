#include <iostream>
using namespace std;

int sum(int x[], int len);

int main() {
	int x[] = {4, 3, 9, 1241921, 1251294}; // ldr r2, [r0]     add r0, #4
	cout << sum(x, 3);

	char s[] = "testing"; // ldrb r2, [r0]      add r0, #1


	double y[] = {2.5, 4.8, 1.2}; // vldr.f64 d0, [r0]       add r0, #8
	float y[] = {2.5f, 4.8f, 1.2f}; // vldr.f32 s6, [r0]    
}
