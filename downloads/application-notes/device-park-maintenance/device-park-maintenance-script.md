# Qeedji devices park maintenance

#### **SUMMARY**

This *Powershell* functions allows to get the firmware version of some the Qeedji devices models of your park. 

The device models supported by the *Powershell* script are:
- for those supporting Gekkota OS 4.14.16 (or above):
	- DMB400
	- SMA300
	- SMT210
	- SMH300
	- DME204 
- for those supporting AQS 9.10.19 (or above):
	- AMP300
	- TAB10s
	- TAB10b
- for those supporting bm0032-regular-1.12.10, bm0032-generic_server-1.12.10, bm0032-m365_room-1.12.10, bm0032-m365_user-1.12.10, bm0032-occupancy_sensor_ble_enocean-1.12.10, bm0032-smart_office_obs-1.12.10 (or above) 
	- SBL10e
- bm0032-regular-1.12.10, bm0032-generic_server-1.12.10 (or above)
	- SAP10e  

The *Powershell* script allows also to:
- upgrade the device firmware by specifying:
	- the device IP address,
	- the device model,
	- a firmware file,
- modify the device configuration by specifying:
	- the device IP address,
	- the device model,
	- an appropriate configuration script (e.g. 000000000000.js) suitable for this device firmware.
- for AQS, install App by specifying:
	- the device IP address,
	- the device model,
	- an appropriate .apk file.     

The result of the *Powershell* function is stored in a JSON file containing firmware version for each device. For AQS, it contains alos the version of all App installed.

#PROCEDURE
***********************************************************************
- Download the .zip file and inflate in your favorite folder (e.g. c:\qeedji-devices-park-maintenance\), 
- From this folder, open a PowerShell session with administrator rights. 
	
#INFORMATION
***********************************************************************
##`2024-07-05` qeedji-devices-park-maintenance-1.10.10.zip [download](scripts/powershell/-qeedji-device-park-maintenance-V1.10.10.zip){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version 
