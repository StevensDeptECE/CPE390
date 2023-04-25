# Busses and Networking

What is a bus?
shared set of wires

CPU has
data bus: read/write data going into/out of the CPU    
address bus: address of the memory location to be read/written (write only)

address bus can also be written by "smart devices"
Direct Memory Access (DMA) (hard drives)


How fast is memory?
DDR4 RAM
DDR5 is out

https://www.newegg.com/g-skill-32gb/p/N82E16820374446?Description=ddr5%20ram&cm_re=ddr5_ram-_-20-374-446-_-Product&quicklink=true

Timing 36-46-46-125 

https://www.newegg.com/corsair-32gb-288-pin-ddr4-sdram/p/N82E16820236607?Description=ddr4&cm_re=ddr4-_-20-236-607-_-Product&quicklink=true

https://en.wikipedia.org/wiki/DDR_SDRAM


Memory access
1. Reading the same memory is cached (fastest)
1. sequential is best
1. nearby is 2nd best
1. Jumping by more than burst mode is worse
1. Jumping out of the memory Row is even worse
1. *Being out of memory and having to demand page memory is worst


# Other PC busses

what is the bus speed, how does it apportion bandwidth (lanes)
what is the cost for advancing to new generations
PCiE    current revision? 4.0
        next            5.0
        3.0 still popular

Gb is Gigabits
GB = Gb/8
USB
    3.2 20Gb/sec
    3.1
    3.0
    2.0
    1.0

Look up the security of USB

## Embedded Systems Busses

1. CANBUS
1. OneWire
1. I2C https://duckduckgo.com/?t=ffab&q=raspberry+pi+I2C&iax=images&ia=images
1. SPI


# Networking

1. Wifi
   1. 802.11b   11Mb/s    WEP encryption  David Kahn "The Codebreakers"
   1. 802.11a
   1. 802.11ax
   1. 802.11ac     WPA2  (attacks possible on setup)

1. Ethernet 802.3
   1. 10Mb/s   10BaseT (coax)
   1. 100Mb/s
   1. 1000Mb/s
   1. 10Gb/s  expensive, runs hot
   1. 2.5Gb/s

What is out there?
Find out how fast networking can get. You will be very impressed

Giga, Tera, Peta, Exa
Find out what the world record is for high speed optical transmission 1.84Pb/s

# iOT

1. Radios  Zigbee, ...
1. HAM License hamstudy.org

