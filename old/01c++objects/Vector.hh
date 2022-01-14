class Vector {
private:
	double x,y,z;
public:
	Vector(double x = 0, double y = 0, double z = 0) : x(x), y(y), z(z) {}
	friend Vector operator +(Vector a, Vector b) {
		Vector ans(a.x + b.x, a.y+b.y, a.z+b.z);
    return ans;
	}
	friend ostream& operator <<(ostream & s, const Vector& v) {
		return s << v.x << ',' << v.y << ',' << v.z;
	}
};
