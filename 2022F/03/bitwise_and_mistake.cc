#include <iostream>
using namespace std;

int main() {
    int a = 2, b = 97;
    int result = a < 57 & b < 4; 
    if (result) {
        cout << "yes";
    }
}