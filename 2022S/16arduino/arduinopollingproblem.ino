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
	for (int i = 0; i < 50; i++) {
		delay(1);
		if (digitalRead(3) == HIGH) {

		}
	}
		
	digitalWrite(2, LOW);
	delay(50);
	if (digitalRead(3) == HIGH) {

	}
	if (digitalRead(4) == HIGH) {

	}
}
