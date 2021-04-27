#include <iostream>
using namespace std;

void incstring(char* s);

int main() {
	char s[] = "hello"; // -->ifmmp
	incstring(s);
  cout << s << '\n';	
}
