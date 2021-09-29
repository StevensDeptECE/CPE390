#include <iostream>

// class vec_3d ...


int main() {
	vec_3d a(1.5, 2.1, 3.8); // x,y,z
  vec_3d b(2.1, 3.2);  // z = 0 by default
	vec_3d c = a + b;
	vec_3d d = a * 2.0; // (2*1.5, 2*2.1, 2*3.8)
	
}
