#include <cmath>

void setup() {
  analogWriteResolution(12);
}

void loop() {
  int n = 10 samples per wave
  // equation is floating point!   y = sin(440 t)
  // your number must map to 0 ..4095

  // suggestion: pick 2048 is the midpoint. Consider that 0
  // sine wave  ~2048 sin(440t) + 
  
  analogWrite(DAC0, v);
  //delay(1); // 1 ms
  delayMicroseconds(??); // 1/440sec / 10
}
