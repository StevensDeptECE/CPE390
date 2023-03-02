# Arduino Summary

## Arduino API

digitalWrite(pin, HIGH);  // HIGH = 1
digitalWrite(pin, LOW);   // LOW = 0
delay(1000);  // delay in milliseconds
delayMicroseconds(1192); // accurate to 4 uSec
int v = analogRead(A0); // 
// there is a command to set the analogResolution(12)
uint32_t t = micros();

## Arduino UNO


## Arduino Due


## Analog to Digital Converter (A/D, ADC)

What is analog? a continuous range of measurement  0V ... Vcc
An analog to digital converter reads in an analog voltage and converts it to a discrete number
this takes time (not instantaneous)

There is quantization and discretization error in the readings

Shannon, Nyquist

Sample above the Nyquist Limit to reproduce a signal with freq f, sample at least 2f


00      = 0V
01      = ??  5/3V = 1.66V
10      = ??  2*5/3V = 3.33V
11      = 5V

halfway is the worst error 1/2 precision

Original Arduino = 10 bits
0000000000      0    = 0V
...
1111111111      1023 = 5V

2^10 = 1024 = 1k

5/1024 = 4.88mv

Metrics of A/D quality
bits
samples per second


Tradeoffs
$$$
heat/power

## Lab 6 instructions

1. Build two photogates
2. Measure the voltages analogRead() when lit and blocked
3. Measure the time the first beam gets blocked
4. Measure the time the second beam gets blocked
5. measure the distance between the two sensors
6. $ distance/(t1-t0) = dx/dt = velocity



