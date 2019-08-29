#include <iostream>
using namespace std;

int main() {
	int year = 1;
	cout << 24*60*60 << '\n';
	int secondsPerYear = year * 365 * 24 * 60 * 60;
	cout << secondsPerYear << '\n';
	int age = 18;
	cout << age * 365 * 24 * 60 * 60 << '\n';
	age = 69;
	cout << age * 365 * 24 * 60 * 60 << '\n';
	long long secondsIn69Years = age * 365 * 24 * 60 * 60;
	cout << secondsIn69Years << '\n';
	//type promotion
	cout << 69LL * 365 * 24 * 60 * 60 << '\n';
}
