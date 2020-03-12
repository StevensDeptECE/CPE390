#include <iostream>
using namespace std;

void f();
void g() {
	for (int i = 0; i < 1000000000; i++)
		;
}

void readSeconds() {
	int secondsInYear = 365 * 24 * 60 * 60;
	cout << secondsInYear;
	int age;
	cin >> age;
	cout << age * secondsInYear << '\n';
}

void sum() {
	int sum = 0;
	for (int i = 0; i < 100; i++)
		sum  += i;
  cout << sum << '\n';	
}

void callfunction() {
	for (int i = 0; i < 100; i++)
		f();
}

int main() {
	readSeconds();
	g();
  sum();
	callfunction();
}
