# PictureFrame
*RELEASE NOTE*

## `2020-01-18` PictureFrame V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.11.11.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SAP10e device
- Add support *Restore factory preferences* button in the APPLI.HTA HTML application
- Add support for NFC badging with the following NFC protocols list available in the APPLI.HTA HTML application:
    - `ISO14443A-106Kbps`
    - `JEWEL-106Kbps`
    - `FELICA-212Kbps`
    - `FELICA-424Kbps`
    - `DEP-106Kbps`
    - `DEP-212Kbps`
    - `DEP-424Kbps`
- Add support for NFC protocol detection when Testcard is activated and USB power bank is plugged
- Add support for temporary secondary content display with NFC badging
- Add support for unitary battery level estimation in % (from 1% to 100%) used in Slate Maintainer mobile application
- Add support for optional wake up on timer in the configuration matrix
- Add support for different left/middle/right button capability or vibration capability depending on the SLATE PSN value. For further information, refer to the SLATE user manual.
- Change: rename *Message Overlay* by *WPAN2 (mobile device)* in the APPLI.HTA HTML application
- Change: increase contrast levels between the black and the white colour
- Fix: in some case, due to wrong battery level estimation, the device could not stop blinking for more than ten minutes. The content could not be done and the interactivity was not working for this duration
- Fix: the date and time was not set properly when pressing on the *setDeviceTime* button of the Slate Maintainer mobile application
- Fix: ghosting effects could remain after content update
- Fix: in some case, the content could be not be downloaded on time
- Fix: in some case, could not stop trying to upgrade software release without succeeding and leading to battery over consumption
- Fix: in some case the battery level was not properly estimated and could not stop looping without ending leading to battery over consumption
- Fix: in some case, the USB storage was not mounted properly when plug the device was plugged to a computer
>##### **COMPATIBILITIES**
- SPE Desktop Windows V1.10.11 (or above)
- SMH300 Gekkota OS V4.13.14
    - not compatible with SMH300 Gekkota OS V3.XX.YY
- SAP10e Regular 1.10.10
- Slate Message Overlay V1.10.10 (or above)
- Slate Maintainer V1.10.10 (or above)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- User manual (1.11.11~003A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/slate106-user_manual-1.11.11~003A_en.pdf)

# OLD VERSIONS HISTORY
***********************************************************************

## `2019-06-27` PictureFrame V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.11.10.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for wake-up by vibration
- Add support for `Message Overlay`
    - require to install the `Slate Message Overlay` mobile application
- Add support for secondary images display when a key is pressed (with *Left*, *Middle* and/or, *Right* keys)
    - the image sequence is defined by a keymap defined in the configuration file
- Add support for button keycode sending through WPAN1
- Add support for new file `APPLI.HTA`, graphics user interface allowing to edit/save the SLATE106 configuration file (`APPLI.CFG`) through USB (MS-Windows only)
- Add support for SLATE106 board revision `rev.D` (3-buttons products)
- Change: when a key pressed is detected, the appropriate red LED is blinking several time. It stops blinking when there is nothing to do or when the action, like a content update, is completed
- Change: wake-up algorithm for the 20 slates in quarter mode to [T + n x 10 sec] instead of [T - n x 10 sec]
- Change: remove some unused parameters from APPLI.CFG:
    - pictureframe.wpan.central.type
    - pictureframe.wakeup.mask
- Change: remove support for testcard.ppk file
    - Note: now the Test card is embedded, and the file testcard.ppk will be automatically removed
- Fix: in some rare case, the SLATE106 content could not be updated anymore
- Fix: in some rare case, below a certain battery level, the software release upgrading could not succeed until emptying completely the battery (with firmware revision V1.10.11 or below)
- The file system robustness has been improved in the firmware revision V1.11.10
- Fix: in some rare case, the SLATE106 could stay in sleep mode forever (with firmware revision V1.10.11 or below)

## `2018-02-20` PictureFrame V1.10.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.10.13.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for working schedule policy
    - when the date is higher than 1st January 2017
        - Monday, Tuesday, Wednesday, Thursday, Friday
        - 8:00 to 19:00
        - Wakes-up every quarters of an hour
    - when the date is lower than 1st January 2017 (example: 1st January 2005)
        - 24/7
	- The date is updated only if the SLATE106 devices is paired with a SMH300 (whose version is upper than 3.10.52)
- Change: decrease considerably the power consumption during the picture updating to increase the batteries lifetime
- Change: improve BLE transfers robustness
- Change: default RTC date is set to 1st January 2005 when the battery level is too low and super-capacitor is discharged
- Fix: when an unexpected value is present in the configuration file APPLI.CFG, the default value is loaded now
- Fix: after a file system format, the picture content could never be displayed (SMH300 configuration)
- Fix: when power bank was plugged at boot-up, the image content update could not be done

## `2017-10-12` PictureFrame V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.10.12.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for test card
	- display the image *testcard.ppk*
	- if not present, clear the display
- Add support for time and date update
- Change: rename configuration file *pf.cfg* into *appli.cfg*
- Fix: files property *time* and *date* was not properly managed
- Fix: after a new configuration (new hub association), the image was only displayed after two consecutive connections to the hub

## `2017-09-15` PictureFrame V1.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.10.11.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: power consumption was too high in standby mode
- Fix: slate106 device was blocked after an USB ejection launched from MS-Windows Desktop Task bar

## `2017-07-17` PictureFrame V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/slate106/pictureframe/pictureframe-slate106-setup-1.10.10.rpk)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for authentication with PIN code
	 -pf.cfg
		- "pictureframe.testcard.enabled"
			- default value: true
		- "pictureframe.picture.filename":
			- default value: "hub.ppk"
		- "pictureframe.wpan.enabled":
			- default value: true
		- "pictureframe.wpan.central.type":
			- default value: "hub"
		- "pictureframe.hostname
			- SLATE106 device name (8 characters)
		- "pictureframe.index"
			- index of this SLATE106 device in the list of SLATE106 device controlled by the SMH300,
		- "pictureframe.wpan.authentication.method"
			- Values:
				- "none" (default) or
				- "pincode"
		- "pictureframe.wakeup.mask"
			- Default value: 1,
		- "pictureframe.wpan.authentication.pincode"
			- 4 digits pin code
- Add support for new features when USB battery is plugged on SLATE106 device
	- test card mode
	- sleep mode inactivated & does not keep advertising its identifiers through Bluetooth Low Energy
		- note: don't use this mode permanently, because it could prevent other SLATE106 devices to advertise properly towards SMH300
- Fix: some USB battery could prevent SLATE106 to work properly
- Fix: pairing was working properly only after two SLATE106 device reboots (new device only)
