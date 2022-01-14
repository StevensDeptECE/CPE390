#include <iostream>
using namespace std;

int main() {
    for (int a = 0; a < 10; a++)  // 0 1 2 3 4 5 6 7 8 9
        cout << a << ' ';
    cout << '\n';

    for (uint8_t i = 1; i <= 10; i++) // i++   i += 1   i = i + 1  ++i
        cout << i << ' ';
    cout << '\n';

    // this will fail here (infinite loop)
//    for (uint8_t i = 0; i < 1000; i++)
//        cout << i << ' ';

    // on the arduino, this will fail! works here
    for (int i = 0; i < 100000; i++)
        ;

    for (int i = 10; i >= 0; i--) {
        cout << i;
    }
    cout <<  "blastoff\n";
    for (int i = 10; i < 0; i--) {
        cout << i;
    }
    cout << '\n';
    for (int i = 1; i < 20; i += 3)
        cout << i << ' ';
    cout << '\n';

//    for (uint32_t i = 10; i >= 0; i--) // infinite loop! can never be < 0!!!
//        cout << i;
//    cout << '\n';
}
