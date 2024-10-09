# Firmware and documentation for DMB400 G4
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

##`2023-11-29` V4.14.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.16)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *identifier* and *password* fields self-filling and self-validation for Web page form in some condition
- Fix: the unsigned CA certificates was not supported
- Fix: the DNS value was not displayed in the *Network* pane of the *Information* menu of the device configuration Web interface
#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (4.14.16~001C_en) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/dmb400-user_manual-4.14.16~001C_en.pdf)
#### **SUPPORTED MEDIAS DOCUMENTATION**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji PowerPoint Publisher for Media Players](https://github.com/Qeedji/archives/blob/master/downloads/http://www.innes.pro/en/support/index.php?DMB400/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?DMB400/Application_notes_and_related_tools/Configuration_by_script)
#### **SDK DEVELOPERS**
- [Link to github SDK-G4 API](https://github.com/Qeedji/gekkota-os/tree/master/SDK-G4/API)
#### **DEVICE MAINTENANCE WITH POWERSHELL**
- PSDevice Powershell script V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/scripts/powershell/Powershell_Innes_Device/delivery/Powershell_Innes_Device-1.10.10.zip)
#### **INFORMATION**
- Mouse pointer
    - The mouse pointer is only supported when working with a touch screen monitor
- Monitor monitoring
    - Some unexpected device reboot could be noticed when monitor monitoring is made on the wrong video input (when monitoring HDMI1 while cable is plugged on HDMI2)
#### **KNOWN LIMITATIONS**
- Media Source Extension
    - In this version, the playback of all other MSE contents playbacks, meaning MSE video content displayed in an area inside the HTML page, without any device reboot is not guaranteed
    - About the ```Media Source Extension``` JavaScript:
        - Each MSE content provider has its own algorithm implementation in its MSE JavaScript. Consequently, it is possible that some MSE content having a specific MSE JavaScript is not fully supported making that the video does not start properly (for example, with some MSE video content replay)
        - When playing a MSE content, an error message *if playback doesn’t begin shortly, try restarting your device* could be displayed sometimes after a while telling that the video has stopped and will not start anymore. To work around, play another media, then play again the MSE content. The best practise consists in playing the MSE content URI with a fixed duration (ex: duration 1 hour).
    - About other MSE content: for example, the MSE video content displayed in a thumbnail inside the HTML Web page:
        - Warning: the MSE content provider can decide at any time to remove a content. So an MSE content can be available one day and not available the day after
        - When the MSE content is displayed in a thumbnail inside the HTML Web page, a lot of other objects need to be displayed as well and could require a lot of memory. Depending on the Web page played, the device could sometimes reboot after having played it after a while. The `W3C` is working on to improve the `Media Source Extensions` specifications so that the MSE JavaScript is more suitable also for devices that have a limited available memory amount
    - To inactivate the DASH MSE feature,
        - Set the user preference ```media.mediasource.enable``` to ```false```. The error message *An error occurred. Please try again later (Playback ID: ...)* should be displayed when trying ten to play an MSE content in this condition
- H265-60Hz
    - When playing H265 60Hz video, it is advised to configure the display output with a 60Hz mode
- HDMI-input
    - When rotation 90°, 180°, 270° is activated, the HDMI-input is not supported and a message *content temporarily unavailable* is displayed
    - HDMI-input content playback is not supported when the user preference ```innes.video.renderer.default``` is set to the value ```gpu```. To support it, change the user preference value to ```overlay```
    - Some rare skip frame could be noticed on HDMI-input content zone when playing several medias at the same time
    - Some rare skip frame could be noticed on HDMI-input content when there is audio on HDMI-input
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
- Dual video decoding
    - When the user preference ```innes.video.renderer.default``` is set to ```overlay```, only two video medias can be played at the same time;; also some video medias might be not decoded when played inside small zones (ex: video thumbnails), especially interlaced video medias (ex: video mosaic). To work around these two limitations, return to ```gpu``` mode by setting the user preference ```innes.video.renderer.default``` to the value ```gpu```
    - Dual video decoding may be not supported when
        - playing one video Ultra HD 3840x2160p H264 and another video H264 (other codecs than H264  would be decoded properly for the second video here)
        - playing one video Ultra HD 3840x2160p H265 and another video H265 (other codecs than H265  would be decoded properly for the second video here)
        - In the Ultra HD resolution, video decoding could be not properly supported when playing one video Ultra HD 3840x2160p H265 and one video Full HD 1080 interlaced (especially in the Ultra HD resolution, when the zone resolution and its aspect ratio is different from the video media intrinsic resolution and pixel ratio)
        - In the Ultra HD resolution and multi-zone, some unexpected skip frame could be noticed when playing a lot of medias at the same time (scrolling text, News feeds, two video medias, PDF, Widget, canvas HTML Web page, ...)
    - Some interlaced video whose pixel ratio is 4/3 could not be played properly when the user preference ```innes.video.renderer.default``` is set to ```overlay```. To work around, set it to ```gpu```


#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2023-04-19` V4.14.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the *video* or *Cameo* inserted in the slidemaster template of MS-PowerPoint medias was not played
- Fix: the video content coming from the HDMI-input was not played back when playing a MS-PowerPoint slide supporting a Cameo object after having hot plugged the HDMI cable connected to the HDMI-input connector

##`2023-01-13` V4.14.14 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.14.zip)
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
- Fix: after having previewed a calendar timeslot containing an UHD video, the video embedded in the following PowerPoint media could not start
- Fix: changing an audio parameter value in the *Output* pane of the *Configuration* menu of the Web user interface was leading to an automatical validation of the other parameters without the user consent

##`2022-12-20` V4.14.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HDMI-input playback in MS-PowerPoint slide thanks to the MS-PowerPoint's *Cameo* feature
- Fix: MS-Powerpoint medias playback
	- the video and audio medias embedded inside MS-PowerPoint medias was not played
	- the hidden slides of MS-PowerPoint medias was displayed
- Fix: in some cases, the device could finalize the App content downloading coming from *XPF* server only after a device reboot
- Fix: after having pushed an App having a playfolder with service account M365, in some cases, the playfolder was not playing immediately the new content of the remote directory

##`2022-09-14` V4.14.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the `_` character was not supported in the *Name* input of the *Logs* pane in the *Maintenance* menu of the device configuration Web interface
- Fix: in some cases, the audio channel could start several dozens of seconds after the visual channel has started (App mode in *Pull WebDAV - xpf compatibility*)

##`2022-06-24` V4.14.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Microsoft 365 services accounts
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/`
- Fix: the App newly published was not taken into account as soon as the App was containing a playfolder using a Microsoft 365 services account
- Fix: the content of the remote playfolder using a CIFS service account could be not downloaded immediately after a publication
- Fix: in some cases, the date shown in the Web user interface was wrong
- Fix: the *last modified time* status value was not available for files got through FTP

##`2022-04-06` V4.14.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.14.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *1920x1200 60 Hz VESA* display mode
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

##`2021-05-12` V4.13.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.13.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the default value for the `innes.app-profile.manifest-downloader:g3.*.*.*.heartbeat` user preference to 45 seconds instead of 1 minute and change the default value for the `innes.app-profile.manifest-downloader:g3.*.*.*.heartbeat.max-startup-time` user preference to 30000 milliseconds instead of 200 milliseconds
- Change the default value for the `innes.app-profile.manifest-downloader:g2.*.*.*.heartbeat` user preference to 45 seconds instead of 1 minute and change the default value for the `innes.app-profile.manifest-downloader:g2.*.*.*.heartbeat.max-startup-time` user preference to 30000 milliseconds instead of 200 milliseconds
- Fix: the device could reboot when playing a specific PDF media
- Fix: the *Rotation* field set in the output pane of the configuration menu was displayed shifted on the right in the configuration Web interface
- Fix: in case using remote file inside playfolder, and the origin directory content is empty, the playfolder could play no media after one publication of two until the next playfolder update
- Fix: when using some App, some image could be not displayed letting appear the background image

##`2020-10-06` V4.13.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.13.12.zip)
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

##`2020-08-06` V4.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.13.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these printable characters in the security key value in the `WLAN` pane of the WebUI
	- ```#$%&'()*+,-./:;<=>?@[]^_{} ~|```
- Add support for the user preference ```innes.image.max_size```
	- default value: 4096 (in KB)
- Add support for ```.playlist``` extension
- Fix: a hostname with two only characters was not supported
- Fix: Web page hosted on the on-premises solution *Power BI Report Server* could not be displayed
	- In this use case, it is required to change the default value of the user preference ```dom.mozBrowserFramesEnabled```. for further information, refer the the `Power BI` application note
- Fix: these printable characters was not supported anymore in the security key value in the `WLAN` pane of the WebUI
	- *ghijklmnopqrstuvwxyz*
- Fix: the device could be able to install a specific corrupted firmware
- Fix: in some case, some audio with a short duration could not be played
- Fix: in some case, a inconsistent reboot manager calendar value could make reboot the device
- Fix: in some case, the HDMI-input media could be not played when played after a UDP playback

##`2020-04-28` V4.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.13.10.zip)
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
- Add support for `Capture video output` in the *Device* menu of the Web UI
    - the user preference is allowing to ```innes.screenshot.width-max``` is allowing to adjust the `Capture video output` resolution width (by keeping the same aspect ratio) DMB400
- Add support for option `SSID Hidden` in the *WLAN* menu of the Web UI allowing to tell if the SSID is broadcasted or not
- Add support for new fields in WLAN interface
	- `Pairwise key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
        - `CCMP (AES) TKIP` (*present only when `SSID hidden` option is not checked*)
	- `Group key ciphering`:
        - `CCMP (AES) `
        - `TKIP`
        - `CCMP (AES) TKIP` (*present only when `SSID hidden` option is not checked*)
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

##`2020-02-10` V4.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.12.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the audio of some Web radio was not working properly

##`2020-01-29` V4.12.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.12.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a weak pull-up to force the GPIO level to logic 1
- Fix: When using the `GPIO input` in a *two wires* configuration, an unexpected behavior could be noticed

##`2019-11-04` V4.12.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.12.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the keys combinations with the ALT key was not working with *AZERTY* keyboards (for example `@`)
- Fix: using manifest remote file with ```smb://``` scheme URL could make reboot the device each time the downloader timer expires

##`2019-08-04` V4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.12.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for resolution modes
    - `768x2560 60Hz LINSN`
    - `3840x2160 45Hz VESTEL`
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
- Add support for HEVC in Mpeg2-TS video media (*.ts container) used on the DVB-T network in Germany for example
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
    - The user preferences needs to be set to *true* (default value)
    	- ```innes.player.mire.key-event.*.authorized```
    	- ```system.connector.*.*.cec.cec_1.enabled```
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
- Change: inactivate the support for H.265 Main Profile 10
- Fix: after having installed a certificate with a configuration script, sometimes it was not possible anymore to connect to the device in https or to add a new certificate.
    - if the previous case occurs in this version, the certificate list is cleared once then the issue should not occur anymore. Think to add back the missing certificate after the  device reboot.
    - if the previous case occurs in this version while the test card is displayed, a message *Cryptographic database corrupted, please reboot for repairing* is displayed. The device needs to be restarted (WebUI, or electrical unplug)
- Fix: the device could reboot infinitely when connecting a monitor with a HDMI to DVI cable
- Fix: sometimes the background of MS-PowerPoint medias could have a wrong color (white instead black)
- Fix: in some rare case the background color of Playzilla could be the wrong one
- Fix: some video 2160p with mp4 container in portrait mode could return an error message *content temporarily unavailable* after a while
- Fix: an image of a MS-PowerPoint could be not displayed when its resolution was linked to the layout resolution
- Fix: the equations could be cropped by the bottom
- Fix: the video media could freeze regularly when the output mode frequency (ex: 1920x1080 CEA-861 50 Hz) was lower than the video frame rate (ex: 60 Hz)
- Fix: the USB injection was not working with some USB stick models
- Fix: a message content temporarily unavailable was displayed when viewing a MS-PowerPoint containing an *Up* arrow.
- Fix: some recent mp4 video could return a message content temporarily unavailable
- Fix: in some case, a playout content could be not played when two scenes was starting at the same time (Pull WebDAV - xpf compatibility configuration) (rare)
- Fix: the keys combinations with the ALT key was not working with *AZERTY* keyboards (for example `@`)
- Fix: using manifest remote file with ```smb://``` scheme URL could make reboot the device each time the downloader timer expires

##`2018-02-27` V4.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.11.10.zip)
>##### **IMPORTANT**
- In case you need to use the CEC playout script, you have to set the user preference ```system.connector.*.*.cec.cec_1.enabled``` to the value `true`. Activating the CEC feature may imply some unexpected device reboots when using some monitor requiring a HDMI-DVI or a HDMI-VGA adapter
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the overscan value *2160p* in the device WebUI
- Add support foar HTML5 WebUI
- Add support for ```Power management``` Web IDL
- Add support for a new directory ```.playlog/``` in the WebUI
- Add support for HDMI-input sources requiring ```HDCP``` authentication
    - Note: to support this kind of HDMI-sources, your device needs to be HDCP compatible and requires a valid HDCP key. These are the different values of HDCP status in the device WebUI (menu ```Information > Devices > HDCP```)
        - ```Supported (valid key) ```: the device is HDCP compatible and a valid HDCP key is installed
        - ```Supported (invalid key)```: the device is HDCP compatible but a valid HDCP key is missing. For more  information, contact support@qeedji.tech
        - ```Not supported```: this device is not HDCP compatible.
            - In case connecting a HDMI-source needing HDCP on the HDMI-input of this device, it may lead to a black screen filling the entire screen.
- Add support for the display of a *key* pictogram showing the MAC identifier used for the license
- Add support for ```CEC``` Web IDL
	- The CEC feature is inactivated by default
	- To activate the CEC feature set the user preference ```system.connector.*.*.cec.cec_1.enabled``` to the value `true`
- Change: add an error message when the WebUI is launched with the *MS-Internet Explorer 11* Web browser
- Change: the max. number of Web socket opened at the same time is limited to 550
- Change: embeds a new time zone database (version: 2018g, source: https://www.iana.org/time-zones)
- Change: when the sound card is inactivated in the device WebUI, the audio is not decoded anymore
- Change: replaces ```Linux armv7l``` by ```Linux``` in the device user agent
- Fix: it was not possible anymore to connect to the device WebUI after having changed first the device WebUI login, then the device WebUI password
- Fix: in some case, it was not possible to save the hostname value in the WebUI
- Fix: a DVB-T video over UDP could be jerky after having unplugged the Ethernet cable for a while
- Fix: a unexpected grey line could be noticed on the edge of the screen in UHD resolution, when the *Error* system scene was displayed
- Fix: some video media over UDP could be jerky after a while when receiving the UDP stream from the ```AMX ENC-N3132``` encoder
- Fix: some unexpected skip frame could appear on video H265 60Hz in the display mode 60Hz
- Fix: playing a DVB-T stream over UDP could lead to jerky video or infinite video freeze
- Fix: these HDMI-input display modes was not supported
    - ```1920x540 60Hz VESA```
    - ```1920x300 60Hz VESA```
- Fix: in some case, when two scrolling texts overlay was launched at the same time, any of both wasn't displayed
    - Now when a 2nd scrolling text overlay is starting, a message *content temporarily unavailable* is displayed for this 2nd scrolling text overlay.
    - To run two scrolling texts at a time, inactivate the option *if possible, use an overlay* for one of them
- Fix for MS-PowerPoint medias:
    - Table object was not supported
    - Alternate content, allowing to support for example shape background images, was not supported:
        - 3D models
        - equations
    - Sometimes arrows shapes could be not rendered properly
    - Sometimes some pages numbers could not have the right value
    - Some font letters could be not be aligned vertically when the text had an orientation different from 0° (modulo 90°)
- Fix: inside a HTML page, some font could have a wrong size
- Fix: inside a HTML page, the check box default color could be not the right one
- Fix: some scrollbar could be displayed along the edge of a system scene edge when the rotation was 90°
- Fix: the very light grey or very dark grey could be displayed with the wrong grey color
- Fix: some skip frames could be noticed on the played video media when a new content was pushed on the WebDAV directory at the same time

##`2018-10-03` V4.10.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.10.15.zip)
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
- Add support for LDAP IDL
- Add support for Web SQL
- Fix: the video control overlay (play, pause, ...) was not displayed on touch screen device
- Fix: the email address consistency was not tested before sending an email
- Fix: the device could crash when playing DASH Live stream
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: a message *content temporarily unavailable* could be displayed at the loop back of a RTSP stream
- Fix: the device could reboot when playing a RTSP stream with the TERADEK Cube 105 encoder/streamer
- Fix: sometimes, a message *content temporarily unavailable* was displayed when playing a RTSP Live stream in outband mode with VLC
- Fix: in some case, the video could be frozen with audio running when playing RTSP live stream from the VLC software
- Fix: the device could reboot when playing two DASH VOD video media
- Fix: the player could reboot when playing a wrong RTP/SDP Audio Video Profile
- Fix: UDP stream could not be played in case using the streamer DME204 device whose the WebUI parameter ```Output > Ethernet > Audio ``` was unselected
- Fix: the device could crash sometimes when starting to play an RTSP stream from the TERADEK Cube 105 encoder/streamer

##`2018-07-31` V4.10.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.10.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for multi-touch screen devices over USB
	- These user preferences value must be set to ```true```:
		- ```innes.hid.keyboard-event.*.authorized```
		- ```innes.hid.pointer-event.*.authorized```
- Fix: the download of a playout containing a media whose size is above 2GB was taking too much time (ex: 3 hours instead of 10 minutes for a media whose size is 7GB)
- Fix: in some case, the device could reboot after having played several PDF medias
- Fix: an unexpected message "video can't be played because the file is corrupt" could appear when playing some Web page
- Fix some skip frame could be noticed on some interlaced video
- Fix: it was not possible to play at the same time the audio track of an HDMI-input video and the audio of another media
- Fix: a unexpected message *content temporarily unavailable* could be displayed when playing some video Mp4 with PCM audio
- Fix: sometimes immediately after a publication, and when several video medias had to start at the same time, all the video medias could not start and the error message *content temporarily unavailable* was not displayed

##`2018-04-24` V4.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.10.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new user preference `network.udp.recv-buffer-size` (in KBytes) to adjust the buffer size used when playing UDP stream
    - default value: `2048` (KBytes)
- Change some user preferences min/max/default value:
    - `system.network.dhcp.nbtries`
        - min: 1, max: 120, defaut value: 10
    - `system.network.dhcp.timeout`
        - min: 1, max: 30, default value: 5
    - `system.network.lan_1.igmp-version`
        - min: 2, max: 3, default value: 3
    - `system.network.ntp.nbtries`
        - min: 1, max: 10, default value: 5
    - `system.network.ntp.timeout`
        - min: 1, max: 20, default value: 10
    - `system.network.wlan_1.mode`
        - min: 1, max: 2, default value: 1
    - `system.network.wlan_1.channel`
        - min: 0, max: 11, default value:  0
    - `system.network.wlan_1.security`
        - min: 0, max: 3, default value:  0
    - `system.network.wlan_1.igmp-version`
        - min: 2, max: 3, default value: 3
    - `system.display-output_1.color-adjustment.opacity.value`
        - min: 0, max: 100, default value: 0
    - `system.display-output_1.color-adjustment.opacity.max-value`
        - min: 0, max: 255, default value: 255
    - `system.sound-output_1.volume`
   	    - min: 0, max: 25700, factory value: 17219
    - *note: after a software migration, in case the previous user preference value was above the maximum value authorized, the user preference value is restored to its default values. The button restore factory preference in WebUI maintenance does not permit to restore the user preferences to their default values*
- Fix: a device reboot could occur with some specific Web page containing a lot of images to display
- Fix: a device reboot could occur in Pull WebDAV - xpf compatibility configuration when date was written in each HTTP request headers then was removed by some customer network devices
    - note: in previous version, setting the user preference `innes.app-profile.manifest-downloader:g3.*.*.*.date-updater.enable` (or `innes.app-profile.manifest-downloader:g2.*.*.*.date-updater.enable`) to the value *false* was permitting to work around the issue in this case
- Fix: MPEG-DASH Wowza stream playback was not supported due to its specific .mdp format
- Fix: a message *content temporarily unavailable* could be noticed at the end of the RTSP stream playback when played infinitely
- Fix: a delay could be noticed between audio and video for some specific video media (.ts  containers)
- Fix : device reboot could occur twice a day when playing several same videos medias at the same time and when the user preference ```innes.video.renderer.default``` was set to the value ```gpu```
- Fix: video could be frozen when playing RTSP stream with bad network conditions
- Fix: audio could be not rendered anymore when playing RTSP stream with bad network conditions
- Fix: audio could be not rendered when playing some specific Mpeg2-ts video media (.ts container)
- Fix: some video frame could be not displayed when playing UDP stream containing audio AC3
- In some case, when the device was not on time, it could not stop displaying system scene "changing system date, rebooting" then rebooting instead of staying on *Fail soft mode* system scene (Pull WebDAV - xpf compatibility configuration)
- Fix: a message *content temporarily unavailable* could be displayed when playing video medias on HDMI-input with zone exit transition activated
- Fix: a device reboot could occur when playing a specific Web page with *transition between media* activated

##`2018-03-02` V4.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-4.10.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the default value for the user preference ```innes.video.decoding-group.enabled``` is now ```true```
- Change for MS-PowerPoint media rendering
    - the option *execute continuously until ESCAPE key is pressed* is not taken into account meaning that when it is ticked, the MS-PowerPoint does not loop back automatically anymore
- Fix for MS-PowerPoint media rendering
    - Shape
        - Shapes end was not displayed (for example for *arrows*)
        - Shape styles was not supported
        - Curved shapes could be wrongly drawn
        - Shape groups could be wrongly placed
    - Text
        - Text in columns
        - Text having rotation 180° could be wrongly placed
    - Gradient
        - *Radial* gradient and *shading from title* gradient was not supported
- Fix: the onthology *HID interactivity* was not working
- Fix: a message *content temporarily unavailable* could be displayed for some audio-video media whose audio track was not embedded in the stream (ts container)
- Fix: when a device is connected on HDMI-input, the content could be frozen sometimes after having unplugged the *HDMI-out* cable
- Fix: some objects of some widget (ex: Agenda) had a wrong orientation when rotation was 90° or 270°
- Fix: drooling effect could be noticed on the text part of some part of PDF medias
- Fix: audio could be jerky when playing some HTTP stream (Mpeg-TS container)
- Fix: device could reboot when playing RTSP streams in bad network conditions
- Fix: text overlap could be noticed when using font whose size is very large
- Fix: EDID could not be displayed with some screen when using video adapter DVI to HDMI

##`2018-02-21` V4.10.10 beta197
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the resolution "1920x540 60Hz VESA"

##`2018-02-08` V4.10.10 beta195
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix MS-PowerPoint
    - text *highlighting* was not supported
    - text *striking* format was not applied on the bullet points
    - text using *font align* property was not centred vertically
    - text *linespacing* format was not supported
    - text inside area with rotation could be not properly aligned
    - text in *small caps* was displayed in lower case
    - text: *non-breakable space* was not properly supported
    - text: in some case font *color of underlined text* could change in the middle of a word
    - text: some unexpected text overlap could be noticed sometimes inside some text area (rare)
    - text: when a shape was *split* horizontally, the text was unexpectedly split as well
    - text: at the right of a bullet point, the text width could be too large
    - text: the font could not be applied for the the text inside the theme
    - the background image could be not displayed after been played more than once (rare)
    - a message *content temporarily unavailable* could be displayed when playing some MS-PowerPoint media containing some specific shapes
    - the colors and outlines of *multi-colors shapes* was not displayed
- Fix: in some case, after a publication, some inconsistent characters could be displayed inside the HTML5 medias or MS-PowerPoint medias (random text areas). The issue was disappearing immediately after a new publication or after a device reboot

##`2018-02-05` V4.10.10 beta192
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new resolutions in EDID
	- 1920x1080p 59.94Hz
	- 1920x1080p 60Hz
	- 1920x1080p 50Hz
	- 1280x720p 59.94Hz
	- 1280x720p 60Hz
	- 1280x720p 50Hz
	- 1920x1080i 59.94Hz
	- 1920x1080i 60Hz
	- 1920x1080p 29.97Hz
	- 1920x1080p 30Hz
- Fix: when connected on HDMI-input, the resolution of a camera Full HD 60Hz was falling down to 480p
- Fix: in very rare cases, after some reboot, some DMB400 devices may be blocked (displaying a black screen, red led always on and green led always off)

##`2018-01-17` V4.10.10 beta190
>##### **IMPORTANT**
- HDMI-input
	- For optimal rendering, the resolution mode of the DMB400 devices and and the one connected to the HDMI-input have to share the same frequency (ex: 60Hz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HDMI input
	- URI:
		- create an URI with the value ```urn:innes:av-input```
			- note: the new URI model is available in content model pack 3.52
	- Set the user preference ```innes.video.renderer.default``` to the value ```overlay```
- Fix: a message *content temporarily unavailable* could be displayed for some video H264 having a large GOP (ex: 96) when the user preferences ```innes.video.renderer.default``` value is set to ```overlay```
- Fix: the MS-PowerPoint media could not be played when stored inside an opt-out (Pull WebDAV - xpf compatibility configuration)
- Fix: device could reboot after having played 1000 times medias having embedded fonts (ex: media SlideMaker, media MS-PowerPoint)
- Fix: some Twitter Web page could crash after a while
- Fix: playing Twitter Web page could prevent some video to be played at the same time
- Fix: device could crash after a while when playing RTSP medias and when facing degraded network conditions
- Fix: immediately after a the publication, a message content temporarily unavailable could be displayed for a video media whose keyframe interval is large (ex: 8 sec)
- Fix: audio was not synchronized to the video when playing RTSP live stream
- Fix: player could reboot sometimes when playing some specific Web page containing video
- Fix: some videos whose codec is VP9 (Webm container) could crash when the user preference ```innes.video.renderer.default``` value is set to ```gpu```

##`2017-11-21` V4.10.10 beta163
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for MS-PowerPoint media
    - 2007/2010/2013/2016
    - *.pptx, *.ppsx
        - note: in case you have some medias MS-PowerPoint *.ppt (or *.pps), save them into respectively ```PowerPoint presentation *.pptx```, (or ```PowerPoint presentation *.ppsx```)
    - Note for Pull WebDAV configuration: ensure that the appropriate font is embedded in tyour content
- Add support for DASH MPEG (live & VOD) adaptive streaming (.mdp)
    - Note: dynamic quality value switching is not yet supported. The constant quality value can be set in Mbps with the user preference ```innes.video.has.max-bitrate``` (set to ```5``` for example 5 Mbps max.)
    - The server DASH Live and the DMB400 device need to be on time and synchronized with a NTP server
    - For video with high rate, in case the video is stopping after a while, it could be needed to increase the ```media.cache_size``` from *16364* KB (default size) to *65536* KB
- Add support for RTSP V1.0 (live)
- Add support for SMTP without authentication
- Change: test card is displayed with *Fira* font
- Change : Pull WebDAV - xpf compatibility converter is based on Playzilla 4.10.17
- Fix: it was impossible to connect to the WebUI after having changed login/password with some specific characters
- Fix: the message *content temporarily unavailable* could appear when
	- playing a video with multi-channel audio
 	- starting a new video after a grid transition
 	- playing, immediately after a publication, a video H265 media, whose key frame value is large (ex: 8 seconds)
- Fix: in some rare case, the configuration-by-script could be not be taken into account in Pull WebDAV configuration
- Fix: after a while, a player synchronized with PTP could face important jerky effects on the played video, when the user preference ```innes.video.renderer.default``` is set to ```overlay```

##`2017-09-27` V4.10.10 beta147
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for ```German``` language (WebUI)
- Add support for ```Spanish``` language (WebUI)
- Add support for ```Maintenance > Middleware``` menu to upgrade device middleware (WebUI)
- Add support for option ```Enable VESA DPMS``` in *Output* menu to activate/inactivate VESA DPMS protocol when setting monitor in standby (WebUI)
	- default value for *Enable VESA DPMS* option: ticked
- Add support for ```Information > Screens``` menu to display EDID value of screens connected to the device (WebUI)
	- Connector Label (+ MCCS connector ID)
	- EDID value as a list of hexadecimal values
- Add support for ```no proxy for``` (WebUI)
	- ```Status server```
	- ```Software and configuration installation serveur``` as well as
	- ```Delivery server```
	- Note: The tick value can be different for the 3 items above when they are not sharing the same domain (or IP address)
- Add support for ```Maintenance > Logs``` menu to print debug log (WebUI)
	- *Name*
		- ```App``` (default)
		- ```Widget```  (default)
		- Contact support@qeedji.tech to know some other log *Names* to activate.
	- *Level*
		- ```OFF```
			- default value is OFF. In nominal case, the device logs *Level* has to be *OFF* else some unexpected rendering issue could be noticed
		- ```ERROR```: allows to only display logs with the ERROR type
		- ```DEBUG```: allows to only display logs with the DEBUG type
	- option: ```Activate trace of undeclared categories```
		- default value: not ticked. Allows to activate all the available traces of the device. In nominal case, this option must be NOT activated
- Add support for AVCommand activation and configuration (WebUI)
	- Connectors
  		- ```RS232 DTE```
	  		- baud rate
	  		- char size
	  		- parity
	  		- flow control
	  		- protocol name
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
			- to know the list of possibles values for DDC/CI, please refer to AVCmd Web IDL (Gekkota OS GitHub Repo)
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
- Add support for video multi-decoding in the ultra HD output resolution
- Add support for a new resolution: *3840x600 60Hz VESA*
- Change: minimum date for date picker is 1st January 2005 (WebUI)
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change green LED behaviour depending on these different states
	- 1 flash every 4 seconds: Nominal behaviour
 	- 2 flashs + 4 seconds OFF: Fail soft mode level1
 	- 3 flashs + 4 seconds OFF: Fail soft mode level2
 	- 4 flashs + 4 seconds OFF: System data partition check disk
 	- 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
 	- 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
 	- 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
- Fix: The message *partition fixing in progress...* was not disappearing after the system partition fixing has completed (WebUI)
- Fix: player could reboot when playing two video medias at a time (*.webm container)
- Fix: when pasting from clip board a URL, login & password, clear the password value when it is not available (WebUI)
- Fix: the protocol AVCommand with ASCII characters did not work
- Fix: unexpected device reboot when playing canvas HTML in hidden area
- Fix: in case file system corruption, player did not keep rebooting with the system scene *unable to recover the file system partition* instead of falling down on system fail soft mode scene after 6 device reboots
- Fix: player was blocked when device was entering in standby, with monitor-monitoring feature activated, video cable plugged on DVI input of monitor *eMachines E202H*
- Fix: some video freeze (skip frame) could be noticed when playing video media UHD@60fps in a zone whose size is less than full screen

##`2017-08-11` V4.10.10 beta128
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for video dual-decoding in the **full HD output resolution** maximum
	- by default, dual-decoding capability is inactivated (preference value ```innes.video.decoding-group.enabled``` is ```false```).
	- To activate dual-decoding capability for max. :
		- Two video Full HD 1080p or
		- One video Ultra HD 3840x2160p@30fps H265 + one video Full HD 1920x1080p (H264, MPEG-4, MPEG-2, VC-1, VP8, VP9)
			- set the user preference ```innes.video.decoding-group.enabled``` to ```true```
			- check that the user preference ```innes.video.renderer.default``` is set to the default value ```overlay```, instead of value ```gpu```
		- note: in this version, dual video decoding is not properly supported when
			- playing one video Ultra HD 3840x2160p H264 and another video
			- playing one video Ultra HD 3840x2160p H265 and one video Full HD 1080i
			- playing one video Ultra HD 3840x2160p H265 and one video H265
			- playing one video Ultra HD 3840x2160p H265 inside a too small zone (ex: zone height less than about half screen).
		- HTML5 model transition up/down may lead to some unexpected video freeze on video 4K H265
- Change: between fail soft mode level 1 and fail soft mode level 2, two green led flashs (instead of one) are now done every 4 seconds
- Change (WebUI):
	- ```.log``` are now at the same level as ```.admin``` directory
	- download directory is now an icon at the top left of the WebUI
	- ```http://<device_ip_address>/?list_directory``` is now displaying
		- .admin
		- .extension
		- .log
		- .playout
		- .resources
		- .software
		- .status
		- .upnp

##`2017-08-02` V4.10.10 beta120
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *MeetingRoom - Summarization* content model
- Add support for *Scrolling text from file* content model (overlay accelerated)
- Fix: some unexpected video artefact could be noticed when playing custom player.html containing video elements
- Fix: UDP datagram was not working properly

##`2017-07-21` V4.10.10 beta111
>##### **IMPORTANT**
- Do not activate *Overlay* option in model Scrolling Text form else some unexpected rendering issues could be noticed for some medias using white color (widget HTML5, PDF, ...) when played at the same time
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for RTSP protocol *VOD*
    - tested with server RTSP *VOD* Ubuntu Live555
    - note: RTSP protocol *Live* not supported
- Add support for SDP/RTP protocol
    - http server is required to host SDP file
- Add support of SMTP (mail sending)
- Add support for ```Format``` tool (to format the storage file system) and ```Fix``` tool (to repair storage file system by keeping most of the content) available in ```WebUI > Maintenance > Tools```
- Add support for automatical storage file system repairing is case corruption is detected. The system scene with message *checking the file system of data partition in progress* is displayed
- Change: Pull WbDAV - xpf compatibility converter is based on Playzilla 4.10.16
- Fix: Gekkota was not able to start properly in case storage file system corruption. Add support for fail over mode in case facing storage file system corruption to start up the software Gekkota properly
    - Note: in this mode, the system scene *Error: Unrecoverable error detected in the filesystem of data partition* is displayed. It is only possible to
        - format the storage file system with the WebUI or
        - launch USB format (or USB recovery) procedure or
        - upgrade the Gekkota device firmware
- Fix: USB recovery was not working
- Fix: device reboot could be noticed when sending email containing a body image (*CIS* type)
- Fix: some video could be displayed with a wrong aspect ratio (mp4 container)
- Fix: in some case, some artefacts could be displayed on the video after a reboot in an Ultra HD resolution with a specific HDMI cable (rare)

##`2017-06-06` V4.10.10 beta99
>##### **IMPORTANT**
- In some pull WebDAV configuration, once upgrade is done, a black screen will appear because the publication mechanism has changed in this version. Publish again to work around
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, some artefacts could be displayed on the video after a reboot in an Ultra HD resolution with a specific HDMI cable (rare)

##`2017-06-02` V4.10.10 beta98
>##### **IMPORTANT**
- In some pull WebDAV configuration, once upgrade is done, a black screen will appear because the publication mechanism has changed in this version. Publish again to work around
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for resolution modes
    - 3840x2160 60Hz CEA-861
    - 3840x2160 59.94Hz
    - 3840x2160 50Hz CEA-861
    - 3840x2160 50Hz VESA
    - In case black screen is noticed when Ultra HD resolution mode is selected, check that your HDMI cable (compliant HDMI 2.0) is plugged on the an HDMI input supporting properly Ultra HD resolution
    - The rotation 90°, 180°, 270° is not supported for output resolution greater than full HD (1080p)
- Add support for preference ```innes.video.renderer.default``` with the possible value
	- ```overlay``` (default & nominal implementation): use enhanced *overlay* capabilities to render the display until the maximal resolution (Ultra HD)
		- allows to support enhanced hardware de-interlacement filter as well when displaying Mpeg-TS interlaced video
	- ```gpu``` (previous implementation): use *gpu* capabilities to render the display until the maximal resolution (Ultra HD)
		- note: in this case full HD video (or higher resolution video), some frames could be lost (not displayed) sometimes
- Add support for debug-tools (+ hyperlink delivery-software_patch.log in WebUI)
- Change: when rotation 90°, 180° or 270° is activated, the mode ```gpu``` is used whatever the value of the user preference ```innes.video.renderer.default```
- Change: error or information message in German language
- Fix: configuration by script through TFTP was not working
- Fix: support for proxy server with authentication was wat working
- Fix memory leak aftar content update
- Fix: device reboot when loading two PDF at a time
- Fix: Web page was not rendered properly (Pull WebDAV - xpf compatibility configuration)
- Fix: one of the scene could be not played properly (in case using the same id) (Pull WebDAV - xpf compatibility configuration)
- Fix: device reboot could be noticed when playing widget HTML in a hidden floating zone

##`2017-05-16` V4.10.10 beta89
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PTP/IEEE1588
    - supported mode: PTP L2
    - default user preferences
        - ```system.clock-sync.enable = false``` (PTP/IEEE1588 not activated)
        - ```system.clock-sync.ptp.timeout.lock-on-master = 30``` (30 seconds)
        - ```system.clock-sync.ptp-domain = 0``` (domain_id = 0)
        - ```system.clock-sync.source = ntp``` (ntp, ptp-l2, ...)
- Fix: player could reboot after a couple of hours when playing several time a short video (AVI container)
- Fix: player could reboot after a couple of hours when playing several time a scrolling text (by inserting a text in a channel) (Pull WebDAV - xpf compatibility configuration)

##`2017-04-28` V4.10.10 beta82
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for USB keyboard management
- Add support for infrared sensor
	- Default inactivated
	- To activate, set the user preference ```system.connector.jack35_1.1.io.jack35-gpio_1.enabled``` to ```false```
	- Remote control Arduino white (20 buttons)
		- Supported keys: ```0, 1, 2, 3, 4, 5, 6, 7, 8, 9```, ```Menu```, ```Power```, ```Volume+```, ```Volume-```, ```Next```, ```Previous```, ```Back``` (or ```C```), ```Play```
		- Not supported key: ```Test```
- Fix: a device reboot could occur after a couple of hours when playing a PDF with a specific video
- Fix: a device reboot could occur after content update  (rare)
- Fix: when playing scrolling text continuously, after a couple of hours, the device could be not able anymore to get the server content (Pull WebDAV - xpf compatibility configuration)
- Fix: some device could reboot after several hours (mode 2T) (rare)


##`2017-04-12` V4.10.10 beta80
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Matroska container (.mkv, .mka, .mks)
	- Codec video: VP8, VP9, HEVC, AVC
	- Codec audio: Vorbis, AAC
- Add support for Webm container (.webm)
	- Codec video: VP8, VP9, HEVC, AVC
	- Codec audio: Vorbis, AAC
- Add support for AVI container
- Fix: scrolling text (by inserting a text in a channel) was played infinitely when behaviour was 1X (Pull WebDAV - xpf compatibility configuration)
- Fix: restore compatibiltiy of USB format with any previous version
- Fix: error message content temporarily unavailable was missing when playing video whose codec is  WMV2) (not supported media)
- Fix: the canal could stop to be played after a while with scenes generated with old version of Pull WebDAV software

##`2017-03-29` V4.10.10 beta75
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: stuck on background (don't play the next media) in case playing a playlist containing a not existing PDF
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)

##`2017-03-24` V4.10.10 beta72
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for UDP streaming playback
- Add support for AVCommand
- Add support for H265/4K (mp4 container)
- Add support for new system screen "App format not recognized" when an App Playzilla 3 if loaded on Gekkota 4 device
- Fix: device not able to boot properly (black screen displayed continuously and WebUI not available when using invalid DNS and activating NTP server (USB format was required to restore the device)
- Fix: content of remote directory was not properly updated (Pull WebDAV configuration) (directory renaming, directory deleting)
- Fix: playing some Web page could prevent Playzilla to go to the next media, or enter/exit screen standby
- Fix: memory leak could be noticed when playing a short video inside a HTML element. Consequently unexpected player reboot could be noticed
- Fix: the loading of some PDF could require all CPU resource and imply jerky effect on others media played in other zones
- Fix: restore support of Pull WebDAV - xpf compatibility configuration over FTP
- Fix: restore support remote media over FTP
- Fix: device reboot (or black screen) when playing PDF media with huge size

##`2017-02-08` V4.10.10 beta58
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for monitor-monitoring
- Change user agent identifiant
- Change: add *middleware* tag *Gekkota-4* in device status (status.xml)
- Fix: TNT stream (with interlacement) was not properly displayed
- Fix: was not able to work with Pull WebDAV - configuration over HTTP(s)
- Fix: background could be lightly noticed when playing HD image slide-show
- Fix: some animated PNG image was not properly displayed
- Fix: slight white artefact when the player is booting up
- Fix: playback could be stuck when playing a same media WMA several times (X2)
- Fix: decoding issue with some TNT stream (interlacement)

##`2017-02-02` V4.10.10 beta54
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Maintenance version (beta version)

##`2017-01-20` V4.10.10 beta43
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Maintenance version (beta version)
