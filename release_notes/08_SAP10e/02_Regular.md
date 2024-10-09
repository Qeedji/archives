# Regular for SAP10e
*RELEASE NOTE*

Once paired to up to 10 SLATEs, the **Regular** application allows to:

- update the content of up to 10 SLATE devices by using `Qeedji PowerPoint publisher for SLATE` or by dropping .ppk contents in the WebDAV directories from a WebDAV client,
- preview the content of up to 10 SLATE devices and watch their synchronization status.

This application is put by default on the SAP10e devices at factory.

## `2023-06-06` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/regular/V1.12.10/bm0032_regular-sap10e-setup-1.12.10.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some rare cases, it was not possible to reach the device on the local network
- Fix: in some case, the device was not restarting automatically after having clicked on the *restore factory preferences* button in the device configuration Web user interface
>##### **COMPATIBILITIES**
- SAP10e device
- Qether 1.12.10 (or above)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
User manual 1.12.10~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/regular/V1.12.10/sap10e-regular-user_manual-1.12.10~002A_en.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR SLATE**
[Link to Qeedji PowerPoint Publisher for SLATE](https://www.qeedji.tech/en/support/index.php?SAP10e/Qeedji_PowerPoint_Publisher_for_SLATE)
#### **QETHER**
[Link to Qether tool](https://www.qeedji.tech/en/support/index.php?SAP10e/Qether)
#### **CONFIGURATION SCRIPT TEMPLATE**
`000000000000.js` template 001A for `regular` V1.11.10 (or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/regular/V1.11.10/configuration-script-template/000000000000.js)

# OLD VERSIONS HISTORY
***********************************************************************

## `2022-11-15` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/regular/V1.11.10/bm0032_regular-sap10e-setup-1.11.10.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new panes in the device configuration Web user interface
    - *Configuration > Tasks*
    - *Configuration > Date and time*
    - *Maintenance > Logs*
- Add support for device configuration with a *.js* configuration script
    - pushed on the *.conf* WebDAV directory of the device
    - hosted on a TFTP server associated to DHCP server (code 66)
    - sent by the *configure* Qether command (*Qether* 1.12.10 and above)
- Add support for CORS (Cross-Origin Resource Sharing) request with *Access-Control-Allow-Origin* header
- Add support for these user preferences
    - *system.tftp.enable*
    - *system.task.reboot.enable*: *false* (by default)
    - *system.task.reboot.time*: 21600 (by default), number of second elapsed since midnight, means that the reboot task time is 6.00 AM
        - when the NTP server is not set, the reboot task time is 24 hours after the last boot time
    - *system.httpd.cors.enable*,
    - *system.httpd.cors.origin*,
- Add support for firmware version number sending when receiving a *discover* Qether command or an *info* Qether command (*Qether* 1.12.10 and above)
- Change: the *discover* and *configure* commands from Qether V1.11.13 are not supported anymore, you must use Qether V1.12.10 (and above) only
- Change: the administrator name length was limited to 15 characters preventing to enter a MAC address value (i.e. *aa-bb-cc-dd-ee-ff*) as administrator name
- Fix: some HTTP error code values returned by the remote server could prevent the application to work properly definitively. The restoration of the application software by Qether was not possible
- Fix: in some case, in case the device had a static IP address and DNS servers was found automatically, the device network access was down until the timeout for the connexion attempts to the DHCP server had expired
- Fix: in some case, the firmware upload could fail when done with the Web user interface
- Fix: in some rare case, the device should be unplugged from the Ethernet wall plug then plugged again to work properly
- Fix: setting as static IP address, the same IP address value as the one previously given by DHCP prevent the user to connect to the device Web user interface after the device reboot
- Fix: when a SLATE was previously paired to another SAP10e device, it was possible to pair it for a while but it was disappearing afterwards in less than 15 minutes

## `2021-02-25` V1.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/regular/V1.10.11/bm0032_regular-sap10e-setup-1.10.11.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the device could not detect SLATEs coming straight from factory
>##### **COMPATIBILITIES**
- SAP10e device
- Qether 1.11.13 (or above)

## `2021-02-10` V1.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- SAP10e device
- Qether 1.11.13 (or above)
