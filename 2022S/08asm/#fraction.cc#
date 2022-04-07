class fraction {
private:
	int num,den;
	fraction add(fraction& b) const;
	fraction(int n, int d) : num(n), den(d) {}
	friend fraction operator +(const fraction& a, const fraction& b) {
		return fraction(a.num*b.den + b.num*a.den, a.den*b.den);
	}
};

int main() {
	fraction a(1,2);
	fraction b(1,3);

	fraction c = a.add(b);
	fraction d = a + b;
	/*
     point x0 to a
     point x1 to b
     bl _ZQ7fraction_3add7fraction method		


     mov w0, 1
		 mov w1, 2
		 mov w2, 1
		 mov w3, 3
		 mul w0, w0, w3 // temp1 = a.num*b.den  
		 mul w2, w2, w1 // temp2 = b.num*a.den
     add w0, w0, w2 // w0 = numerator of fraction
     mul w3, w3, w0 // w3 = denominator
	 *