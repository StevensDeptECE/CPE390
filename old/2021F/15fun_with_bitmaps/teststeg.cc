#include <iostream>
#include "steganographic_image.hh"

using namespace std;

int main(int argc, char **argv) {
	try {
		const char s[] = "This is a test. I am hiding this secret message"
		"inside this picture of the Andromeda Galaxy. Will we be able to tell that"
		"the message is there from looking at the picture? Almost certainly not";
		cout << s << '\n';
		steganographic_image steg("catseye.jpg", 0, 2);
		const uint64_t* data = (const uint64_t*)s;
		steg.hide(data, sizeof(s)/sizeof(uint64_t));
		steg.write();

	} catch(const char* msg) {
		cout << msg << '\n';
	}
	return 0;
}
