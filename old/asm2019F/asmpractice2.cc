/*
  In the the following main, assume that each variable is stored in a register as shown in the comments.
  Then write what the assembly code generated would be

*/

int main() {
  int a = 18; // r0
  int b = 11; // r1
  int c = a + b; //r2
  int d = (c & b) + a; // r3 remember, & is AND

  int sum = 0; // r4
  for (int i = 0; i < 10; i++) // r5
    sum += i;
  cout << sum << '\n'; // you do not have to write assembler for this one, but it is shown below
  /*
    ldr r0, .locationofcout
    mov r1,r4
    bl thehorrendousnameofoperator<<inc++

   */
}
