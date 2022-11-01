#include <iostream>

int f(int thiscanbeanything, int); // _Z1fii

int main() {
    int z = f(2,3);
    std::cout << z << '\n';
}

