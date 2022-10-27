int main(){
	const double a = 1.2;
	const double b = 5.7;
	double r;
	double x;
	double y = a*x*b; //Faster is a*b*x
	double y2 = a*x+b*x; //Faster is (a+b)*x
	double y3 = a*x/r/r; //Faster is a*x/(r*r)
}
