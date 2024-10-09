# Firmware and documentation for SMA300
*RELEASE NOTE*

**IMPORTANT: In case you wish to upgrade your SMA300 devices from Gekkota 3 middleware (3.12.XX) to Gekkota 4 middleware (4.1X.YY), it is highly recommended to contact support@qeedji.tech to know the impact of this migration. Check also the following software compatibilities, and remember that you won’t be allowed to downgrade to a Gekkota 3 middleware afterwards. The specific SMA300 RMA (or Return Merchandise Authorization) consisting in downgrading the middleware Gekkota 4 back to the middleware Gekkota 3 is not covered by the warranty of the device**

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

##`2023-11-29` V4.14.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.16.zip)
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.14.16**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMA300 middleware version is at least 3.12.20 (and not a beta version)
- Once the migration Gekkota 3 to Gekkota 4 is done:
    - **You'll not be allowed to downgrade to a Gekkota 3 middleware afterwards**
    - In case using publication software,
        - your previous projects may be not compatible. For further information, contact support@qeedji.tech
        - some license may be required. For further information, contact support@qeedji.tech
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *identifier* and *password* fields self-filling and self-validation for Web page form in some condition
- Fix: the unsigned CA certificates was not supported
- Fix: the DNS value was not displayed in the *Network* pane of the *Information* menu of the device configuration Web interface

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (4.14.16~001C_en) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/sma300-user_manual-4.14.16~001C_en.pdf)
#### **SUPPORTED MEDIAS**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji PowerPoint Publisher for Media Players](https://github.com/Qeedji/archives/blob/master/downloads/http://www.innes.pro/en/support/index.php?SMA300/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?SMA300/Application_notes_and_related_tools/Configuration_by_script)
#### **SDK DEVELOPERS**
- [Link to github SDK-G4 API](https://github.com/Qeedji/gekkota-os/tree/master/SDK-G4/API)
#### **POWERSHELL SCRIPTS FOR DEVICE MAINTENANCE**
- PSDevice Powershell script V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/scripts/powershell/Powershell_Innes_Device/delivery/Powershell_Innes_Device-1.10.10.zip)
#### **INFORMATION**
- Mouse pointer
    - The mouse pointer is only supported when working with a touch screen monitor
- Monitor monitoring
    - Some unexpected player reboot could be noticed when monitor monitoring is made on the wrong video input (when monitoring HDMI1 while cable is plugged on HDMI2)
#### **KNOWN LIMITATIONS**
- Not supported
    - Player synchronization
    - AVI container
    - inter-media transitions & zone exit transitions
    - Bitrate limitation
    - Colour adjustment
- Anomaly
    - In case the WWAN option is activated, the video decoding through UDP in multicast is not supported
- Media Source Extension
    - In this version, the playback of all other MSE contents playbacks, meaning MSE video content displayed in an area inside the HTML page, without any device reboot is not guaranteed
    - About the ```Media Source Extension``` JavaScript:
        - Each MSE content provider has its own algorithm implementation in its MSE JavaScript. Consequently, it is possible that some MSE content having a specific MSE JavaScript is not fully supported making that the video does not start properly (for example, with some MSE video content replay)
        - When playing a MSE content, an error message *if playback doesn’t begin shortly, try restarting your device* could be displayed sometimes after a while telling that the video has stopped and will not start anymore. To work around, play another media, then play again the MSE content. The best practise consists in playing the MSE content URI with a fixed duration (ex: duration 1 hour).
    - About other MSE content: for example, the MSE video content displayed in a thumbnail inside the HTML Web page:
        - Warning: the MSE content provider can decide at any time to remove a content. So an MSE content can be available one day and not available the day after
        - When the MSE content is displayed in a thumbnail inside the HTML Web page, a lot of other objects need to be displayed as well and could require a lot of memory. Depending on the Web page played, the device could sometimes reboot after having played it after a while. The `W3C` is working on to improve the `Media Source Extensions` specifications so that the MSE Javascript is more suitable also for devices that have a limited available memory amount
    - To inactivate the DASH MSE feature,
        - Set the user preference ```media.mediasource.enable``` to ```false```. The error message *An error occurred. Please try again later (Playback ID: ...)* should be displayed when trying ten to play an MSE content in this condition. This message could be seen also when playing another video at the same time when the dual video decoding is not supported on this device.
- Note for MS-PowerPoint bullets
    - Ensure that the appropriate fonts are properly embedded in the content
- support for these MS-PowerPoint features
    - shape outline
    	- sketched style
    - animation
    - effects
       	- WordArt, shadow
    - images
       	- image with filtering
       	- .emf
    - animated image
       	- .gif & .png (displayed but not animated)
    - these shapes
	    - smart Art
     	- multi-colors shape texture
    - text
	    - kerning
	- font
      	- embedded
	- OLE injection (MS objects)

#OLD VERSIONS HISTORY
***********************************************************************

##`2023-04-19` V4.14.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.15.zip)
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.14.15**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMA300 middleware version is at least 3.12.20 (and not a beta version)
- Once the migration Gekkota 3 to Gekkota 4 is done:
    - **You'll not be allowed to downgrade to a Gekkota 3 middleware afterwards**
    - In case using publication software,
        - your previous projects may be not compatible. For further information, contact support@qeedji.tech
        - some license may be required. For further information, contact support@qeedji.tech
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the *video* inserted in the slidemaster template of MS-PowerPoint medias was not played

##`2023-01-13` V4.14.14 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.14.zip)
>##### **IMPORTANT IN CASE MIGRATION V3.12.XX TO 4.14.14**
- Before upgrading to Gekkota 4 middleware:
    - Ensure that your current SMA300 middleware version is at least 3.12.20 (and not a beta version)
- Once the migration Gekkota 3 to Gekkota 4 is done:
    - **You'll not be allowed to downgrade to a Gekkota 3 middleware afterwards**
    - In case using publication software,
        - your previous projects may be not compatible. For further information, contact support@qeedji.tech
        - some license may be required. For further information, contact support@qeedji.tech
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: MS-Powerpoint medias playback
	- the failover font loading from the Microsoft cloud was not working
	- the date and time was not progressing while the slide was displayed
	- the interactive buttons was not working
	- the numbered bullet was not supported
	- the shape's outline styles, out of the shape's outline plain style, was not supported
	- the font style inside table was not supported
	- the shape outline could overlap the text
	- the interline policy was not applied for the first line
	- single strikethrough characters could be displayed instead of double strikethrough characters
	- the text could be wrongly placed inside its shape
	- the *crop to shape* mask could not be displayed
	- the shapes could be displayed with a wrong transparency level
	- the text inside shape could be not centred on Qeedji System AOSP devices
	- the background gradient could be not rendered properly
	- the text could be displayed with in black color instead of in white color
	- the hyperlinks was not underlined properly
	- some unexpected text overlap was noticed
- Fix: changing an audio parameter value in the *Output* pane of the *Configuration* menu of the Web user interface was leading to an automatical validation of the other parameters without the user consent

##`2022-12-20` V4.14.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: MS-Powerpoint medias playback
	- the video and audio medias embedded inside MS-PowerPoint medias was not played
	- the hidden slides of MS-PowerPoint medias was displayed
- Fix: in some cases, the device could finalize the App content downloading coming from *XPF* server only after a device reboot
- Fix: in some cases, after having pushed an App having a playfolder with service account M365, the playfolder was not playing immediately the new content of the remote directory

##`2022-09-14` V4.14.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the `_` character was not supported in the *Name* input of the *Logs* pane in the *Maintenance* menu of the device configuration Web interface
- Fix: in some case, the audio channel could start several dozens of seconds after the visual channel has started (App mode in *Pull WebDAV - xpf compatibility*)

##`2022-06-24` V4.14.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Microsoft 365 services accounts
- Add support for CIFS services accounts
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/`
- Fix: the App newly published was not taken into account as soon as the App was containing a playfolder using a Microsoft 365 services account
- Fix: since recent YouTube streaming modification, the device was rebooting when playing Web TV URI
- Fix: in some case, the date shown in the Web user interface was wrong
- Fix: the *last modified time* status value was not available for files got through FTP

##`2022-04-06` V4.14.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.14.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for GAP App (`.gap` extension) downloading in the *Pull WebDAV* mode of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for GAP App (`.gap` extension) loading in the *Local deposit* mode of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for GAP App removing then GAP App downloading when the Fail soft mode level 1 is reached
- Add support for the message *Waiting - Fail soft mode – clean up in progress* when removing a GAP App when the Fail soft mode level 1 is reached
- Add support for `system.architecture` Web IDL to get device architecture information
- Add support for `launcher.cacheManager` Web IDL to pause/resume downloading of GAP App
- Add support for `system.maintenance` Web IDL to get the number of reboot and the number max of reboot before going in Fail soft mode
- Add support for `utils.preferencesManager` Web IDL to add new custom preferences
- Add support for `ioManager` Web IDL to get remote file and install it in file system
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/.playout/`
- Change: when a `.gap` extension is detected in the URL field of the *Pull WebDAV* radio of the *App* pane of the *Configuration* menu, the slash character is not automatically added at the end of the URL
- Change: update the list of embedded trusted root certificates
- Change: it is now possible to copy the EDID value from the *Screens* pane of the *Information* menu of the Web user interface
- Change: renamed the button label *Purge the App* into *Uninstall the App* in the *App* pane of the *Configuration* menu of the Web user interface
- Change: when coming straight from factory or after having pressed on the *Factory preferences settings* button,
	- the *Status server* checkbox and the *Software and configurations installation server* are not activated anymore in the *Server* pane of the *Configuration* menu of the Web user interface
	- the *Use this URL for Status server and software and configurations installation server* checkbox is not activated anymore in the *App* pane of the *Configuration* menu of the Web user interface
- Fix: the following character string `#&` was not displayed properly in the Web user interface
- Fix: unexpected carriage return was noticed in text areas having space characters with some Web page
- Fix: the message *Information - Complete installation, rebooting* was not displayed before rebooting when a middleware upgrade order was done
- Fix: some Web page could be not displayed anymore
- Fix: after a App content updating by a USB mass storage insertion in the device, the state value of the launcher HTML tag in the device status was not updated with the right value

##`2021-05-12` V4.13.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.13.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the default value for the `innes.app-profile.manifest-downloader:g3.*.*.*.heartbeat` user preference to 45 seconds instead of 1 minute and change the default value for the `innes.app-profile.manifest-downloader:g3.*.*.*.heartbeat.max-startup-time` user preference to 30000 milliseconds instead of 200 milliseconds
- Change the default value for the `innes.app-profile.manifest-downloader:g2.*.*.*.heartbeat` user preference to 45 seconds instead of 1 minute and change the default value for the `innes.app-profile.manifest-downloader:g2.*.*.*.heartbeat.max-startup-time` user preference to 30000 milliseconds instead of 200 milliseconds
- Fix: the device could reboot when playing a specific PDF media
- Fix: the *Rotation* field set in the output pane of the configuration menu was displayed shifted on the right in the configuration Web interface
- Fix: in case using remote file inside playfolder, and the origin directory content is empty, the playfolder could play no media after one publication of two until the next playfolder update
- Fix: when using some App, some image could be not displayed letting appear the background image

##`2020-10-06` V4.13.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.13.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for content update by USB with the pattern ```manifest.<MAC>.xml```
    - with ```<MAC>``` value matching with the *AA-BB-CC-DD-EE-FF* pattern
- Fix: the message *content temporarily unavailable* could be displayed when trying to play a RTSP stream coming from a specific encoder/streamer
- Fix: in some case, the remote file download could not work when changing the remote file URL  from `smb://` scheme to `http://` scheme
- Fix: in *pull WebDAV* configuration, when using a remote folder, the content of the local folder was merged with the content of the remote folder instead of being replaced totally
- Fix: When using a remote folder with `smb://` scheme, the content of the playfolder was purged at the second remote folder downloading occurrence without being updated afterwards except after publication
- Fix: a remote file downloading could not be realized when the file was alone on the */.playout/.domain-repository/* device WebDAV directory
- Fix: a message *content temporarily unavailable* was displayed when playing a video media with .wmv container containing a `WMA Pro` audio track (media generated from the last versions of MS-PowerPoint)
- Fix: in *Pull WebDAV (xpf compatibility)* configuration, some unexpected empty content could be noticed when using an opt-out conditioned by a date variable

##`2020-08-05` V4.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.13.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these printable characters in the security key value in the `WLAN` pane of the WebUI
	- ```#$%&'()*+,-./:;<=>?@[]^_{} ~|```
- Add support for the user preference ```innes.image.max_size```
	- default value: 2048 (in KB)
		- warning: do not set this value over 4096 KB else trying to decode image whose width or height is over 4096 may lead to unexpected device reboots
- Add support for ```.playlist``` extension
- Fix: a hostname with two only characters was not supported
- Fix: Web page hosted on the on-premises solution *Power BI Report Server* could not be displayed
	- In this use case, it is required to change the default value of the user preference ```dom.mozBrowserFramesEnabled```. for further information, refer the the `Power BI` application note
- Fix: these printable characters was not supported anymore in the security key value in the `WLAN` pane of the WebUI
	- *ghijklmnopqrstuvwxyz*
- Fix: the device could be able to install a specific corrupted firmware
- Fix: in some case, a inconsistent reboot manager calendar value could make reboot the device

##`2020-03-28` V4.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.13.10.zip)
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
- Add support for `Reboot manager` panel in the *Task* menu of the *Configuration* tab of the WebUI allowing to create device reboot tasks
- Add support for option `SSID Hidden` in the *WLAN* menu of the Web UI allowing to tell if the SSID is broadcasted or not
- Add support for new fields in WLAN interface
	- `Pairwise key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
	- `Group key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
- Change security cipher label in the *WLAN* tab of the WebUI
    - `WPA-PSK` to `WPA-Personal (PSK)`
    - `WPA2-PSK` to `WPA2-Personal (PSK)`
- Change: after having not interacted with the WebUI for a duration, a message *Resource not found (Error 404)* is displayed and the failover URL is ```http://<device-ip-addr>/.resources/error-<date>T<time>Z.html```
- Change: some specific error screens pages are now displayed in the WebUI when facing error connection with the device Web server
- Change: in the WebUI, display now both the `UTC Date & Time` and the `local Date & Time`
- Change: the audio volume is immediately changing when the volume control value is modified in the menu output of the WebUI
- Change: remove the time percentage panel displayed when rebooting a device
- Change: it is now possible to create task occurring every day or only from date1 to date2
- Change: in the mode *Local deposit* of the *App* menu of the WebUI, the archive is disappearing now automatically when taken into account by the device as soon as the App is loaded.
- Change: remove *.br and *.gz files from file system to decrease the firmware size
- Change: when the configuration server URL was wrong, a memory leak could be noticed
- Fix: the device was not exiting fail soft mode after having loaded an App through the *Local deposit* App menu of the WebUI
- Fix: video loopback was not working properly sometimes inside HTML widget
- Fix: device reboot could be noticed when playing some MS-PowerPoint
- Fix: sometimes some MS-PowerPoint transitions could be unexpectedly jerky when CEC was activated
- Fix: in some cases, the device could not stop rebooting in fail soft mode state
- Fix: the opt-out was not working properly when the variable was containing non ASCII characters (mode Pull WebDAV - xpf compatibility)
- Fix: was not able to play a media inside a container conditioned by a date variable (mode Pull WebDAV - xpf compatibility)
- Fix: in some rare case, an artefact could be displayed for a while at device start-up

##`2019-11-04` V4.12.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.12.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the keys combinations with the ALT key was not working with *AZERTY* keyboards (for example `@`)
- Fix: using manifest remote file with ```smb://``` scheme URL could make reboot the device each time the downloader timer expires

##`2019-08-04` V4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.12.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new WLAN chipset
- Add support for RTP MPEG Stream
- Add support for MS-PowerPoint transitions
    - *Subtles* type:
        - Fade, Push, Wipe, Split, Reveal, Cut, Uncover, Cover, Flash
    - *Exciting* type:
        - Dissolve, Clock, Flip, Cube, Box, Zoom
    - *Dynamic content* type:
        - Pan, Ferris Wheel, Rotate, Orbit
 - View the supported transitions in your language [FR](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/transition_FR.jpg) [EN](gekkota-os-sma300/transition_EN.jpg) [DE](gekkota-os-sma300/transition_DE.jpg) [ES](gekkota-os-sma300/transition_ES.jpg)
- Add support for RTSP with authentication
- Add support for remote bootstrap App
- Add support for ```smb://``` URL scheme allowing to download resources file available on shared directories of network disks
    - Supported protocol: *SMB/CIFS 2.0* and *SMB/CIFS 1.0*
    - Remote file example in the manifest: ```smb://<computer_ip_addr>/<computer_directory>/file.txt``` (+ login + password)
- Add support for a new information message when using App loading through the local deposit of the WebUI
    - *Waiting - Extracting files*, temporary displayed, the time for the device to install the new App
        - the content of the App is then played immediately
    - *Error - Unable to load the App. Please check the consistency of the package* temporary displayed when the App is not consistent. Then the information message *Information - No content* is displayed
- Add support for ```Power Manager``` panel in the *Task* menu of the *Configuration* tab of the WebUI allowing to create power management tasks with the *Energy consumption profile* levels:
    - ```Very highly optimized```
    - ```Highly optimized```
    - ```Moderately optimized```
    - ```Nominal Mode```
    - Associated user preference for energy manager task: ```innes.power-manager.calendar``` (JSON value)
- Add support for the test card activation/inactivation when pressing key combination
    - If your monitor has a remote control and supports properly the CEC(&sup1;)(&sup2;)
        - ensure there is no menu or banner displayed on the monitor then
        - press the key combination: ```[left arrow, right arrow, left arrow, right arrow]``` in less than 10 seconds to display the test card, and the same combination again to inactivate it
            - some monitor may require to unselect then select the HDMI input on which the player is connected to force a CEC_Set_Input_Source before applying the key combination
        - (&sup1;) for SAMSUNG monitors, the CEC activation is often made through the *Anynet* menu
        - (&sup2;) for LG monitors, the CEC activation is often made by using the *Simplink* key of the remote control
    - Else connect a USB keyboard
        - press the key combination: ```[left arrow, right arrow, left arrow, right arrow]``` in less than 10 seconds to display the test card, and the same combination again to inactivate it
    - The user preference ```innes.player.mire.key-event.*.authorized``` needs to be set to *true*  (default value)
- Add support for AV Command over CEC
    - *power-mode*
        - 0 (for POWER_MODE_OFF)
        - 1 (for POWER_MODE_ON)
        - 2 (for POWER_MODE_SUSPEND)
        - 3 (for POWER_MODE_STANDBY)
        - 4 (for POWER_MODE_OFF_POWER_BUTTON)
    - *video-input*
        - 109 (VIDEO_INPUT_HDMI_CEC_ACTIVE_SOURCE)
    - for further information, visit the github [Link to github SDK-G4 API](https://github.com/gekkota-os/SDK-G4/tree/master/API)
- Change: the brandname moves from `Innes` to `Qeedji`
- Change: the WebUI logo Qeedji is supporting a button to return to the Web page ```http://<device_ip_addr>/.playout/```
- Change the WebUI look for the WebDAV directories ```http://<device_ip_addr>/<directory>/```
    - with ```<directory>``` = ```.admin```, ```.extension```, ```.log```, ```.playlog```, ```.playout```, ```.resources```, ```.software```, ```.status```, ```.upnp```
- Change the Web browser tab title when connecting to the device WebUI:
    - Title: `<MODEL> (<Hostname>)`
    - Pictogram: black gecko
- Change: the CEC is supported by default
- Change: the monitor monitoring refresh period is now 50 seconds (instead of 10 seconds)
- Change: the MS-PowerPoint default background is not transparent by default anymore
- Change: some fonts was not rendered properly leading to unexpected line break (MS-PowerPoint, PDF, ...)
- Fix: after having installed a certificate with a configuration script, sometimes it was not possible anymore to connect to the device in https or to add a new certificate.
    - if the previous case occurs in this version, the certificate list is cleared once then the issue should not occur anymore. Think to add back the missing certificate after the  device reboot.
    - if the previous case occurs in this version while the test card is displayed, a message *Cryptographic database corrupted, please reboot for repairing* is displayed. The device needs to be restarted (WebUI, or electrical unplug)
- Fix: the device could reboot infinitely when connecting a monitor with a HDMI to DVI cable
- Fix: sometimes the background of MS-PowerPoint medias could have a wrong color (white instead black)
- Fix: in some rare case the background color of Playzilla could be the wrong one
- Fix: an image of a MS-PowerPoint could be not displayed when its resolution was linked to the layout resolution
- Fix: the equations could be cropped by the bottom inside a MS-PowerPoint media
- Fix: the USB injection was not working with some USB stick models
- Fix: a message content temporarily unavailable was displayed when viewing a MS-PowerPoint containing an *Up* arrow.
- Fix: some recent mp4 video could return a message content temporarily unavailable
- Fix: in some case, a playout content could be not played when two scenes was starting at the same time (Pull WebDAV - xpf compatibility configuration) (rare)

##`2019-02-27` V4.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.11.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HTML5 WebUI
- Add support for a new directory ```.playlog/``` in the WebUI
- Add support for new monitor display configurations
    - ```128x96 60Hz```
    - ```112x96 60Hz```
    - ```96x96 60Hz```
- Add support for the user preference ```innes.video.decoding-group.enabled```:
    - *true*: in case a second video media is trying to start while a first one is already running, the second video does not start. A message *content temporarily unavailable* is displayed for the second video media
    - *false* (default value): in case a second video media is trying to start while a first one is already running, the first video is stopped and the second video media is starting. A message *content temporarily unavailable* is displayed for last stopped video media
- Add a message *No partition was detected* when the SD Card is removed from the device
- Add support for the display of a *key* pictogram showing the MAC address value needed for the license
- Add support for ```CEC``` Web IDL
	- The CEC feature is inactivated by default
	- To activate the CEC feature set the user preference ```system.connector.*.*.cec.cec_1.enabled``` to the value `true`
- Add support for ```Power management``` Web IDL
- Change: add an error message when the WebUI is launched with the *MS-Internet Explorer 11* Web browser
- Change: the max. number of Web socket opened at the same time is limited to 550
- Change: embeds a new time zone database (version: 2018g, source: https://www.iana.org/time-zones)
- Change: when the sound card is inactivated in the device WebUI, the audio is not decoded anymore
- Change: replace ```Linux armv7l``` by ```Linux``` in the device user agent
- Fix: it was not possible anymore to connect to the device WebUI after having changed first the device WebUI login, then the device WebUI password
- Fix: in some case, it was not possible to save the hostname value in the WebUI
- Fix: a DVB-T video over UDP could be jerky after having unplugged the Ethernet cable for a while
- Fix: some unexpected device reboots could occur after a couple of minutes or after a couple of hours when playing some specific medias
- Fix: sometimes some unexpected video freeze could be noticed after a while when playing a live DVB-T through UDP
- Fix: sometimes the audio could be slightly in late after a while when playing a DVB-T live through UDP
- Fix: some unexpected device reboots could occur when playing a DVB-T live through UDP, especially when facing stream discontinuities
- Fix: some PDF media could not be rendered properly except after having been edited by your edition software
- Fix: in some case, when two scrolling texts overlay was launched at the same time, any of both wasn't displayed
    - Now when a 2nd scrolling text overlay is starting, a message *content temporarily unavailable* is displayed for this 2nd scrolling text overlay.
    - To run two scrolling texts at a time, inactivate the option *if possible, use an overlay* for one of them
- Fix for MS-PowerPoint medias:
    - Table object was not supported
    - Some bullets was not rendered properly
        - Ensure to embed the appropriate fonts in your content
    - Alternate content, allowing to support for example shape background images, was not supported:
        - 3D models
        - equations
    - Sometimes arrows shapes could be not rendered properly
    - Sometimes some pages numbers could not have the right value
    - Some font letters could be not be aligned vertically when the text had an orientation different from 0° (modulo 90°)
- Fix: inside a HTML page, some font could have a wrong size
- Fix: inside a HTML page, the check box default color could be not the right one
- Fix: some scrollbar could be displayed along the edge of a system scene when the rotation was 90°
- Fix: some skip frames could be noticed when playing some video media when a new content was pushed on the WebDAV directory at the same time

##`2018-10-31` V4.10.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.10.16.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some custom network configurations, a message *content temporarily unavailable* could be displayed when playing some multicast streams

##`2018-10-03` V4.10.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.10.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DASH MSE (```Media Source Extensions```)
    - The DASH MSE is activated by default (meaning the preference ```media.mediasource.enable``` is set to ```true```)
    - This feature allows to play some Web TV channels compliant with the DASH MSE in some conditions:
        - The DASH MSE video content has to be displayed in full screen inside the HTML page:
            - This is the typical YouTube MSE content URL in full screen:
                - ```https://www.youtube.com/embed/<YouTube_video_uuid>?autoplay=1```
            - The Web TV channels available in full screen are available for download in the *content models and uri models packs* delivered the 3rd of October 2018
    - To know whether other Web TV channels may be well supported in full screen on the device, check first that the URL is properly displayed inside your Web browser
- Add support for new WLAN chip supporting 2.4 GHz and 5 GHz bands
- Add support for `LDAP` Web IDL
- Add support for Web SQL
- Fix: the video control overlay (play, pause) was not displayed on touch screen device
- Fix: the email address consistency was not tested before sending an email
- Fix: the device could crash when playing DASH Live stream
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: a message *content temporarily unavailable* could be displayed at the loop back of a RTSP stream
- Fix: the device could reboot when playing RTSP stream with the TERADEK Cube 105 encoder/streamer
- Fix: sometimes, a message *content temporarily unavailable* was displayed when playing a RTSP Live stream in outband mode with VLC
- Fix: in some case, the video could be frozen with audio running when playing RTSP live stream from the VLC software
- Fix: some interlaced video could be rendered in a wrong orientation when the rotation was 90°
- Fix: playing the inconsistent URI HDMI-input could make reboot the device systematically
- Fix: the player could reboot when playing a wrong RTP/SDP Audio Video Profile
- Fix: UDP stream could not be played in case using the DME204 streamer whose the WebUI parameter ```Output > Ethernet > Audio ``` was unselected

##`2018-08-09` V4.10.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.10.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for scrolling text in overlay
	- Note when using the model ```Scrolling text from file```: has to be displayed in a zone whose height is maximum up to 20% of grid height
- Fix: the download of a playout containing a media whose size is above 2GB was taking too much time (ex: 3 hours instead of 10 minutes for a media whose size is 7GB)
- Fix: in some case, the device could reboot after a while after having played several PDF medias
- Fix: an unexpected message "video can't be played because the file is corrupt" could appear when playing some Web page
- Fix: the gradient background of MS-PowerPoint medias could be not rendered properly
- Fix: a unexpected message *content temporarily unavailable* could be displayed when playing some video medias with PCM audio (Mp4 container)

##`2018-06-06` V4.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-4.10.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for MS-PowerPoint media
    - 2007/2010/2013/2016
    - *.pptx, *.ppsx
        - note: in case you have some medias MS-PowerPoint *.ppt (or *.pps), save them into respectively ```PowerPoint presentation *.pptx```, (or ```PowerPoint presentation *.ppsx```)
    - Ensure to embed the appropriate font in your content
Change: embeds Mozilla Gecko 47
- Add support for DASH MPEG (live & VOD) adaptive streaming (.mdp)
    - Dynamic quality value switching is not yet supported. The constant quality value can be set in Mbps with the user preference ```innes.video.has.max-bitrate``` (set to ```5``` for example 5 Mbps max.)
    - The server DASH Live and the SMA300 device need to be on time and synchronized with a NTP server
    - For video with high rate, in case the video is stopping after a while, it could be needed to increase the ```media.cache_size``` from *16364* KB (default size) to *65536* KB
- Add support for subtitles SRT, VTT
- Add support for RTP
- Add support for RTSP V1.0 (live & VOD)
- Add support for monitor-monitoring
- Add support for touch screen devices over USB
	- The user preference ```innes.hid.keyboard-event.*.authorized``` needs to be ```true``` (default value)
	- The user preference ```innes.hid.pointer-event.*.authorized``` needs to be ```true``` (default value)
- Add support for user preference ```system.display-output_1.sync.force-hv-positive```
	- ```system.display-output_1.sync.force-hv-positive``` = false (default): the device is taking account of the vertical and horizontal synchronization values set in the chosen resolution/frequency/mode screen configuration
	- ```system.display-output_1.sync.force-hv-positive``` = true (default): the device is forcing the vertical and horizontal synchronization values to positive
- Add support for PTP/IEEE1588
    - supported mode: PTP L2
    - default user preferences
        - ```system.clock-sync.enable = false``` (PTP/IEEE1588 not activated)
        - ```system.clock-sync.ptp.timeout.lock-on-master = 30``` (30 seconds)
        - ```system.clock-sync.ptp-domain = 0``` (domain_id = 0)
        - ```system.clock-sync.source = ntp``` (ntp, ptp-l2, ...)
- Add support for AVCommand activation and configuration (WebUI)
	- Connectors
  		- ```LAN```
			- port (used by the monitor),
			- protocol name (supported by the monitor)
		- ```DDC/CI``` through video connectors
			- HDMI
			- DVI
			- VGA
	- Commands
		- ```Standby```
		- ```Power mode```
		- ```Brightness```
		- ```Backlight```
		- ```Video input```
			- to know the list of possibles values for DDC/CI, please refer to `AVCmd` Web IDL (Gekkota OS GitHub Repo)
		- ```Mute```
		- ```Volume```
		- *Custom commands* (not supported for DDC/CI)
	- Protocols
		- ```eiki_xb42```
 		- ```nec_np3150```
 		- ```philips_m2```
 		- ```extron_m1```
 		- ```nec_x461s```
 		- ```samsung_m1```
 		- ```hitachi_m1```
 		- ```nudam_m2```
 		- ```sanyo_m1```
 		- ```optoma_m1```
 		- ```sharp_m1```
 		- ```lge_m1```
 		- ```panasonic_m1```
 		- ```sony_m1```
 		- ```mitsubishi_xl6x00```
 		- ```panasonic_m2```
 		- ```toshiba_m1```
 		- ```nec_m1```
 		- ```philips_m1```
	 	- ```toshiba_tdpt420```
		- custom_protocol
			- *Add*,
			- *Edit*,
			- *Copy* (an existing protocol by adding the suffix *_custom*)
			- *Delete*
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change green LED behaviour depending on these different states
	- 1 flash every 4 seconds: Nominal behaviour
 	- 2 flashs + 4 seconds OFF: Fail soft mode level1
 	- 3 flashs + 4 seconds OFF: Fail soft mode level2
 	- 4 flashs + 4 seconds OFF: System data partition check disk
 	- 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
 	- 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
 	- 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
