#include <iostream>
#include <iomanip>
using namespace std;
void printFrom(float start, float end){
  cout<<"=========================="<<endl;
  for(float i = start; i<=end; i++){
    cout<<i<<endl;
  }
  cout<<"=========================="<<endl;
}

void printFrom(float start, float step, float end) {
  cout << setprecision(7);
  for (float i = start; i <= end; i += step) cout << i << " ";

  cout << "\n";
}
void printFrom2(double start, double step, double end) {
  cout << setprecision(15);
  for (double i = start; i <= end; i += step) cout << i << " ";

  cout << "\n";
}

void findEpsilon() {
  cout << setprecision(15);
  for (double eps = 1.0; eps + 1.0 > 1.0; eps = eps / 2)
    cout << eps << '\n';
}

void findEpsilonLD() {
  cout << setprecision(30);
  for (long double eps = 1.0; eps + 1.0 > 1.0; eps = eps / 2)
    cout << eps << '\n';
}

int main() {
  printFrom(1.0f, 100.0f);
  printFrom(1.0f, 0.1f, 100.0f);
  printFrom2(1.0, 0.1, 100.0);
  findEpsilon();
  findEpsilonLD();
}