#include <stdio.h>

void g() {
  int x = 2;
	printf("%d", x);
}

void f() {
  int x = 2;
	printf("%d", x);
	g();
}

void oneFunc() {
	int x[20] = {0};
	for (int i = 1; i < 20; i++)
		x[i] = x[i-1] + 1;
	printf("%d", x[19]);
	
}

int main() {
	oneFunc();
  int x = 2;
	printf("%d", x);
  f();
}
