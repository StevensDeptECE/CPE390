#include <iostream>
using namespace std;

int main () {
  cout << "Please enter your age\n";
  uint64_t a;
  cin>>a;
  uint64_t AgeInSeconds = a*365*24*60*60;
  cout << AgeInSeconds << "\n";
  return 0;
}
