#include <iostream>
using namespace std;

class A {};

class B {
private:
  int x,y;
public:
  void f() {
    x = 14; y = 92;
  }
};

class point{
private:
    uint32_t x,y;
public:
point(uint32_t x, uint32_t y): x(x), y(y){}
point(): x(0), y(0) {}
void print() const {
    cout << "X coordinate: " << x << " Y coordinate: " << y << "\n";
}

friend std::ostream& operator << (std::ostream& s, const point& p){
    return s << "X coordinate: " << p.x << " Y coordinate: " << p.y << "\n";

}

};

// -74.00283, 40.01286



class vec{
  private:
    double x, y;
  public:
    vec(double x = 0, double y = 0): x(x), y(y) {}
    void print() const { cout << "X = " << x << ", Y = " << y << endl;}
    //vec(): x(0.0), y(0.0) {} 
  friend ostream& operator << (ostream& s, const vec& v) {
    return s << "X = " << v.x << ", Y = " << v.y << endl;
  }
  friend vec operator + (const vec& c, const vec& d)
  {
    return vec(c.x + d.x, c.y + d.y);
  }

  vec operator - (const vec& d) const
  {
    return vec(this->x - d.x, this->y - d.y);
  }

  vec add (const vec& d) const
  {
    return vec(x + d.x, y + d.y);
  }
};

int main() {
  int x;
  cout << "sizeof(x) = " << sizeof(x) << '\n';
  A a1; 
  cout << "sizeof(A)" << sizeof(A) << '\n';
  // identity principle: all objects have a unique identity
  A a2;
  cout << "sizeof(A)" << sizeof(a2) << '\n';

  B b1;
  //B b2(); // THIS IS NOT AN OBJECT this is a function prototype b2 that returns objects of type B
  b1.f();
  //b2.f();

  //Error: declaration must match constructor! point p2(23);
  const point p(100, 276);
  point p2; //(0,0)
  point p3(26, 192);
  //point p4 = p + p3;
  p.print();
  cout << p << '\n';
  const vec v(-74.0026, 40.1238);
  vec v2; // (0,0)
  vec v3(5); // (5.0, 0.0)
  vec v4(0, 9);
  vec v5 = v + v4;
  vec v6 = v.add(v4);
  vec v7 = v - v4;
  v.print();
  cout << v << '\n';
}