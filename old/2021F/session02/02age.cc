#include <cstdint>
#include <iostream>
using namespace std;

int convertToSeconds(uint64_t years) {
    return years * (365 * 24 * 60 * 60);
}


int main() {
  int age;
  cout << "Please enter your age: ";
  cin >> age;

  uint64_t ageInSeconds = age * 365 * 24 * 60 * 60;
  cout << ageInSeconds << '\n';
}
