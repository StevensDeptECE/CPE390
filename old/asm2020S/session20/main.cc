#include <iostream>
using namespace std;
void f(int x[], int n);
int sum(int x[], int n);
int sum2(int x[], int n);
int inc(int x[], int n);
int inc2(int x[], int n);
double sum(double x[], int n);

int main() {
	int x[] = { 5, 4, 3};
	f(x, 3);
	cout << sum(x, 3) << '\n';
	cout << sum2(x, 3) << '\n';
	inc(x, 3);
	for (int i = 0; i < 3; i++)
		cout << x[i] << ' ';
	cout << '\n';
	inc2(x,3);
	for (int i = 0; i < 3; i++)
		cout << x[i] << ' ';
	cout << '\n';
	double y[] = {1.5, 2.5, 3.0};
	cout << sum(y, 3) << '\n';

	int z[4] = {5, 4, 3, 0};
	//             5, 5, 5
	//	for (int i = 0; i < 3; i++)
	//		x[i+1] = x[i];
	//          5   5   4   3
	for (int i = 2; i >= 0; i--)
		x[i+1] = x[i];
}
