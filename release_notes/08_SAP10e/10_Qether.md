# Qether
*RELEASE NOTE*

`Qether`, or *Qeedji Ethernet Tools*, is a CLI (Command Line Interface) program running on `MS-Windows` able to send private Ethernet frames through a specified Ethernet network interface.

It allows to:

- list the Ethernet network interfaces available on your computer,
- list the Qeedji devices available in a given Ethernet network,
- get the system information from a device,
- update the firmware version of a device by sending a `.bin` firmware,
- update the configuration of a device by sending a `.js` configuration script,
- send a reboot command to a device.

**Before sending a `.js` configuration script on your device or using the discover Qether command, ensure that your application has been upgraded with a suitable application version shown in the compatibility chapter.**

## `2021-09-29` Qether V1.12.10 [download (nt_ia32)](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-nt_ia32-setup-1.12.10.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `discover` Qether command for SBL10e device embedding the application with version 1.10.15 (or above)
- Add support for firmware version printing in the console when launching `discover` Qether command
- Add support for `.js` configuration file for `configure` Qether command
- Remove support for `prefs.json` configuration file for `configure` Qether command
	- consequently, in this version, the `configure` Qether command does not work anymore for SAP10e devices
>##### **COMPATIBILITIES**
- `Qeedji` devices supporting `Qether` commands:
	- `SBL10e` device
		- *occupancy_sensor_ble_enocean* 1.12.10 (or above)
		- *generic_server* 1.12.10 (or above)
		- *m365_room* 1.12.10 (or above)
		- *m365_user* 1.12.10 (or above)
		- *smart_office_obs* 1.12.10 (or above)
		- *regular* 1.12.10 (or above)
	- `SAP10e` device
		- *generic_server* 1.12.10 (or above)
		- *regular* 1.12.10 (or above)
- `.bin` firmware
- `.js` configuration script
- Computer with:
	- `MS-Windows` 7, 10
	- Ethernet network interface

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- `Qether` user manual (1.12.10-001A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-user_manual-1.12.10-001A_en.pdf)
- In case using the `configuration` command, use the `.js` file suitable for your device.
#### **ONE COMMAND AT A TIME**
When using `Qether` tool to update the firmware version for several devices at a time, thanks to a MS-Windows batch, it is recommended to execute the `Qether` commands the one after the other.
#### **WINPCAP**
`WinPcap` 4.1.3 (Windows packet capture library):
- If `WinPcap` is not yet present, it is automatically installed by the `Qether` installer,
- At the last step of `WinPcap` setup, please leave the checkbox *Automatically start the WinPcap driver at boot time* checked.
#### **WLAN INTERFACE**
- The `Qether` tool cannot work on WLAN interface of your computer.
#### **CONFIGURE ERROR**
The sending of `prefs.json` configuration file with Qether V1.12.10 (and above) returns this error explaining that only the .js configuration are now supported (and not the .json anymore): *Parsing arguments failed: Invalid extension for configuration file. A JavaScript file is expected, with '.js' extension*.
#### **CONFIGURE**
Sending a `.js` configuration script on a older application version may imply factory settings on this device.

# OLD VERSIONS HISTORY
***********************************************************************

## `2020-01-08` Qether V1.11.13 [download (nt_ia32)](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-nt_ia32-setup-1.11.13.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SAP10e devices (*0139* product type)
>##### **COMPATIBILITIES**
- `Qeedji` devices supporting `Qether` commands:
	- `SBL10e` device
		- *generic_server* 1.10.14 (or below)
		- *m365_room* 1.10.14 (or below)
		- *regular* 1.10.13 (or below)
		- *smart_office_obs* 1.10.12 (or below)
	- `SAP10e` device
		- *regular* 1.10.11
- `.bin` firmware
- `prefs.json` configuration script

## `2020-10-01` Qether V1.11.12 [download (nt_ia32)](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-nt_ia32-setup-1.11.12.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for ```qether -l``` command to list all the network interfaces, sorted with a ```<ID>```
- Add support for ```-i <ID>``` option allowing to specify the network interface ```<ID>``` when sending a `Qether` command
	- required when having several network interface on yout computer
- Fix: depending on your initial ```Path``` system variable value
	- the Qether installation could not end
	- the Qether installation could be shortened without having to press on the ```close``` button and the ```Path``` system variable is not set properly
	- the `Path` environment variable could be corrupted

## `2020-08-10` Qether V1.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the `C:\Program Files (x86)\Qeedji Qether` environment variable value setting in `Path` system variables at `Qether` installation to be able to launch `Qether` from any of your computer directories

## `2020-06-23` Qether V1.11.10 [download (nt_ia32)](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-nt_ia32-setup-1.11.10.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new commands:
	- `info`
	- `discover`

## `2020-06-11` Qether V1.10.10 [download (nt_ia32)](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/qether/qether-nt_ia32-setup-1.10.10.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version supporting the `configure`, `install` and `reboot` commands for SBL10e devices (*0132* product type)
