#include <iostream>
#include <fstream>
#include <cstring>
using namespace std;

class Body {
private:
	char name[16];
	uint32_t star : 1;
	uint32_t isPlanet : 1;
	uint32_t gasGiant : 1;
	uint32_t rocky : 1;
	uint32_t atmosphere : 1;
  float mass;
	float x,y,z; // position
public:
	Body() {}
	Body(const char name[],
			 bool star, bool isPlanet, bool gasGiant, bool rocky, bool atmosphere,
			 float mass, float x, float y, float z)
		: star(star), isPlanet(isPlanet),
			gasGiant(gasGiant), rocky(rocky), atmosphere(atmosphere),
			mass(mass), x(x), y(y), z(z) {
		strcpy(this->name, name);
	}
	friend istream& operator >>(istream& s, Body& b) {
		bool star, isPlanet, gasGiant, rocky, atmosphere;
		s >> b.name >>
			star >> isPlanet >> gasGiant >> rocky >> atmosphere >>
			b.mass >> b.x >> b.y >> b.z;
		b.star = star;
		b.isPlanet = isPlanet;
		b.gasGiant = gasGiant;
		b.rocky = rocky;
		b.atmosphere = atmosphere;
		return s;
	}
};

int main() {
	Body b;
	ofstream f("planets.bin", ios::binary);
	cin >> b;
	f.write((char*)&b, sizeof(b));
	cin >> b;
	f.write((char*)&b, sizeof(b));
}
