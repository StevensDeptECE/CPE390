#include <iostream>
using namespace std;

uint64_t f(uint64_t a, uint64_t b) {
  return a*b;
}

uint64_t prod(uint64_t a, uint64_t b){
  uint64_t s = 1;
  for (uint64_t i = a; i <= b; i++){
    s = s*i; // s *= i;   += -= *= /= %=
  }
  return s;
}


double prod2(uint64_t a, uint64_t b){
  double s = 1;
  for (uint64_t i = a; i <= b; i++){
    s = s*i; // s *= i;   += -= *= /= %=
  }
  return s;
}



uint64_t sum(uint64_t a, uint64_t b){
  uint64_t s = 0;
  for (uint64_t i = a; i <= b; i++){
    s += i;
  }
  return s;
}




int main() {
  cout << f(2,3) << '\n';

  //cout << hypot(2,3) << '\n';

  cout << sum(5, 10) << '\n'; // 5 + 6 + 7 +8 + 9 + 10
  cout << sum(1, 1000000) << '\n'; // 1 + 2 + 3 + ...

  cout << prod(3, 6) << '\n'; // 3*4*5*6
  for (int i = 1; i <= 200; i++)
    cout << i << ": " << prod(1, i) << '\n';

}