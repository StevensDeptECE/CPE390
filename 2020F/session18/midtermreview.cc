#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int sum(int a, int b) {
	int s = 0;
	for (int i = a; i <= b; i++)
		s += i;
	return s;
}

void windchill() {
  for (int v = 5; v <= 60; v += 5) {
		for (int t = 40; t >= -45; t -= 5) {
			double wc = 35.74 + 0.6215*t -
				35.75*pow(v, 0.16) +
				.4275*t*pow(v, 0.16);
			//			double temp = pow(v,0.16);
			//			double wc = 35.74 + 0.6215*t - 35.75*temp + .4275*t*temp;

			//			double wc = 35.74 + 0.6215*t + pow(v,0.16) *(-35.75 + .4275*t);
			cout << setw(5) << round(wc);
		}
		cout << '\n';
	}

}
/*
	1 2 3 4 5
  2 4 6 8 10
  3 6 9 12 15
  4 8 12 16 20
  5 10 15 20 25
 */
void multiplicationTable(int n) {

}


int main() {
	cout << sum(4, 10);
	windchill();
}
