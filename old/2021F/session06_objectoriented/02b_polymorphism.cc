#include <iostream>
#include <fstream>
#include <vector>

#include <cmath>

const double pi = 3.14159265358979;
using namespace std;

/*
	Represent any 2d shape that can draw itself in gcode
 */
class Shape {
public:
	virtual void draw() const = 0; // all shapes must draw in gcode
};

const double f = 0.5; // magic constant, how much to squirt out. depends on
// thickness of the filament and how thick the bead of plastic is on the printer

class Circle : public Shape {
private:
	double radius;
	uint32_t facets;
public:
	Circle(double radius, uint32_t facets) : radius(radius), facets(facets) {}
	void draw() const override {
		double e = 0;
		double lastx = radius, lasty = 0;
		cout << "g0 x" << lastx << " y" << lasty << '\n';
		double ang = 2*pi/facets;
		double length = radius * ang;
		for (int i = 0; i < facets; i++, ang += 2*pi/facets) {
      double x = radius * cos(ang), y = radius * sin(ang);
			e += length * f;
			cout << "g1 x" << x << " y " << y << " e" << e <<   "\n";

		}
	}
};

class Square : public Shape {
private:
	double side;
public:
	Square(double side) : side(side) {}
	void draw() const override {
		double e = 0;
		cout << "g0 x" << -side/2 << " y" << -side/2 << '\n';
		e += side * f;
		cout << "g1 x" << +side/2 << " y " << -side/2 << " e" << e  << "\n";
		e += side * f;
		cout << "g1 x" << +side/2  <<  " y " << +side/2 << " e" << e << "\n";
		e += side * f;
		cout << "g1 x" << -side/2  << " y " << +side/2 << " e" << e << "\n";
		e += side * f;
		cout << "g1 x" << -side/2  << " y " << -side/2 << " e" << e << "\n";
	}
};

int main() {
	const uint32_t facets = 20;
	vector<Shape*> shapes;
	shapes.push_back(new Circle(3.0, facets));
	shapes.push_back(new Square(4.0));

	for(auto s : shapes) {
		s->draw();
	}	
}
