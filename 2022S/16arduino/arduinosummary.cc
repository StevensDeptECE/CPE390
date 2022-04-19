//#include <cstdint>
void setup() {
  //uint64_t x;
	// note: don't use float unless you really need it on original arduino
	// declaring a float will take approx 4k memory float y;
  pinMode(2, OUTPUT); // you will write 5v or 0V
	pinMode(7, INPUT);   // you will read
  Serial.begin(9600);// speed to communicate with the host computer
}

/*
	Arduino UNO voltage = 5V
	Arduino Due voltage = 3.3V
 */
void loop() {
	digitalWrite(2, HIGH); // write high voltage to that pin
	digitalWrite(2, LOW); // write low voltage (0V) to that pin
	
	digitalWrite(3, HIGH); // will not work since you did not specify OUTPUT
	int v = digitalRead(7);
	if (v == HIGH || v == LOW) {
		Serial.println("duh!"); // this takes 4 * 1/960th of a second
	}

	if (digitalRead(7) == LOW) {

	}

	if (digitalRead(7) == HIGH) {

	}

	//	analogReadResolution(12); // set resolution if different than defaul 
	int a = analogRead(A0); // read an analog input
	// UNO: 10 bit accuracy, 7700 samples/second  0..1023
	//Due: 12 bit accuracy, 1M s/s   84Mhz ARM 32-bit

	/*
		example: bullet going 180m/s length = 0.8cm = 0.008m
    can you detect it in a light beam with 7700 samples/second?
    how far does the bullet travel in 1/7700 sec
	 */

	// for any PWM pin (Pulse width modulation)
	analogWrite(3, 128); // number from 0 to 255 controls duty cycle

	//	analogWriteResolution(12); // set resolution if different than default
	// for Arduino Due, you can write to two DAC pins to put out waveforms
	analogWrite(DAC0, v); // v = 0 .. 4095
