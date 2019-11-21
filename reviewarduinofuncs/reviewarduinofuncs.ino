#include <cmath>
using namespace std;

void setup() {
  Serial.begin(9600);// bits per second (bps)
  pinMode(7, OUTPUT); // INPUT, INPUT_PULLDOWN
  analogWriteResolution(12);
}

// 2**10 = 1024
// 2**12 = 4096
void loop() {
  // 8 bits per byte, but also 2 synchronization
  Serial.print("yohoho");
  digitalWrite(7, HIGH);
  int v = digitalRead(9);
  analogWrite(DAC0, 2048);
  for (int i = 0; i < 4096; i++) {
    analogWrite(DAC0, i);
    delayMicroseconds(...);
  }
  double y = A * sin(x) + OFFSET;    
}
