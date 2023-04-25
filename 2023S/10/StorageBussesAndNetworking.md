# Storage, Busses and Networking

## Group Project
*  Instead of test 2, prepare a document summarizing the following information
*  Groups up to 3 people
*  Anything from the internet must be cited
*  Use of chatgpt is encouraged, but you should rewrite it and make it your own
* scalable graphics (svg, pdf) preferred

## Busses Definitions
* What is a bus? Explain it. Show diagrams.
You may use diagrams from the internet if cited. Your own, improved version will score higher.
* Explain different busses shown below and the purpose of each
* For each one, document
    - the number of wires
    - the speed
    - any limitations on the number of different entities connected

CPU has
data bus: read/write data going into/out of the CPU    
address bus: address of the memory location to be read/written (write only)

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




## Storage: Explain the following storage terms
* As usual, the more diagrams you have (particularly your own) the higher your group score
* You should state for each kind of device, amount of storage 
* Express also in $/GB, Gb/area
* Compare to human DNA. How much is a human genome
* Direct Memory Access (DMA) (hard drives) address bus can also be written by "smart devices"
* Block-structured device (like a hard drive)
* volatile storage
* non-volatile storage
* RAM
* ROM
* NAND-flash
* M.2
* hard drive
  * platter, head, sector, track, track-track seek time
* tape drive

## Memory Speed
How fast is memory?
DDR4 RAM
DDR5 RAM
SSD
Hard drive: explain the physics of how it works

Find examples like below, and compare at least one DDR4 RAM to DDR5 RAM
https://www.newegg.com/g-skill-32gb/p/N82E16820374446?Description=ddr5%20ram&cm_re=ddr5_ram-_-20-374-446-_-Product&quicklink=true

Timing 36-46-46-125 

https://www.newegg.com/corsair-32gb-288-pin-ddr4-sdram/p/N82E16820236607?Description=ddr4&cm_re=ddr4-_-20-236-607-_-Product&quicklink=true

https://en.wikipedia.org/wiki/DDR_SDRAM


Memory access
1. Reading the same memory is cached (fastest)
2. sequential is best
3. nearby is 2nd best
4. Jumping by more than burst mode is worse
5. Jumping out of the memory Row is even worse
6. extra credit if you discuss MMU and paging *Being out of memory and having to demand page memory is worst



# Networking
* Create a table summarizing the kinds of wired and wireless network common today
* You can include 10Gb which is not exactly common, but you don't have to include exotic hardware only used in high-end machine rooms
* Compare methods of encryption and explain any vulnerabilities you find
* Report how fast networking can get. You will be very impressed.
  * What's the fastest we can buy for "normal" money
  * What's the fastest used in industry
  * What's the fastest in research labs


1. Wifi
   1. 802.11b   11Mb/s    WEP encryption  David Kahn "The Codebreakers"
   2. 802.11a
   3. 802.11ax
   4. 802.11ac     WPA2  (attacks possible on setup)

2. Ethernet 802.3
   1. 10Mb/s   10BaseT (coax)
   2. 100Mb/s   RJ-45
   3. 1000Mb/s
   4. 10Gb/s  expensive, runs hot
   5. 2.5Gb/s


Giga, Tera, Peta, Exa
Find out what the world record is for high speed optical transmission 1.84Pb/s

# Everything below this point is not assigned
# iOT
1. Radios  Zigbee, ...
1. HAM License hamstudy.org
