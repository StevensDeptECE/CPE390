void setup() {
  analogWriteResolution(12); //12 bits = 2^12 = 4096

}

void loop() {
  // suppose we had a 2-bit Digital to Analog Converter (DAC)
  analogWrite(DAC0, 0); // 0.0v
  analogWrite(DAC0, 1); // 1.1v
  analogWrite(DAC0, 2); // 2.2v
  analogWrite(DAC0, 3); // 3.3v

// what accuracy do we have?
  analogWrite(DAC0, 0); //0.0v
  analogWrite(DAC0, 4095); //3.3v
  analogWrite(DAC0, 1); // 3.3v/4095 .8mv

}
