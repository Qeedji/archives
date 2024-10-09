# Driver USB to serial: supported devices vendor ID

#### **SUMMARY** `2016-05-10` (last update)
- The ```USB-to-serial``` devices drivers supported by Gekkota are:
	- PROFILIC (vendor ID hex: 067b) and
	- FTDI (vendor ID hex: 0403)
#### **INFORMATION**
- The goal of this documentation is to install serial interface on a USB connector
- for example to use AVCmd Serial Web IDL
	- For SMA300, beware of using the appropriate ```uart_1``` or ```uart2``` in Web IDL AVCmd serial html file
#### **COMPATIBILITIES**
- SMA300 (PSN not supporting WWAN)
- Gekkota 3.12.31 (or above)

#### **CONFIGURATION OF YOUR SERIAL INTERFACE**
- These preference are permitting to configure your serial interface
	- innes.adapter.serial.uart_1.config
	- innes.adapter.serial.uart_1.syspath
	- innes.adapter.serial.uart_2.config
	- innes.adapter.serial.uart_2.syspath
	- innes.adapter.serial.uart_3.config
	- innes.adapter.serial.uart_3.syspath
	- innes.adapter.serial.uart_4.config
	- innes.adapter.serial.uart_4.syspath
- Defaut value
	- innes.adapter.serial.uart_1.config
		- ```{"baudrate":9600,"parity":"none","stopbits":"1","flowcontrol":"off"}```
	- innes.adapter.serial.uart_1.syspath
		- ```/dev/ttyUSB0```
- In case you are using USB-serial adaptor 4->1, 3->1 or 2->1, it is advised to change the syspath for uart_2, uart_3 and uart_4 to respectively,
	- ```/dev/ttyUSB1```
	- ```/dev/ttyUSB2```
	- ```/dev/ttyUSB3```
#### **WHAT ABOUT OTHER VENDOR ID**
- These other vendors showed below are not supported because they have been deliberately inactivated in the source code to save memory code place
	- ADI
	- ATMEL
	- BAYER
	- DE
	- ELEKTOR
	- EVOLUTION
	- FIC
	- GN_OTOMETRICS
	- ICOM
	- IDTECH
	- INTERBIOMETRICS
	- IONICS
	- JETI
	- KOBIL
	- KONDO
	- LARSENBRUSGAARD
	- MARVELL
	- MICROCHIP
	- MOBILITY
	- MTXORB
	- NEWPORT
	- OCT
	- OLIMEX
	- PAPOUCH
    - PI
    - POSIFLEX
    - QIHARDWARE
    - RATOC
    - RTSYSTEMS
    - SEALEVEL
    - ST
    - TELLDUS
	- TESTO
	- TML
#### **YOU DON'T REMIND THE VENDOR ID OF YOUR ADAPTER: GET IT WITH LINUX COMMAND**
- In case you don't remind the apaptor device vendor, it is possible to retrieve it with a linux command line (patch installation is required to navigate in the linux file system, contact support.innes.pro for more information),
	- disconnect your adaptor USB-serial
		- type: lsusb
			- ex
				- ```Bus 001 Device 004: ID 0424:2514```
				- ```Bus 001 Device 001: ID 1d6b:0002```
	- connect adaptor USB-serial, and your device appears
		- type: lsusb
			- ex
				- ```Bus 001 Device 004: ID 0424:2514```
				- ```Bus 001 Device 001: ID 1d6b:0002```
				- ```Bus 001 Device 006: ID 067b:2303```
			- The added line is corresponding to your own adapter
			- Description
				- in the line ```Bus 001 Device 006: ID 067b:2303```,
					-  The vendor ID is the first value (ex: ```067b```)
					-  The device ID (or product ID) is the second value (ex: ```2303```) (2303 = Device 2303 HXA)
			- Information
					- typing vendor ID in a Web browser ("vendor ID" + "067b") should lead to the name of your adaptor vendor
