#include <iostream>
using namespace std;
int add(int a, int b);

//   1234
// + 4928

//add(int,int) ==> _Z3addii // name mangling
int main() {

	cout << add(2, 3) << '\n';
	return 0;
}
