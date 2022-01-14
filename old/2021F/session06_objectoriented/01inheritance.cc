#include <iostream>

using namespace std;

class A {
private:
	uint32_t x;
	uint64_t y;
public:
	A(uint32_t x, uint64_t y) : x(x), y(y) {}

	uint32_t getX() const { return x; }
	uint32_t getY() const { return y; }
};

// multiple inheritance exists, we won't be doing it
//class MushuChicken : public Chicken, public Mushu {
//};
	
class B : public A { // B inherits from A, B is_a A, B is_a kind of A
	uint32_t z;
public:
	B(uint32_t x, uint64_t y, uint32_t z) : A(x,y), z(z) {}
};

// sizeof(A) == 16
// x x x x _ _ _ _
// y y y y y y y y
//sizeof(B) = 24

// x x x x _ _ _ _
// y y y y y y y y
// z z z z _ _ _ _


class Thingy {
private:
	char c;      // c _ _ _ _ _ _ _
	double f;    // f f f f f f f f
	uint32_t a;  // a a a a _ _ _ _
	uint64_t b;  // b b b b b b b b
	uint32_t e;  // e e e e d _ _ _
	char d;
};

class Thingy2 {
private:
	double f;    // f f f f f f f f
	uint64_t b;  // b b b b b b b b
	uint32_t a;  // a a a a e e e e
	uint32_t e;  
	char c;      // c d _ _ _ _ _ _
	char d;
};

// if you can live with less data in b...
class Thingy3 {
	double f;    // f f f f f f f f
	uint32_t b;  // b b b b c d _ _
	char c;
	char d;
	uint32_t a;  // a a a a e e e e
	uint32_t e;  
};
	
class Airplane {
private:
	float fuel;
public:
	Airplane(float fuel) : fuel(fuel) { }
	void fly() {
		fuel--;
		if (fuel <= 0)
			crash();
	}
	void crash() {
	}
	void land() {}
};

//    derived                base  (C++ terminology)
class FighterPlane : public Airplane {
public:
	//	FighterPlane() : Airplane() {}
	FighterPlane() : Airplane(100) {}
	void shoot() {
		cout << "bangbang";
	}
};

class PassengerPlane : public Airplane {
private:
	uint32_t numPassengers;
public:
	PassengerPlane(float fuel, uint32_t numPassengers)
		: Airplane(fuel), numPassengers(numPassengers) {}
	void serveCoffee() {
		cout << "glugglug";
	}
};


int main() {
	A a1(2, 100000000000ULL);
	cout << "x=" << a1.getX() << " y=" << a1.getY() << '\n';

  Airplane a(100);
	for (int i = 0; i < 50; i++)
		a.fly();
	a.land();
	//ILLEGAL:	a.shoot(); 

	FighterPlane f;
	f.fly();
	f.shoot();

	PassengerPlane p(105, 32);
	p.fly();
	p.serveCoffee();
	//	p.shoot();
}
