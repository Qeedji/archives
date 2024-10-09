# Regular for SBL10e
*RELEASE NOTE*

The *Regular* application supports the light driving, with the device Web user interface and with Web services. This application is put by default on the SBL10e device at factory.

## `2023-06-22` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/regular/V1.12.10/bm0032_regular-sbl10e-setup-1.12.10.bin)
>##### **IMPORTANT**
- Change: support only the *discover* command from Qether V1.12.10 (and above)
- Change: support only the *configure* command from Qether V1.12.10 (and above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for CORS (Cross-Origin Resource Sharing) request with *Access-Control-Allow-Origin* header
- Add support for these user preferences
    - *system.httpd.cors.enable*,
    - *system.httpd.cors.origin*,
- Change: the administrator name length was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: in rare some case, it was not possible to reach the device on the local network
- Fix: in some case, the device was not restarting after having clicked on the *restore factory preferences* button in the device configuration Web user interface
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
User manual 1.12.10~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/regular/V1.12.10/sbl10e-regular-user_manual-1.12.10~002A_en.pdf)
#### **QETHER**
[Link to Qether tool](http://www.innes.pro/en/support/index.php?SBL10e/Qether)
#### **CONFIGURATION SCRIPT TEMPLATE**
`000000000000.js` template 004A for `regular` 1.12.10 (or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/regular/V1.12.10/configuration-script-template/000000000000.js)


# OLD VERSIONS HISTORY
***********************************************************************

## `2022-05-13` V1.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/regular/V1.11.12/bm0032_regular-sbl10e-setup-1.11.12.bin)
>##### **IMPORTANT**
- Change: does support the *discover* command from only Qether V1.12.10 (and above)
- Change: does support the *configure* command from only Qether V1.12.10 (and above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some rare case, if an error was raised during the configuration upgrade by Qether, the application could not work properly

## `2022-01-11` V1.11.11
>##### **IMPORTANT**
- Change: do not support the *discover* command from Qether V1.11.13 (and below)
- Change: do not support the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Logs* menu in the *Maintenance* pane of the Web user interface
- Add support for device configuration update with a *.js* script hosted on a TFTP server associated to DHCP server (code 66)
- Add support for new functions in the *.js* script
	- enableTftp();
	- disableTftp();
- Add support for the *system.tftp.enable* user preference
- Fix: in some case, in case the device had a static IP address and DNS servers was found automatically, the device network access was down until the timeout for the connexion attempts to the DHCP server had expired

## `2021-10-08` V1.11.10
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change version number
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)

## `2021-10-01` V1.10.15
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for firmware version number returning when receiving a *discover* Qether command or an *info* Qether command (Qether 1.12.10 and above)
- Add support for *.js* configuration script received from a *configure* Qether command (Qether 1.12.10 and above)
- Add support for new functions in the *.js* configuration script allowing to set labels depending on the target device
	- getFirmwareApp();
	- getModelName();
	- getHardwarePlatform();
	- getPsn(PSN_SHORT_REPRESENTATION);
	- getPsn(PSN_TYPE);
	- getPsn(PSN_ORDINAL);
	- getLan1Mac();
- Add support for new functions in the *.js* configuration script allowing to configure a device reboot task
	- enableRebootTask();
	- disableRebootTask();
	- setRebootTime(6, 0);
- Add support for user preferences:
	- *system.task.reboot.enable*: *true* (by default) means that the reboot task is activated
	- *system.task.reboot.time*: 21600 (by default), number of second elapsed since midnight, means that the reboot task time is 6.00 AM
		- when the NTP server is not set, the reboot task time is 24 hours after the last the boot time
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
- Change: the administrator name lenght was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: it was not possible to inactivate the DHCP timeout with the *.js* configuration script
- Fix: in some rare case, the SBL10e device should be unplugged from the Ethernet wall plug then plugged again to work properly
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)
>#### **PREFS.JSON EXAMPLE**
`prefs.json` example for `regular` [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/regular/V1.10.15/prefs-json-example/prefs.json)

## `2021-09-07` V1.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for UPnP (discovery)
- Add support for *.js* configuration script put on the .conf directory of the WebDAV root directory
- Change: only the modified preferences are stored in the */.conf/prefs.json*
- Change: the *Servers* tab has been removed from the Web user interface.
- Add support for user preferences:
	- *system.upnp.enable*: *enable* (by default) means that the UPnP discovery is activated
	- *system.ntp.enable*: *false* (by default) means that the clock recovery by NTP time server is not activated
	- *system.ntp.server.url*
	- *system.lan1.dhcp.overall-timeout.enable*: *true* by default means that when the DHCP server is not available, a fallback static IP address is used
	- *system.datetime.timezone*
- Fix: in some cases, the firmware upload in the device could fail when done with the Web user interface
- Fix: setting as static IP address, the same IP address value as the one previously given by DHCP prevent the user to connect to the device Web user interface after the device reboot
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.13 (or above)

## `2020-10-01` V1.10.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `info` and `discover` commands from Qether tool
- Add support for 5 consecutive blue flashes when receiving `configure` command from Qether tool
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.12 (or above)
>##### **LIMITATIONS**
- Setting as static IP address, the same IP address value as the one previously given by DHCP prevent to connect to the device Web user interface after the device reboot
- Only 5 files can be presented when looking at the WebDAV file system with the configuration Web interface or from a WebDAV client.
