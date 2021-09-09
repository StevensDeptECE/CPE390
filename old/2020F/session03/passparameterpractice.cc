#include <cmath>
#include <iostream>
#include <iomanip>
using namespace std;

int x;
namespace stevens {
    int x;
}

void convertToPolar(double x, double y, double& r, double& theta){
    r = sqrt(x*x+y*y);
    theta = atan2(y,x);
    ::x = 11;           // NOT REQUIRED FOR COURSE, just FYI
    stevens::x = 22;    // NOT REQUIRED FOR COURSE, just FYI
}

void convertToRect(double r, double theta, double& x2, double& y2) {
   x2 = r * cos(theta);
   y2 = r * sin(theta);
}

int main() {
  double x, y;
  double r,theta;
  double x2,y2;

  cin >> x >> y;
  cout << setprecision(15) <<
     x << "," << y << '\n';
  convertToPolar(x, y, r, theta); // r= hypotenuse, theta = atan2 do not use arctan(y/x)

  cout << r << "," << theta << '\n';

  convertToRect(r, theta, x2, y2); // compute the reverse

  cout << x2 << "," << y2 << '\n';


}