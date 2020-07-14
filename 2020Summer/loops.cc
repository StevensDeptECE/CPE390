#include <iostream>
using namespace std;

int main () {
  //count from 0 to 9
  for (int i = 0; i < 10; i++){
    cout << i << endl;
    
  }

  // relational operators < <= > >=   ==   !=
  
    //count from 10 down to 0
    for (int i = 10; i >= 0; i--){
        cout<<i<<endl;
    }


  for (int i = 1; i <= 1024; i *= 2)
    cout << i << ' ';
  cout << '\n';


    //count odd numbers between 1 and 21 [1,21]
    for(int i = 1; i<=21; i+=2){
        cout<<i<<endl;
    }


}