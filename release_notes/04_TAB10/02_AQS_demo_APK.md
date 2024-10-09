# AQS Demo APK for TAB10 device
*RELEASE NOTE*

*Never make electric unplug on your device while APK installation is in progress*

##`2024-01-12` Demo APK for TAB10 device
- `device_power_standby` 1.10.11 [download](tab10/APK/device_power_standby-qeedjisystem_aosp-setup-1.10.11.apk){.free-downloads}
- `power_manager_calendar` 1.10.10 [download](tab10/APK/power_manager_calendar-qeedjisystem_aosp-setup-1.10.10.apk){.free-downloads}
- `proximity_sensor` 1.10.11 [download](tab10/APK/proximity_sensor-tab10-setup-1.10.11.apk){.free-downloads} 
- `rfid_reader` 1.11.10 [download](tab10/APK/rfid_reader-tab10-setup-1.11.10.apk){.free-downloads} 
- `surround_light` 1.11.10 [download](tab10/APK/surround_light-tab10-setup-1.11.10.apk){.free-downloads}
- `system_button` 1.11.10 [download](tab10/APK/system_button-qeedjisystem_aosp-setup-1.11.10.apk){.free-downloads}
- `url_webview` 1.10.10 [download](tab10/APK/url_webview-qeedjisystem_aosp-setup-1.10.10.apk){.free-downloads}
- `webui_extension` 1.10.10 [download](tab10/APK/webui_extension-qeedjisystem_aosp-setup-1.10.10.apk){.free-downloads}

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `power_manager_calendar`
	- initial version allowing to:
		- use goToSleep and wakeUp Java API by taking care to inactivate the OS power manager task   
		- use Android reboot by taking care to inactivate the OS reboot task 
- `webui_extension`
	- initial version supporting:  
		- an applicative Web page 
		- a configuration Web page 
- `url_webview`
	- initial version supporting URL viewing (replace url_launcher 1.10.12)
		- with or without basic anthentication credentials

>##### **COMPATIBILITIES**
- AOSP 9.10.17 (or above)
	- for TAB10s device
	- for TAB10b device 

#INFORMATION
***********************************************************************

[Link to URL Webview configuration script](https://github.com/Qeedji/aosp-TAB10s-sdk/tree/master/examples/url_webview/configuration/000000000000.js)

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2023-01-25` Demo APK for TAB10 device
- `device_power_standby` 1.10.11 [download](tab10/APK/device_power_standby-qeedjisystem_aosp-setup-1.10.11.apk){.free-downloads}
- `proximity_sensor` 1.10.11 [download](tab10/APK/proximity_sensor-tab10-setup-1.10.11.apk){.free-downloads} 
- `rfid_reader` 1.11.10 [download](tab10/APK/rfid_reader-tab10-setup-1.11.10.apk){.free-downloads} 
- `surround_light` 1.11.10 [download](tab10/APK/surround_light-tab10-setup-1.11.10.apk){.free-downloads}
- `system_button` 1.11.10 [download](tab10/APK/system_button-qeedjisystem_aosp-setup-1.11.10.apk){.free-downloads}
 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the file name of these APK by replacing the *tab10* suffix by the *qeedjisystem_aosp* suffix: 
	- `device_power_standby`
	- `system_button`
	- 
##`2022-12-13` Demo APK for TAB10 device
- `device_power_standby` 1.10.11 
- `proximity_sensor` 1.10.11 
- `rfid_reader` 1.11.10 
- `surround_light` 1.11.10
- `system_button` 1.11.10 

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: these APK requiring now *system user* execution rights to be executed are signed with a Qeedji Java keystore
	- `rfid_reader` 
	- `surround_light`
	- `system_button`

##`2021-03-17` Demo APK for TAB10 device
- `device_info` 1.10.12 
- `device_power_standby` 1.10.11
- `proximity_sensor` 1.10.11
- `rfid_reader` 1.10.12
- `surround_light` 1.10.12 
- `system_button` 1.10.11 

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for version number inside the APK for 
	- `device_info`
	- `device_power_standby`
    - `rfid_reader` 
    - `system_button`
    - `proximity_sensor`
	- `surround_light`
>##### **COMPATIBILITIES**
- AOSP 9.10.10 beta7 (or above)
	- for TAB10s device
	- for TAB10b device  

##`2020-11-24` Demo APK for TAB10 device
- `device_info` 1.10.11 
- `device_power_standby` 1.10.10
- `proximity_sensor` 1.10.10 
- `rfid_reader` 1.10.11 
- `surround_light` 1.10.11
- `system_button` 1.10.10

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `device_info` 
    - Add support for Bluetooth address information display 
    - Add support for AOSP firmware version information display
- `rfid_reader` 
     - Change: after a successful badging, the APK clears the previous badge information and displays only the new badge information
     	- `Tag type`: *ISO 14443-3A*, *ISO 14443-3B*, *ISO DEP*, *JIS 6319-4*, *ISO 15693* 
     	- `Tag ID`: for examples, *AA:BB:CC:DD*, *AA:BB:CC:DD:EE*, *AA:BB:CC:DD:EE:FF:00:11* 
- `device_power_standby` 
    - Initial version
- `system_button` 
    - Initial version
- `presence_sensor` 
	- Removed
- `proximity_sensor` 
	- Initial version

##`2020-10-19` Demo APK for TAB10 device
- `device_info` 1.10.10 
- `presence_sensor` 1.10.10 
- `rfid_reader` 1.10.10
- `surround_light` 1.10.11
     
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `device_info`
	- Initial version
- `presence_sensor`
 	- Initial version
- `rfid_reader`
 	- Initial version
- `surround_light`
 	- Initial version

>##### **COMPATIBILITIES**
- AOSP 9.10.10 beta5 (or above)
	- for TAB10s device
	- for TAB10b device 
- configuration script V1.10.12 (or above)