Overview
========
The spi_polling_board2board_master example shows how to use spi driver as master to do board to board transfer with 
polling:

In this example, one spi instance as master and another spi instance on othereboard as slave. Master sends a piece of
data to slave, and receive a piece of data from slave. This example checks if the data received from slave is correct.

Toolchain supported
===================
- GCC ARM Embedded  10.3.1
- MCUXpresso  11.6.0

Hardware requirements
=====================
- Micro USB cable
- Two LPCXpresso55S16 boards
- Personal Computer

Board settings
==============
Connect SPI master on board to SPI slave on other board
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Master_board(SPI7)           Slave_board(SPI7)                          
Pin Name   Board Location     Pin Name   Board Location                     
MISO       J9    pin 11       MISO       J9    pin 11
MOSI       J9    pin 9        MOSI       J9    pin 9
SCK        J9    pin 13       SCK        J9    pin 13
SSEL1      J9    pin 2        SSEL1      J9    pin 2
GND        J9    pin 8        GND        J9    pin 8
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The jumper setting:
    Default jumpers configuration does not work,  you will need to add JP20 and JP21 (JP22 optional for ADC use)

Prepare the Demo
================
1.  Connect a micro USB cable between the PC host and the CMSIS DAP USB port (J1) on the board
2.  Open a serial terminal with the following settings (See Appendix A in Getting started guide for description how to determine serial port number):
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3.  Download the program to the target board.
4.  Reset the SoC and run the project.

Running the demo
================
When the demo runs successfully, the log would be seen on the CMSIS DAP terminal like:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Master Start...!

Succeed!
​~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
