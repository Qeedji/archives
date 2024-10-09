# Smart office OBS
*RELEASE NOTE*

The *smart_office_obs* application periodically connects to a data source server to retrieve and display the appropriate light state and colour.

It is compatible only with datasource servers filling the requirements specified for **OBS (Orange Business Services) software editor**. For further information, refer to the *smart_office_obs* user manual.

##`2023-02-22` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.12.10/bm0032_smart_office_obs-sbl10e-setup-1.12.10.bin)
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
- DNS suffix is not yet supported. So do enter the entire domain in the data source server.

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
User manual 1.12.10~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.12.10/sbl10e-smart-office-obs-user_manual-1.12.10~002A_en.pdf)
#### **QETHER**
[Link to Qether tool](http://www.innes.pro/en/support/index.php?SBL10e/Qether)
#### **CONFIGURATION SCRIPT TEMPLATE**
`000000000000.js` template 004A for `smart_office_obs` 1.12.10 (or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.12.10/configuration-script-template/000000000000.js)


#OLD VERSIONS HISTORY
***********************************************************************

##`2022-05-20` V1.11.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.11.13/bm0032_smart_office_obs-sbl10e-setup-1.11.13.bin)
>##### **IMPORTANT**
- Change: does support the *discover* command from only Qether V1.12.10 (and above)
- Change: does support the *configure* command from only Qether V1.12.10 (and above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: proxy server was not working anymore
- Fix: in case using a proxy server, the domain value was transmitted already resolved to the proxy server

##`2022-05-13` V1.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.11.12/bm0032_smart_office_obs-sbl10e-setup-1.11.12.bin)
>##### **IMPORTANT**
- Change: do not support the *discover* command from Qether V1.11.13 (and below)
- Change: do not support the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes, some HTTP error code values returned by the remote server could prevent the application to work properly definitively. The restoration of the application software by Qether could be not possible anymore

##`2022-01-11` V1.11.11
>##### **IMPORTANT**
- Change: do not support the *discover* command from Qether V1.11.13 (and below)
- Change: do not support the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for device configuration update with a *.js* script hosted on a TFTP server associated to DHCP server (code 66)
- Add support for new functions in the *.js* script
	- enableTftp();
	- disableTftp();
- Add support for the *system.tftp.enable* user preference (*true* by default)
- Fix: in some case, in case the device had a static IP address and DNS servers was found automatically, the device network access was down until the timeout for the connexion attempts to the DHCP server had expired

##`2021-10-08` V1.11.10
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: after a migration from regular 1.10.12 to regular 1.10.15, the data server hostname value was cleared in the Web user interface. In case another modification was done in the Web user interface, after a device reboot, the device could not be able to connect to the data source server
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)

##`2021-10-01` V1.10.15
>##### **IMPORTANT**
- Change: do not support anymore the *discover* command from Qether V1.11.13 (and below)
- Change: do not support anymore the *configure* command from Qether V1.11.13 (and below)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a `Configuration > Tasks` pane in the Web user interface allowing to program a daily reboot task
- Add support for a `Configuration > Date and time` pane in the Web user interface allowing to change the time zone and view the date and time
- Add support for a `Configuration > Logs` pane in the Web user interface allowing to view the App log
- Add support for a *NTP time server* input in the `Configuration > Server` pane of the Web user interface allowing to configure the NTP time server
- Add support for firmware version number returning when receiving a *discover* Qether command or an *info* Qether command (Qether 1.12.10 and above)
- Add support for *.js* configuration script
	- received from a *configure* Qether command (Qether 1.12.10 and above)
	- put on the .conf directory of the WebDAV root directory
- Add support for UPnP (discovery)
- Add support for user preferences:
	- *appli.network.datasource.nb_retries_before_cache_reset*: 20 (by default), max. number of unsuccessful connection attempts before switching off the light
	- *system.upnp.enable*: *enable* (by default) means that the UPnP discovery is activated
	- *system.task.reboot.enable*: *true* (by default) means that the reboot task is activated
	- *system.task.reboot.time*: 21600 (by default), number of second elapsed since midnight, means that the reboot task time is 6.00 AM
		- when the NTP server is not set, the reboot task time is 24 hours after the last the boot time
	- *system.ntp.enable*: *false* (by default) means that the clock recovery by NTP time server is not activated
	- *system.lan1.dhcp.overall-timeout.enable*: *false* by default means that the device can get an IP address only when the DHCP server is available
	- *system.ntp.server.url*
	- *system.datetime.timezone*
- Change: only the modified preferences are stored in the */.conf/prefs.json*
- Change: the light is switched off when the datasource server is not available after more than 20 following unsuccessful connection attempts
- Change: after a device reboot, if the datasource server is not available, the light is kept to the *Off* state until the next successful connection
- Change: the minimal value for *Heartbeat* is 2 seconds instead of 10 seconds
- Change: the administrator name lenght was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: only 5 files could be displayed when looking at the WebDAV file system with the configuration Web interface or from a WebDAV client
- Fix: setting as static IP address, the same IP address value as the one previously given by DHCP prevents to connect to the device Web user interface as soon as the device has reboot
- Fix: in some rare case, the SBL10e device should be unplugged from the Ethernet wall plug then plugged again to work properly
- Fix: in some case, the firmware upload in the device could fail when done with the Web user interface
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.12.10 (or above)
>#### **PREFS.JSON EXAMPLE**
`prefs.json` example for `smart_office_obs` [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.10.15/prefs-json-example/prefs.json)

##`2020-10-01` V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.10.12/bm0032_smart_office_obs-sbl10e-setup-1.10.12.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in DHCP configuration, in case the DHCP server was not available, the fail over to the static IP address was not working
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.12 (or above)
>##### **LIMITATIONS**
- Only 5 files can be presented when looking at the WebDAV file system with the configuration Web interface or from a WebDAV client.
- DNS suffix is not yet supported. So do enter the entire domain in the data source server.
- Setting as static IP address, the same IP address value as the one previously given by DHCP prevent to connect to the device Web user interface after the device reboot

##`2020-09-23` V1.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/sbl10e/smart_office_obs/V1.10.11/bm0032_smart_office_obs-sbl10e-setup-1.10.11.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- SBL10e device
- Qether 1.11.12 (or above)
>##### **LIMITATIONS**
- Only 5 files can be presented when looking at the WebDAV file system with the configuration Web interface or from a WebDAV client.
- DNS suffix is not yet supported. So do enter the entire domain in the data source server.
- Setting as static IP address, the same IP address value as the one previously given by DHCP prevent to connect to the device Web user interface after the device reboot
