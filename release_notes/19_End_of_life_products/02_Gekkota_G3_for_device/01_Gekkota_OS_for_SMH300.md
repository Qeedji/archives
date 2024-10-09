# Gekkota OS for SMH300
*RELEASE NOTE*

*Never make electric unplug on your SMH300 while software upgrade is in progress (green led enlightened for few minutes) else it may not be able to work properly*

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
        - Contact support@innes.fr to know some other log *Names* to activate.
    - *Level*
        - ```OFF```
            - default value is OFF. In nominal case, the device logs *Level* has to be *OFF* else some unexpected rendering issue could be noticed
        - ```ERROR```: allows to only display logs with the ERROR type
        - ```DEBUG```: allows to only display logs with the DEBUG type
    - option: ```Activate trace of undeclared categories```
        - default value: not ticked. Allows to activate all the available traces of the device. In nominal case, this option must be NOT activated
- Change: minimum date for date picker is 1st January 2005 (WebUI)
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change: when pasting from clip board a Plugncast configuration (URL, login, password), clear the password value when it is not available (WebUI)
- Change: BLE connection quality status is now green when the picture updating is fully warrantied between two consecutive SLATE106 devices wake-up
- Fix: WLAN interface could disappear in WebUI when the WLAN router was not available a couple of time, or when WLAN configuration was wrong
- Fix: after a migration, pairing configuration could be lost and device could keep trying to pair without success
>##### **WILL BE CORRECTED IN NEXT VERSIONS**
- Add support for SLATE106 buttons management
- Add support for SLATE106 RFID
- Add support for battery level status & battery presence detection
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.13 (or above)
- PictureFrame V1.10.13

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Installation Guide (005A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/SMH300-installation-guide-005A_en.pdf)
- Drill pattern [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/DS-SMHDRP-A.vsd.pdf)
#### **SUPPORTED MEDIAS**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)

#OLD VERSIONS HISTORY
***********************************************************************

##`2017-10-12` V3.12.48 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.48.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the embedded version *Pictureframe V1.10.12*

##`2017-09-15` V3.12.46 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smh300/gekkota_os-smh300-setup-3.12.46.zip)
>##### **IMPORTANT**

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
