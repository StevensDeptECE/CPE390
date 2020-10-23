#include <iostream>
extern int f(int,int,int,int);
extern int f(int,int,int,int,int);
extern int f(int,int,int,int,int, int);

int main() {
	cout << f(1, 2, 3, 4) << '\n';
  cout <<	f(1, 2, 3, 4, 5) << '\n';
	cout << f(1, 2, 3, 4, 5, 6) << '\n';
	int x[] = {5,1,2};
	cout << f(1, 2, 3, 4, 5,    "abcasdfkasldkfjsa ldkfjsaldkfj", x) << '\n';
           	r0 r1 r2 r3 [sp]  [sp,#4]                           [sp, #8]


							ldr r5, [sp, #4]
							ldr r3, [sp, #8]
}
