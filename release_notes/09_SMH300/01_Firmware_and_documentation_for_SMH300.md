# Firmware and documentation for SMH300
*RELEASE NOTE*

*Never make electric unplug on your SMH300 while software upgrade is in progress (green led enlightened for few minutes) else it may not be able to work properly*

##`2023-04-19` V4.14.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-4.14.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Microsoft 365 services accounts
- Change: after having installed this version for the first time, the *EnOcean* devices become not supported and the *Push buttons Pairing* and *Sensors Pairing* menu in the *Configuration* tab of the device Web user interface are not displayed. To activate back the *EnOcean* devices, set the `innes.wpan-hub-srv.wpan_1.observer.enable` to true
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/`
- Add support for GAP App with a `.gap` extension in the URL field of the *Pull WebDAV* radio of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for GAP App with a `.gap` extension for the *Local deposit* radio of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for the message *Waiting - Fail soft mode – clean up in progress* when removing a GAP App when the Fail soft mode level 1 is reached
- Add support for `system.architecture` Web IDL to get device architecture information
- Add support for `launcher.cacheManager` Web IDL to pause/resume downloading of GAP App
- Add support for `system.maintenance` Web IDL to get the number of reboot and the number max of reboot before going in Fail soft mode
- Add support for `utils.preferencesManager` Web IDL to add new custom preferences
- Add support for `ioManager` Web IDL to get remote file and install it in file system
- Change: after a reboot, the defaut URL entry for the Web page is now `http://<device_ip_addr>/.playout/`
- Change: when a `.gap` extension is detected in the URL field of the *Pull WebDAV* radio of the *App* pane of the *Configuration* menu, the slash character is not automatically added at the end of the URL
- Change: update the list of embedded trusted root certificates
- Change: renamed the button label *Purge the App* into *Uninstall the App* in the *App* pane of the *Configuration* menu of the Web user interface
- Change: when coming straight from factory or after having pressed on the *Factory preferences settings* button,
	- the *Status server* checkbox and the *Software and configurations installation server* are not activated anymore in the *Server* pane of the *Configuration* menu of the Web user interface
	- the *Use this URL for Status server and software and configurations installation server* checkbox is not activated anymore in the *App* pane of the *Configuration* menu of the Web user interface
- Fix: the `_` character was not supported in the *Name* input of the *Logs* pane in the *Maintenance* menu of the device configuration Web interface
- Fix: the following character string `#&` was not displayed properly in the Web user interface
- Fix: unexpected carriage return was noticed in text areas having space characters with some Web page
- Fix: the message *Information - Complete installation, rebooting* was not displayed before rebooting when a middleware upgrade order was done
- Fix: after a App content updating by a USB mass storage insertion in the device, the state value of the launcher HTML tag in the device status was not updated with the right value
>##### **COMPATIBILITIES**
- Pictureframe V1.11.11 (or above)
- Qeedji PowerPoint publisher for SLATE 1.10.12
- Configuration-by-script 1.11.30 (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
User manual (4.14.15~001A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/smh300-user_manual-4.14.15~001A_en.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR SLATE**
[Link to Qeedji Powerpoint Publisher for SLATE](http://www.innes.pro/fr/support/index.php?SMH300/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_SLATE)
#### **CONFIGURATION SCRIPT**
[Link to configuration script](http://www.innes.pro/en/support/index.php?SMH300/Application_notes_and_related_tools/Configuration_by_script)
#### **SDK DEVELOPERS**
[Link to github SDK-G4 API](https://github.com/Qeedji/gekkota-os/tree/master/SDK-G4/API)
#### **SUPPORTED MEDIAS**
Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **FAST WAKEUP PATCH**
A patch is available to enhance reativity for custom application allowing to wake up the SLATE106 every 15 seconds min. instead of 15 minutes min. That supposes in this case that the SLATE106 is continuously powered by a an USB cable. For further information, contact support@qeedji.tech.

#OLD VERSIONS HISTORY
***********************************************************************

##`2020-01-20` V4.13.14
>##### **IMPORTANT**
This version is supporting until 10 SLATE106 devices max. instead of 20 previously. Consequently, after the software upgrade, all the SLATE106 devices paired between the index 11 and the index 20 will be unpaired automatically from the hub.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new WPAN devices
    - `EnOcean` motion sensors
        - Model: *E6211-K515*
    - `EnOcean` push-buttons
        - Model: *PTM 215B*
- Add support for .ppk content viewing from a Web browser
- Add support for the user preference to configure display mode `innes.wpan-hub-srv.device.slate.<index>.pictureframe.display.mode`
- Add support for `802.1X` security for LAN network with the authentication methods:
    - *EAP MD5*
    - *EAP GTC*
    - *EAP TLS*
    - *EAP TTLS - EAP MD5*
    - *EAP TTLS - EAP GTC*
    - *EAP TTLS - EAP MSCHAPV2*
    - *EAP TTLS - EAP TLS*
    - *EAP TTLS - MSCHAPV2*
    - *EAP TTLS - MSCHAP*
    - *EAP TTLS - PAP*
    - *EAP TTLS - CHAP*
    - *EAP PEAPV0 - MSCHAPV2*
    - *EAP PEAPV0 - GTC*
    - *EAP PEAPV0 - MD5*
    - *EAP MSCHAPV2*
    - *EAP FAST*
- Add support for new security cipher for WLAN network `WPA-Enterprise (EAP)` or `WPA2-Enterprise (EAP)` with the authentication methods:
    - *EAP TLS*
    - *EAP TTLS - EAP MD5*
    - *EAP TTLS - EAP GTC*
    - *EAP TTLS - EAP MSCHAPV2*
    - *EAP TTLS - EAP TLS*
    - *EAP TTLS - MSCHAPV2*
    - *EAP TTLS - MSCHAP*
    - *EAP TTLS - PAP*
    - *EAP TTLS - CHAP*
    - *EAP PEAPV0 - MSCHAPV2*
    - *EAP PEAPV0 - GTC*
    - *EAP PEAPV0 - MD5*
    - *EAP FAST*
- Add support for `Reboot manager` panel in the *Task* menu of the *Configuration* tab of the Web UI allowing to create device reboot tasks
- Add support for option `SSID Hidden` in the `WLAN` menu of the Web UI allowing to tell whether the SSID is broadcasted or not
- Add support for new field for WLAN interface
    - `Pairwise key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
    - `Group key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
- Add support for new WLAN chipset
- Add support for remote bootstrap App
- Add support for ```smb://``` URL scheme allowing to download resources file available on shared directories of network disks
    - Supported protocol: *SMB/CIFS 2.0* and *SMB/CIFS 1.0*
    - Remote file example in the manifest: ```smb://<computer_ip_addr>/<computer_directory>/file.txt``` (+ login + password)
- Add support for ```Power Manager``` panel in the *Task* menu of the *Configuration* tab of the Web UI allowing to create power management tasks with the *Energy consumption profile* levels:
    - ```Very highly optimized```
    - ```Highly optimized```
    - ```Moderately optimized```
    - ```Nominal Mode```
    - Associated user preference for energy manager task: ```innes.power-manager.calendar``` (JSON value)
- Add support for pictureframe_fast_wakeup-slate106-setup-1.11.11.rpk patch for custom App allowing to speed up interactivity
- Add support for the matrix actions *Start a timer ```<n>``` s repeated ```<m>``` times maximum* in the configuration Web UI
- Change: embeds the SLATE106 firmware version *PictureFrame V1.11.11*
- Change: the max number of same device type handled at the same time is 10 (instead of 20)
- Change security cipher label in the *WLAN* tab of the Web UI
    - `WPA-PSK` to `WPA-Personal (PSK)`
    - `WPA2-PSK` to `WPA2-Personal (PSK)`
- Change: after having not interacted with the Web UI for a duration, a message *Resource not found (Error 404)* is displayed and the failover URL is ```http://<device-ip-addr>/.resources/error-<date>T<time>Z.html```
- Change: some specific error screens pages are now displayed in the Web UI when facing error connection with the device Web server
- Change: in the Web UI, display now both the `UTC Date & Time` and the `local Date & Time`
- Change: the audio volume is immediately changing when the volume control value is modified in the menu output of the Web UI
- Change: remove the time percentage panel displayed when rebooting a device
- Change: it is now possible to create task occurring every day or only from date1 to date2
- Change: in the mode *Local deposit* of the *App* menu of the Web UI, the archive is disappearing now automatically when taken into account by the device as soon as the App is loaded.
- Change: remove *.br and *.gz files from file system to decrease the firmware size
- Change: when the configuration server URL was wrong, a memory leak could be noticed
- Change: the brand name moves from `Innes` to `Qeedji`
- Change: the Web UI logo Qeedji is supporting a button to return to the Web page ```http://<device_ip_addr>/.playout/```
- Change the Web UI look & feel for the WebDAV directories ```http://<device_ip_addr>/<directory>/```
    - with ```<directory>``` = ```.admin```, ```.extension```, ```.log```, ```.playlog```, ```.playout```, ```.resources```, ```.software```, ```.status```, ```.upnp```
- Change the Web browser tab title when connecting to the device Web UI:
    - Title: `<MODEL> (<Hostname>)`
    - Pictogram: black gecko
- Fix: the device was not exiting fail soft mode after having loaded an App through the *Local deposit* App menu of the Web UI
- Fix: in some cases, the device could not stop rebooting in fail soft mode state
- Fix: after having installed a certificate with a configuration script, sometimes it was not possible anymore to connect to the device in https or to add a new certificate.
    - if the previous case occurs in this version, the certificate list is cleared once then the issue should not occur anymore. Think to add back the missing certificate after the device reboot.
    - if the previous case occurs in this version while the test card is displayed, a message *Cryptographic database corrupted, please reboot for repairing* is displayed. The device needs to be restarted (Web UI, or electrical unplug)
- Fix: the USB injection was not working with some USB stick models

##`2019-06-27` V4.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-4.11.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for WebUI HTML5 supporting
    - in the menu `Configuration` > `Output`:
        - For each SLATE106 device, display the
            - `PSN`: Product serial number
            - `Hostname`: device hostname (Bluetooth device name)
            - `Model`: device model
            - `Software rev`: Application software version
                - value updated once
            - `Firmware rev`: device bootloader version
            - `Hardware rev`: device hardware revision
            - `Manufacturer`: device manufacturer
            - `Battery level`: average value in percent for all the device batteries
    - in the menu `SLATEs pairing`:
        - `Common parameters`
            - `General`:
                - `Active interval`
                    - from hh1:mm1 to hh2:mm2
                        - default value: 8.00 AM to 7.00 PM
                    - `all day`
                - `Active days`
                    - `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`
                - `Wake up regularly`
                    - `Every quarter of an hour`
                    - `by interval` (custom value)
                - `Wake up by vibration sensor`
                    - activation/inactivation
                    - `Touch key`
                        - activation/inactivation
                - `Message Overlay`
                    - activation/inactivation
                    - compatible with the mobile application `Slate Message Overlay`. For further information about this mobile application, contact support@qeedji.tech
            - `Matrix`
                - secondary image display
                    - activation/inactivation
                - pictureframe behaviour customization (advanced user)
            - `Touch key`
                - Key mapping for the secondary image
        - `Reset PIN code for the WPAN2 connection` (used with the mobile application for example)
- Add a graphical interface `APPLI.HTA` allowing to edit the parameters values of the `APPLI.CFG` file
- Add support for new WIFI chipsets references
- Change: brandname `Innes` to `Qeedji` accompanied with its black gecko pictogram
- Change the Web browser tab rendering when connecting to the device WebUI:
    - Title: `<MODEL> (<Hostname>)`
    - Pictogram: black gecko
- Change: embeds the SLATE106 firmware version *PictureFrame V1.11.10*
- Change: remove the files ```.PAIRED``` and ```APPLI.CFG``` from WebDAV directory ```http://<device_IP_address>/.output/<index>```
- Change: file name from ```PF.CFG``` to ```APPLI.CFG```
- Change: The 20 WebDAV directories ```http://<device_IP_address>/.output/<index>``` are created by default at the device start up
- Change: start to measure the signal quality only after the 2nd BLE connection
- Change the SMH300 preferences names related to the SLATE configuration
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.vibration_sensor.enabled`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.key.enabled`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wakeup.heartbeat.enabled`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wakeup.heartbeat.mode`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wakeup.heartbeat.period`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wakeup.day.interval`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wakeup.weekdays.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.wpan.enabled`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.overlay.message.enabled`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.action.delay1`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.action.delay2`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.action.key_lock.idle_time`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_heartbeat_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_key_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_nfc_tag_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_nfc_writer_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_testcard_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_usb_ms_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_usb_power_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.after_vibration_actions.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.key.left.map`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.key.middle.map`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.key.right.map`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.nfc.features.mask`
    - `innes.wpan-hub-srv.device.slate.*.pictureframe.picture.filename`
    - `innes.wpan-hub-srv.device.slate.<index>.pictureframe.index`
    - `innes.wpan-hub-srv.device.slate.<index>.pictureframe.hostname`
    - `innes.wpan-hub-srv.device.slate.<index>.pictureframe.wpan1.authentication.method`
    - `innes.wpan-hub-srv.device.slate.<index>.pictureframe.wpan1.authentication.pincode`
    - `innes.wpan-hub-srv.device.slate.<index>.pictureframe.testcard.enabled`
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change green LED behaviour depending on these different states
    - 1 flash every 4 seconds: Nominal behaviour
     - 2 flashs + 4 seconds OFF: Fail soft mode level1
     - 3 flashs + 4 seconds OFF: Fail soft mode level2
     - 4 flashs + 4 seconds OFF: System data partition check disk
     - 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
     - 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
     - 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
- Fix: a unexpected message *Error while board initialization on the bluetooth connector* could be prompted sometimes when connecting to the device WebUI
- Fix: in some case the SLATEs could not update its content

##`2018-02-20` V3.12.52 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.52.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the embedded version *PictureFrame V1.10.13*
- Add support for working schedule policy
	- default values
		- Working days: ```Monday, Tuesday, Wednesday, Thursday, Friday```
		- Working time: ```8:00 to 19:00```
		- Waking-up period: every ```quarters of an hour```
- Add support for date & time update for SLATE106 devices (done by the SLATE106 devices after each SMH300 device boot-up)
- Add the possibility (for debug purpose) to visualize the SMH300 current content (not sent to the SLATE106 devices)
	- WebUI directory: ```.output```
	- File name ```screenshot.jpg```
- Add support for *NTLM V2* authentication
- Add support for ```German``` language (WebUI)
- Add support for ```Spanish``` language (WebUI)
- Add support for ```Maintenance > Middleware``` menu to upgrade device middleware (WebUI)
- Add support for ```no proxy for``` (WebUI)
    - ```Status server```
    - ```Software and configuration installation server``` as well as
    - ```Delivery server```
    - Note: the tick value can be different for the 3 items above when they are not sharing the same domain (or IP address)
- Add support for ```Maintenance > Logs``` menu to print debug logs (WebUI)
    - *Name*
        - ```app``` (default)
        - ```widget```  (default)
        - Contact support@qeedji.tech to know some other log *Names* to activate.
    - *Level*
        - ```OFF```
            - default value is OFF. In nominal case, the device logs *Level* has to be *OFF* else some unexpected rendering issue could be noticed
        - ```ERROR```: allows to only display logs with the ERROR type
        - ```DEBUG```: allows to only display logs with the DEBUG type
    - option: ```Activate trace of undeclared categories```
        - default value: not ticked. Allows to activate all the available traces of the device. In nominal case, this option must be NOT activated
- Change: minimum date for date picker is 1st January 2005 (WebUI)
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change: when pasting from clip board a URL, login & password, clear the password value when it is not available (WebUI)
- Change: BLE connection quality status is now green when the picture updating is fully warrantied between two consecutive SLATE106 devices wake-up
- Fix: WLAN interface could disappear in WebUI when the WLAN router was not available a couple of time, or when WLAN configuration was wrong
- Fix: after a migration, pairing configuration could be lost and device could keep trying to pair without success

##`2017-10-12` V3.12.48 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.48.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the embedded version *Pictureframe V1.10.12*

##`2017-09-15` V3.12.46 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.46.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the embedded version *Pictureframe V1.10.11*

##`2017-08-04` V3.12.45 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.45.zip)
>##### **IMPORTANT**
- Warning: if required, do modify the PIN code only after the SLATE106 device has been paired else SMH300 may never manage to pair the device
- When using 20 SLATE106 devices, don't set the polling period below 10 minutes else the last SLATE106 devices of the list could not be updated properly
- Add support for the embedded version *Pictureframe V1.10.10*

##`2017-07-17` V3.12.43 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.43.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for authentication with PIN code
	- ```innes.slate-hub-srv.cfg.pictureframe.```
- Add support for Bluetooth Low Energy signal quality status
- Add partial support for test card
- Change: some menu have been modified to support SLATE106 devices
	- ```maintenance > Slate Pairing```
	- ```configuration > Output```
- Add support for the embedded version *Pictureframe V1.10.10*
