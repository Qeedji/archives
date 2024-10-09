# Firmware and documentation for SMT210
*RELEASE NOTE*

**IMPORTANT: In case you wish to upgrade your SMT210 devices from  Gekkota G3 middleware (3.12.XX) to Gekkota G4 middleware (4.11.1X), it is recommended to contact support@qeedji.tech to know the impact of this migration. Check also the software compatibilities below, and remember that you won’t be allowed to downgrade to a Gekkota G3 middleware afterwards. The specific SMT210 RMA (or Return Merchandise Authorization) consisting in downgrading the middleware Gekkota 4 back to the middleware Gekkota G3 is not covered by the warranty of the device**

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

##`2020-10-22` V4.13.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-4.13.13.zip)
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.13.13**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMT210 middleware version is at least 3.12.20 (and not a beta version),
    - In case already using SignMeeting, check that the SignMeeting version running on the devices is well 1.13.10 (or above). For further information, read the SignMeeting user manual.
- Once the migration Gekkota G3 to Gekkota G4 is done:
    - Ensure to use App versions which are compatible,
    - your previous projects may be not compatible. For further information, contact support@qeedji.tech,
    - some license may be required. For further information, contact support@qeedji.tech,
    - In case a message `App format not recognized` is displayed after a publication, check that the content is generated with the appropriate format (`Gekkota G3` vs `Gekkota G4`).
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
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
- Add support for `WPA-Enterprise (EAP)` or `WPA2-Enterprise (EAP)` security ciphering for WLAN network with the authentication methods:
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
- Add support for option `SSID Hidden` in the *WLAN* menu of the Web UI allowing to tell if the SSID is broadcasted or not
- Add support for new fields in WLAN interface
    - `Pairwise key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
    - `Group key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
- Add support for these printable characters in the security key value in the `WLAN` pane of the Web UI
    - ```#$%&'()*+,-./:;<=>?@[]^_{} ~|```
- Add support for remote bootstrap App
- Add support for ```smb://``` URL scheme allowing to download resources file available on shared directories of network disks
    - Supported protocol: *SMB/CIFS 2.0* and *SMB/CIFS 1.0*
    - Remote file example in the manifest: ```smb://<computer_ip_addr>/<computer_directory>/file.txt``` (+ login + password)
- Add support for a new information message when using App loading through the local deposit of the Web UI
    - *Waiting - Extracting files*, temporary displayed, the time for the device to install the new App
        - the content of the App is then played immediately
    - *Error - Unable to load the App. Please check the consistency of the package* temporary displayed when the App is not consistent. Then the information message *Information - No content* is displayed
- Add support for `Reboot manager` panel in the *Task* menu of the *Configuration* tab of the Web UI allowing to create device reboot tasks
- Add support for ```Power Manager``` panel in the *Task* menu of the *Configuration* tab of the Web UI allowing to create power management tasks with the *Energy consumption profile* levels:
    - ```Very highly optimized```
    - ```Highly optimized```
    - ```Moderately optimized```
    - ```Nominal Mode```
    - Associated user preference for energy manager task: ```innes.power-manager.calendar``` (JSON value)
- Add support for ```.playlist``` extension
- Add support for content update by USB with the pattern ```manifest.<MAC>.xml```
    - with ```<MAC>``` value matching with the *AA-BB-CC-DD-EE-FF* pattern
- Change security cipher label in the *WLAN* tab of the Web UI
    - `WPA-PSK` to `WPA-Personal (PSK)`
    - `WPA2-PSK` to `WPA2-Personal (PSK)`
- Change: the brand name moves from `Innes` to `Qeedji`
- Change: the Web UI logo Qeedji is supporting a button to return to the Web page ```http://<device_ip_addr>/.playout/```
- Change the Web UI look for the WebDAV directories ```http://<device_ip_addr>/<directory>/```
    - with ```<directory>``` = ```.admin```, ```.extension```, ```.log```, ```.playlog```, ```.playout```, ```.resources```, ```.software```, ```.status```, ```.upnp```
- Change the Web browser tab title when connecting to the device Web UI:
    - Title: `<MODEL> (<Hostname>)`
    - Pictogram: black gecko
- Change: after having not interacted with the Web UI for a duration, a message *Resource not found (Error 404)* is displayed and the failover URL is ```http://<device-ip-addr>/.resources/error-<date>T<time>Z.html```
- Change: some specific error screens pages are now displayed in the Web UI when facing error connection with the device Web server
- Change: in the Web UI, display now both the `UTC Date & Time` and the `local Date & Time`
- Change: the audio volume is immediately changing when the volume control value is modified in the menu output of the Web UI
- Change: remove the time percentage panel displayed when rebooting a device
- Change: it is now possible to create task occurring every day or only from date1 to date2
- Change: in the mode *Local deposit* of the *App* menu of the Web UI, the archive is disappearing now automatically when taken into account by the device as soon as the App is loaded.
- Change: remove *.br and *.gz files from file system to decrease the firmware size
- Change: when the configuration server URL was wrong, a memory leak could be noticed
- Change: the MS-PowerPoint default background is not transparent by default anymore
- Change: some fonts was not rendered properly leading to unexpected line break (MS-PowerPoint, PDF, ...)
- Fix: the device was not exiting fail soft mode after having loaded an App through the *Local deposit* App menu of the Web UI
- Fix: sometimes some MS-PowerPoint transitions could be unexpectedly jerky when CEC was activated
- Fix: video loopback was not working properly sometimes inside HTML widget
- Fix: device reboot could be noticed when playing some MS-PowerPoint
- Fix: in some cases, the device could not stop rebooting in fail soft mode state
- Fix: after having installed a certificate with a configuration script, sometimes it was not possible anymore to connect to the device in https or to add a new certificate.
    - if the previous case occurs in this version, the certificate list is cleared once then the issue should not occur anymore. Think to add back the missing certificate after the  device reboot.
    - if the previous case occurs in this version while the test card is displayed, a message *Cryptographic database corrupted, please reboot for repairing* is displayed. The device needs to be restarted (Web UI, or electrical unplug)
- Fix: sometimes the background of MS-PowerPoint medias could have a wrong color (white instead black)
- Fix: an image of a MS-PowerPoint could be not displayed when its resolution was linked to the layout resolution
- Fix: the equations could be cropped by the bottom inside MS-PowerPoint media
- Fix: the USB injection was not working with some USB stick models
- Fix: a message content temporarily unavailable was displayed when viewing a MS-PowerPoint containing an *Up* arrow.
- Fix: some recent mp4 video could return a message content temporarily unavailable
- Fix: the keys combinations with the ALT key was not working with *AZERTY* keyboards (for example `@`)
- Fix: a hostname with 2 only characters was not supported
- Fix: the message *content temporarily unavailable* could be displayed when trying to play a RTSP stream coming from a specific encoder/streamer
- Fix: in *pull WebDAV* configuration, when using a remote folder, the content of the local folder was merged with the content of the remote folder instead of being replaced totally
- Fix: in some case, the remote file download could not work when changing the remote file URL  from `smb://` scheme to `http://` scheme
- Fix: using manifest remote file with ```smb://``` scheme URL could make reboot the device each time the downloader timer expires
- Fix: when using a remote folder with `smb://` scheme, the content of the playfolder was purged at the second remote folder downloading occurrence without being updated afterwards except after publication
- Fix: a remote file downloading could not be realized when the file was alone on the */.playout/.domain-repository/* device WebDAV directory
- Fix: the opt-out was not working properly when the variable was containing non ASCII characters (mode Pull WebDAV - xpf compatibility)
- Fix: was not able to play a media inside a container conditioned by a date variable (mode Pull WebDAV - xpf compatibility)
- Fix: in some case, a playout content could be not played when 2 scenes was starting at the same time (Pull WebDAV - xpf compatibility configuration) (rare)
- Fix: in *Pull WebDAV (xpf compatibility)* configuration, some unexpected empty content could be noticed when using an opt-out conditioned by a date variable
- Fix: in case using remote file inside playfolder, and the origin directory content is empty, the playfolder could play no media after one publication of two until the next playfolder update


#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (4.13.13~003A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/smt210-user_manual-4.13.13~003A_en.pdf)
#### **SUPPORTED MEDIAS**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?SMT210/Application_notes_and_related_tools/Configuration_by_script)
#### **SDK DEVELOPERS**
- [Link to github SDK-G4 API](https://github.com/Qeedji/gekkota-os/tree/master/SDK-G4/API)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji Powerpoint Publisher for Media Players](http://www.innes.pro/en/support/index.php?SMT210/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player)
#### **KNOWN LIMITATIONS**
- Not supported
    - Inside Web page:
        - Drag (scrollbar, move a map, ...)
        - Open a new browser tab when another tab is already opened
    - Support for stream playing is inactivated for UDP
    - Player synchronization
    - AVI container
    - Bitrate limitation
    - Color adjustment
    - Audio mixing
- Not properly supported in MS-PowerPoint medias rendering:
    - Animation
    - Slide transitions
    - Effects
           - 3D, WordArt, shadow
    - Images
           - Image with filtering
           - Emf
    - Animated image
           - Gif & png (displayed but not animated)
    - Some shapes
        - Table object
        - Smart Art
        - Multi-colours shape texture
    - Text
        - Text vertical centering inside text area shape with rotation
        - Kerning is not supported
    - Bullet point
        - Some bullet points Windings 1 (& 2 & 3) may be wrongly displayed
    - Audio & video
    - Vertical fading (in case mixed horizontal & vertical fading)
    - Font
        - Fail over & substitution fonts
        - some characters whose fonts is 32 bits may be not displayed (ex: fontawesome.ttf)
    - OLE injection (MS objects)
- In case the wireless configuration of the router has just been modified, it is required that the SMT210 device is rebooting once to access again to the WLAN network. In this case, a daily device reboot task is sufficient to work around.


#OLD VERSIONS HISTORY
***********************************************************************

##`2019-10-17` V4.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-4.11.12.zip)
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.11.12**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMT210 middleware version is at least 3.12.20 (and not a beta version)
    - In case already using SignMeeting, check that the SignMeeting version running on the devices is well 1.13.10 (or above). For further information, read the SignMeeting user manual.
- Once the migration Gekkota G3 to Gekkota G4 is done:
    - Ensure to use App version which are compatible
    - your previous projects may be not compatible. For further information, contact support@qeedji.tech
	- some license may be required. For further information, contact support@qeedji.tech
    - In case a message `App format not recognized` is displayed after a publication, check that the content is generated with the appropriate format (`Gekkota G3` vs `Gekkota G4`)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- In some case, the device could not start after a Gekkota 3.XX.YY to Gekkota 4.XX.YY software migration. A power supply unplug/plug was required to solve the issue.

##`2019-06-21` V4.11.11
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.11.11**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMT210 middleware version is at least 3.12.20 (and not a beta version)
    - In case already using SignMeeting, check that the SignMeeting version running on the devices is well 1.13.10 (or above). For further information, read the SignMeeting user manual.
- Once the migration Gekkota G3 to Gekkota G4 is done:
    - Ensure to use App version which are compatible
    - your previous projects may be not compatible. For further information, contact support@qeedji.tech
	- some license may be required. For further information, contact support@qeedji.tech
    - In case a message `App format not recognized` is displayed after a publication, check that the content is generated with the appropriate format (`Gekkota G3` vs `Gekkota G4`)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: embeds Mozilla Gecko 47
- Add support for Test card display with key sequence pressed on a USB keyboard:
    - left, right, left, right (in less than 5 sec)
- Add support for MS-PowerPoint media
    - 2007/2010/2013/2016
    - *.pptx, *.ppsx
        - note: in case you have some medias MS-PowerPoint *.ppt (or *.pps), save them into respectively ```PowerPoint presentation *.pptx```, (or ```PowerPoint presentation *.ppsx```)
        - note: ensure that the resolution of the images embedded in the PowerPoint is supported by the device
        - Ensure to embed the appropriate required by your PowerPoint media in your content
- Add support for subtitles SRT, VTT
- Add support for new preferences ```innes.hid.keyboard-event.*.authorized``` allowing to activate interactivity
    - default value: true
- Add support for new preferences ```innes.hid.pointer-event.*.authorized``` allowing to activate interactivity
    - default value: true
- Add a message *No partition was detected* when the SD Card is removed from the device
- Change: brandname `Innes` to `Qeedji` accompanied with its gekko logo displayed in black color
- Change the Web browser tab rendering when connecting to the device WebUI:
    - Title: `<MODEL> (<Hostname>)`
    - Logo: gekko displayed in black color
- Change: the max. number of Web socket opened at the same time is limited to 550
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change green LED behaviour depending on these different states
    - 1 flash every 4 seconds: Nominal behaviour
     - 2 flashs + 4 seconds OFF: Fail soft mode level1
     - 3 flashs + 4 seconds OFF: Fail soft mode level2
     - 4 flashs + 4 seconds OFF: System data partition check disk
     - 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
     - 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
     - 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
- Fix: the corner of some HTML shape could have some square corner instead some rounded corner because the border-radius could not work sometimes
- Fix: the check box default color could have a wrong color
- Fix: some scrollbar could be display along the system scene edge when the rotation was 90°
- Fix: USB injection was not working with some USB stick models
- Fix: an unexpected black screen could occur (very rare)

##`2018-12-05` V4.10.17
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.10.17**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMT210 middleware version is at least 3.12.20 (and not a beta version)
    - In case already using SignMeeting, check that the SignMeeting version running on the devices is well 1.13.10 (or above). For further information, read the SignMeeting user manual.
- Once the migration Gekkota G3 to Gekkota G4 is done:
    - Ensure to use App version which are compatible
    - your previous projects may be not compatible. For further information, contact support@qeedji.tech
	- some license may be required. For further information, contact support@qeedji.tech
    - In case a message `App format not recognized` is displayed after a publication, check that the content is generated with the appropriate format (`Gekkota G3` vs `Gekkota G4`)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: embeds Mozilla Gecko 47
- Add support for HTML5 WebUI
- Add support for MS-PowerPoint media
    - 2007/2010/2013/2016
    - *.pptx, *.ppsx
        - note: in case you have some medias MS-PowerPoint *.ppt (or *.pps), save them into respectively ```PowerPoint presentation *.pptx```, (or ```PowerPoint presentation *.ppsx```)
        - note: ensure that the resolution of the images embedded in the PowerPoint is supported by the device
    	- Ensure to embed the appropriate font required by your PowerPoint in your content
- Add support for subtitles SRT, VTT
- Add support for new preferences ```innes.hid.keyboard-event.*.authorized``` allowing to activate interactivity
	- default value: true
- Add support for new preferences ```innes.hid.pointer-event.*.authorized``` allowing to activate interactivity
	- default value: true
- Add a message *No partition was detected* when the SD Card is removed from the device
- Change: the max. number of Web socket opened at the same time is limited to 550
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change green LED behaviour depending on these different states
	- 1 flash every 4 seconds: Nominal behaviour
 	- 2 flashs + 4 seconds OFF: Fail soft mode level1
 	- 3 flashs + 4 seconds OFF: Fail soft mode level2
 	- 4 flashs + 4 seconds OFF: System data partition check disk
 	- 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
 	- 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
 	- 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
- Fix: the corner of some HTML shape could have some square corner instead some rounded corner because the border-radius could not work sometimes
- Fix: the check box default color could have a wrong color
- Fix: some scrollbar could be display along the system scene edge when the rotation was 90°
