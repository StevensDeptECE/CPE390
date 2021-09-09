#include <iostream>
using namespace std;
int f(int x) { 
    return x*x;
}

int g(int a, int b) {
    return a+b;
}

double g(double a, double b) {
    return a*b;
}

int main() {
    /*
    1. functions
    2. parameters
    3. type promotion
    */

    int y = f(3.2);
    cout << y << '\n';
    cout << f(2.8f) << '\n';
    cout << f(1001LL) << '\n';
    cout << f('A') << '\n';
    cout << g(2,3) << '\n';
    cout << g(2.5, 3.4) << '\n';
    cout << g(2.5f, 3.43f) << '\n';
    // g(2, 5.2) // if there are two ways of doing it, AMBIGUOUS (error)
    cout << g((double)2, 5.2) << '\n'; //type cast
    cout << g(double(2), 5.2) << '\n'; //type cast
    cout << g(2, int(5.2)) << '\n'; //type cast
    //g(2) // must have 2 parameters!


}