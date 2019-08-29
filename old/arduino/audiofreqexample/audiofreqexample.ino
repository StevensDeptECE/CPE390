void setup() {
  pinMode(12, OUTPUT);
}

void loop() {
  for (int i = 0; i < 500; i++) {
    digitalWrite(12, HIGH);
    delayMicroseconds(1000);
    digitalWrite(12, LOW);
    delayMicroseconds(1000);
  }
  for (int i = 0; i < 1000; i++) {
    digitalWrite(12, HIGH);
    delayMicroseconds(500);
    digitalWrite(12, LOW);
    delayMicroseconds(500);
  }

}
