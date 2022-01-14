int main() {
  for (uint8_t i = 0; i < 300; i++)
    cout << i; // 01234...2550
  cout << '\n';

  int a = 2;
  int b = a++; // b = a, a=a+1;  b=2, a=3
  int c = ++a; // a=4, c = 4
  // a = 4

  int z = a++ - b--  * ++c; // read that, sucker.
  
  for(uint32_t i = 10; i > 0; i--)  // 10987654321
    cout << i ;
  cout << '\n';

  for(uint32_t i = 10; i >= 0; i--) //109876543210 429124124
    cout << i;
  cout << '\n';

  /**
     000  0
     001  1
     010  2
     011  3
     100  -4
     101  -3
     110  -2
     111  -1
         8421
     10100100
     01011011
           +1
      1011100 = 64+28 =  -92
   */
  for (int8_t i = 0; i < 300; i++)
    cout << i; // 01234...127-128-127-126...0
  cout << '\n';

  //what is the problem with using int this way?
  for (int i = 0; i < 100000; i++)
    cout << i;
}
