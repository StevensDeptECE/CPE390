int count = 0;

void wheelCounter() {    
  count++;
}

void setup() {
    attachInterrupt(digitalPinToIntterupt(2), wheelCounter), RISING);

}

void loop() {
    digitalWrite(3, HIGH);
    delay(1000);
#if 0
// polling would work like this
    for (int i = 0; i < 1000; i++) {
        delay(1);
        if (digitalRead(2) == HIGH)
         count++;
    }
#endif
    digitalWrite(3, LOW);
    delay(1000);
}