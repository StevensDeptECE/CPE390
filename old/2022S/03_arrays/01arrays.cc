#include <iostream>
using namespace std;

void print(char x[]) {
	cout << x << '\n';

	// ==    !=   <   <=  >  >=
	
	for (int i = 0; x[i] != 0; i++)
    cout << (int)x[i] << ' ';
	cout << '\n';
}

int main() {
	uint32_t a[10] = {9, 7, 1};
	uint32_t b[] = {9, 8, 7, 6, 5};

	for (int i = 0; i < 10; i++)
		cout << a[i] << ' ';
	cout << '\n';

	for (int i = 0; i < sizeof(b)/sizeof(int); i++)
		cout << b[i] << ' ';
	cout << '\n';

	// 'a' = 97 'b' = 98
	char s[] = "hello"; // each letter is 1 byte. the 6th letter is '\0'
  print(s);

	char s2[] = "testing testing 123";
	print(s2);
}
