#include <iostream>
#include <fstream>

int main() {
	cout << "hello";
	ofstream f("test.dat");
	f << "yoho!";
}
