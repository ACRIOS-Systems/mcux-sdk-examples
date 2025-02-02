Overview
========
The uart_dma ring buffer example shows how to use uart driver with DMA:

In this example, one uart instance connect to PC through uart, the board will
send back all characters that PC send to the board. And data from PC will be firstly 
stored to a ring buffer using DMA methord, and than application will read the ring buffer 
in a certain time, such as 10ms. While data has already be stored in the ring buffer,
routine will send them back.

And the ring buffer is achieved based on the DMA's source address modulo feature, the base address
should be aligned to a 0-modulo-boundary.


Toolchain supported
===================
- GCC ARM Embedded  10.3.1
- MCUXpresso  11.6.0

Hardware requirements
=====================
- Micro/Micro USB cable
- TWR-KM35Z75M board
- Personal Computer

Board settings
==============
No special settings are required.

Prepare the Demo
================
1.  Connect a USB cable between the host PC and the OpenSDA USB port on the target board.
2.  Open a serial terminal with the following settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3.  Download the program to the target board.
4.  Reset the SoC and run the project.

Running the demo
================
When the example runs successfully, the following message is displayed in the terminal:

~~~~~~~~~~~~~~~~~~~~~~~~~
UART DMA ring buffer example
Board will send back received data
~~~~~~~~~~~~~~~~~~~~~~~~~
