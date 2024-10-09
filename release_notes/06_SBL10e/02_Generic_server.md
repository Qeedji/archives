# Generic server for SBL10e
*RELEASE NOTE*

The *generic_server* application periodically connects to a custom data source server to retrieve and display the appropriate light state and colour.

##`2023-06-22` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.12.10/bm0032_generic_server-sbl10e-setup-1.12.10.bin)
>##### **IMPORTANT**
- Change: does support the *discover* command from only Qether V1.12.10 (and above)
- Change: does support the *configure* command from only Qether V1.12.10 (and above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for CORS (Cross-Origin Resource Sharing) request with *Access-Control-Allow-Origin* header
- Add support for these user preferences
    - *system.httpd.cors.enable*,
    - *system.httpd.cors.origin*,
- Change: the administrator name length was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: in rare some case, it was not possible to reach the device on the local network
- Fix: in some case, the device was not restarting after having clicked on the *restore factory preferences* button in the device configuration Web user interface
- Fix: when coming straight from factory, or after a factory preferences restoration, when the device had to lighten in orange, the light was kept off
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)
>##### **LIMITATIONS**
- DNS suffix is not yet supported. So the entire domain in the data source server must be entered.

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
User manual 1.12.10~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.12.10/sbl10e-generic-server-user_manual-1.12.10~002A_en.pdf)
#### **QETHER**
[Link to Qether tool](http://www.innes.pro/en/support/index.php?SBL10e/Qether)
#### **CONFIGURATION SCRIPT TEMPLATE**
`000000000000.js` template 004A for `generic_server` V1.12.10 (or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.12.10/configuration-script-template/000000000000.js)

#OLD VERSIONS HISTORY
***********************************************************************

##`2022-05-20` V1.11.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.11.13/bm0032_generic_server-sbl10e-setup-1.11.13.bin)
>##### **IMPORTANT**
- Change: does support the *discover* command from only Qether V1.12.10 (and above)
- Change: does support the *configure* command from only Qether V1.12.10 (and above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: proxy server was not working anymore
- Fix: in case using a proxy server, the domain value was transmitted already resolved to the proxy server

##`2022-05-13` V1.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.11.12/bm0032_generic_server-sbl10e-setup-1.11.12.bin)
>##### **IMPORTANT**
- Change: do not support the *discover* command from Qether V1.11.13 (and below)
- Change: do not support the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: some HTTP error code values returned by the remote server could prevent the application to work properly definitively. The restoration of the application software by Qether was not possible

##`2022-01-11` V1.11.11
>##### **IMPORTANT**
- Change: do not support the *discover* command from Qether V1.11.13 (and below)
- Change: do not support the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for device configuration update with a *.js* script hosted on a TFTP server associated to DHCP server (code 66)
- Add support for these user preferences
    - *system.tftp.enable*
- Add support for new functions in the *.js* script
	- enableTftp();
	- disableTftp();
- Add support for the *system.tftp.enable* user preference
- Fix: in some case, in case the device had a static IP address and DNS servers was found automatically, the device network access was down until the timeout for the connexion attempts to the DHCP server had expired

##`2021-10-08` V1.11.10
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: after a migration from regular 1.10.13 to regular 1.10.15, the data server input values was cleared in the Web user interface. In case another modification was done in the Web user interface, after a device reboot, the device could not be able to connect to the data source server
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)

##`2021-10-01` V1.10.15
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a *Configuration > Tasks* pane in the Web user interface allowing to program a daily reboot task
- Add support for firmware version number sending when receiving a *discover* Qether command or an *info* Qether command (*Qether* 1.12.10 and above)
- Add support for device configuration with a *.js* configuration script
    - pushed on the *.conf* WebDAV directory of the device
    - sent by the *configure* Qether command (*Qether* 1.12.10 and above)
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
- Add support for these user preferences
    - *system.task.reboot.enable*: *false* (by default)
    - *system.task.reboot.time*: 21600 (by default), number of second elapsed since midnight, means that the reboot task time is 6.00 AM
        - when the NTP server is not set, the reboot task time is 24 hours after the last boot time
	- *appli.network.datasource.nb_retries_before_cache_reset*: 20 (by default), max. number of unsuccessful connection attempts before switching off the light
- Change: the *discover* and *configure* commands from Qether V1.11.13 are not supported anymore, you must use Qether V1.12.10 (and above) only
- Change: after a device reboot, if the datasource server is not available, the light is kept to the *Off* state until the next successful connection
- Change: the light is switched off when the datasource server is not available after more than 20 following unsuccessful connection attempts
- Change: the administrator name lenght was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: in some case, the firmware upload in the device could fail when done with the Web user interface
- Fix: it was not possible to inactivate the DHCP timeout with the *.js* configuration script
- Fix: in some rare case, the SBL10e device should be unplugged from the Ethernet wall plug then plugged again to work properly
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)
>#### **PREFS.JSON EXAMPLE**
`prefs.json` example for `generic_server` [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/generic_server/V1.10.15/prefs-json-example/prefs.json)

##`2021-09-09` V1.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the minimal value for *Heartbeat* is 2 seconds instead of 10 seconds
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.13 (or above)

##`2021-09-07` V1.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.13 (or above)
