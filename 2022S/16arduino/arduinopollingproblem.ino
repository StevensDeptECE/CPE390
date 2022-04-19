/*
	on ARduino to check 2 buttons and blink a light 10 Hz
 */
void setup() {
  pinMode(2, OUTPUT);
	pinMode(3, INPUT);
	pinMode(4, INPUT);
}
void loop() {
	digitalWrite(2, HIGH);
	delay(50); // 10ms = ??? .05
	digitalWrite(2, LOW);
	delay(50); // 10MS = .05
	if (digitalRead(3) == HIGH) {

	}
	if (digitalRead(4) == HIGH) {

	}
}
