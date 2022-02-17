#include <iostream>
#include <iomanip>
using namespace std;

int main() {
  for (int i = 1; i <= 10; i++)
		cout << i;
	cout << '\n' << endl;
	/*
    123.76
1/10 = "nice" = 0.1
1/3 = "repeating" = 0.33333333

10 is not Divisible by 3

sign
exponent
mantissa

    s eeeeeeee mmmmmmmmmmmmmmmmmmmmmmm


               
1/2           .1
1/4           .01
1/8           .001
              .101    1/2 + 1/8 = 4/8 + 1/8 = 5/8
							.1001   = 1/2 + 1/6 = 8/16 + 1/16 = 9/16
1.5          1.1  


 1/10 =       .0001011011011...
	 */

	
	cout << setprecision(8);
	//0.1 is not exact in floating point, roundoff error
	// we don't have 15 digits! Float only has 8!
	for (float f = 0; f <= 10; f += 0.1) 
		cout << f << ' ';
	cout << '\n';

	for (float f = 0; f <= 50; f += 0.5)
		cout << f << ' ';
	cout << '\n';

	//0.1 is not exact in floating point, roundoff error
	cout << setprecision(8); // only print out 8 digits, will look perfect!
	for (double f = 0; f <= 10; f += 0.1)
		cout << f << ' ';
	cout << '\n';
	
}
