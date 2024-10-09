# Firmware and documentation for DME204
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

## `2020-03-28` V4.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/gekkota_os-dme204-setup-4.13.10.zip)
>##### **IMPORTANT IN CASE MIGRATION V2.50.91 TO V4.13.10**
- Before upgrading to Gekkota G4 middleware:
	- check that your current DME204 middleware version is `2.50.91` minimum
- Once the migration V2.50.91 to 4.13.10 is done:
	- **You'll not be allowed to downgrade to a V2.50.91 middleware afterwards**
	- In case using publication software,
		- your previous projects may be not compatible. For further information, contact support@qeedji.tech
		- some license may be required. For further information, contact support@qeedji.tech
- In case the device does not manage to install the Gekkota G4 middleware, contact support@qeedji.tech to double check that your DME204 device is fully compatible for the migration
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
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
- Add support for `Reboot manager` panel in the *Task* menu of the *Configuration* tab of the WebUI allowing to create device reboot tasks
- Change: after having not interacted with the WebUI for a duration, a message *Resource not found (Error 404)* is displayed and the failover URL is ```http://<device-ip-addr>/.resources/error-<date>T<time>Z.html```
- Change: some specific error screens pages are now displayed in the WebUI when facing error connection with the device Web server
- Change: in the WebUI, display now both the `UTC Date & Time` and the `local Date & Time`
- Change: the audio volume is immediately changing when the volume control value is modified in the menu output of the WebUI
- Change: remove the time percentage panel displayed when rebooting a device
- Change: it is now possible to create task occurring every day or only from date1 to date2
- Change: in the mode *Local deposit* of the *App* menu of the WebUI, the archive is disappearing now automatically when taken into account by the device as soon as the App is loaded.
- Change: remove *.br and *.gz files from file system to decrease the firmware size
- Change: when the configuration server URL was wrong, a memory leak could be noticed
- Change: the device is streaming a black content when the device `power manager` is in *Very highly optimized* state or when the monitor `standby task` is programmed in the App
- Fix: the device was not exiting fail soft mode after having loaded an App through the *Local deposit* App menu of the WebUI
- Fix: video loopback was not working properly sometimes inside HTML widget
- Fix: device reboot could be noticed when playing some MS-PowerPoint
- Fix: in some cases, the device could not stop rebooting in fail soft mode state
- Fix: the opt-out was not working properly when the variable was containing non ASCII characters (mode Pull WebDAV - xpf compatibility)
- Fix: was not able to play a media inside a container conditioned by a date variable (mode Pull WebDAV - xpf compatibility)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual 4.13.10~003A_EN [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/dme204-user_manual-4.13.10~003A_en.pdf)
#### **SUPPORTED MEDIAS**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji PowerPoint Publisher for Media Players](https://github.com/Qeedji/archives/blob/master/downloads/http://www.innes.pro/en/support/index.php?DME204/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.11.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.11.10.msi)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?DME204/Application_notes_and_related_tools/Configuration_by_script)
#### **MOE**
- [Link to MOE information](http://www.innes.pro/en/support/index.php?DME204/Application_notes_and_related_tools/MOE10)
#### **SDK DEVELOPERS**
- [Link to github SDK-G4 API](https://github.com/Qeedji/gekkota-os/tree/master/SDK-G4/API)
#### **AUDIO INACTIVATION**
- Some rare DVB-T receiver or UDP streaming receiver may not be able to play properly the DME204 UDP stream when audio is inactivated. To work around in this case, activate the audio with the DME204 WebUI
#### **KNOWN LIMITATIONS**
- Not supported anymore
	- SWF medias
	- .ppt and *.pps medias
- Not yet supported
	- Infrared
	- Jack35 GPIO out
- Media Source Extension
	- In this version, the playback of all other MSE contents playbacks, meaning MSE video content displayed in an area inside the HTML page, without any device reboot is not guaranteed
	- About the ```Media `Source Extension``` Javascript:
        - Each MSE content provider has its own algorithm implementation in its MSE Javascript. Consequently, it is possible that some MSE content having a specific MSE Javascript is not fully supported making that the video does not start properly (for example, with some MSE video content replay)
        - When playing a MSE content, an error message *if playback doesn’t begin shortly, try restarting your device* could be displayed sometimes after a while telling that the video has stopped and will not start anymore. To work around, play another media, then play again the MSE content. The best practise consists in playing the MSE content URI with a fixed duration (ex: duration 1 hour).
    - About other MSE content: for example, the MSE video content displayed in a thumbnail inside the HTML Web page:
        - Warning: the MSE content provider can decide at any time to remove a content. So an MSE content can be available one day and not available the day after
        - When the MSE content is displayed in a thumbnail inside the HTML Web page, a lot of other objects need to be displayed as well and could require a lot of memory. Depending on the Web page played, the device could sometimes reboot after having played it after a while. The `W3C` is working on to improve the `Media Source Extensions` specifications so that the MSE Javascript is more suitable also for devices that have a limited available memory amount
    - To inactivate the DASH MSE feature,
        - Set the user preference ```media.mediasource.enable``` to ```false```. The error message *An error occurred. Please try again later (Playback ID: ...)* should be displayed when trying ten to play an MSE content in this condition. This message could be seen also when playing another video at the same time while the dual video decoding is not supported on this device.
- Not yet supported in MS-PowerPoint medias rendering:
    - Animation
    - Effects
           - WordArt, shadow
    - Images
           - Image with filtering
           - Emf
    - Animated image
           - Gif & Png (displayed but not animated)
    - Some shapes
        - Smart Art
        - Multi-colours shape texture
    - Text
        - Kerning is not supported
    - Audio & video
    - Vertical fading (in case mixed horizontal & vertical fading)
    - Font
        - Embedded (the font needs to be embedded in the playout manifest)
        - Fail over & substitution fonts
        - some characters whose fonts is 32 bits may be not displayed (ex: fontawesome.ttf)
    - OLE injection (MS objects)
    - Slide hiding

# OLD VERSIONS HISTORY
***********************************************************************

## `2019-08-28` V4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/gekkota_os-dme204-setup-4.12.10.zip)
>##### **IMPORTANT IN CASE MIGRATION V2.50.91 TO V4.11.10**
- Before upgrading to Gekkota G4 middleware:
	- check that your current DME204 middleware version is `2.50.91` minimum
- Once the migration V2.50.91 to 4.12.10 is done:
	- **You'll not be allowed to downgrade to a V2.50.91 middleware afterwards**
	- In case using publication software,
		- your previous projects may be not compatible. For further information, contact support@qeedji.tech
		- some license may be required. For further information, contact support@qeedji.tech
- In case the device does not manage to install the Gekkota G4 middleware, contact support@qeedji.tech to double check that your DME204 device is fully compatible for the migration
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a scheme list in WebUI *Configuration > Output* in *Ethernet* output mode
    - `udp://`
    - `rtp://`
    - `rtmp://`
	    - `Server address`
		    - for example: a.rtmp.youtube.com/live3
	    - `Key`
		    - for example: 1t7h-py6d-p9qw-881
- Add support for scrolling text with overlay
    - note 1: to have the best rendering, set the output mode frequency to the maximal one: 60 Hz
    - note 2: to support properly the scrolling text overlay, thanks to keep the same output mode frequency for the receiver devices (ex: *1920x1080 @ 60 Hz*) as for the DME204 encoder/streamer (ex: *1280x720 @ 60 Hz*)
    - check that the monitor connected to the receiver devices are properly supporting the frequency set
- Add support for remote file with the scheme ```smb://```
    - Supported protocol: *SMB/CIFS 1.0*
    - URL example: ```smb://<computer_ip_addr>/video.mp4```
		- Some Windows OS version may not support the SMB/CIFS 1.0 by default. For further information, read the [CIFS V1.0 activation on MS-Windows 10 application note](http://www.innes.pro/fr/support/index.php?Third_part_documentation_and_tools/CIFS_V1.0_activation_on_MS-Windows_10)
- Add support for remote bootstrap App
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
- Change: the brandname moves from `Innes` to `Qeedji`
- Change: the WebUI logo Qeedji is supporting a button to return to the Web page ```http://<device_ip_addr>/.playout/```
- Change the WebUI look for the WebDAV directories ```http://<device_ip_addr>/<directory>/```
    - with ```<directory>``` = ```.admin```, ```.extension```, ```.log```, ```.playlog```, ```.playout```, ```.resources```, ```.software```, ```.status```, ```.upnp```
- Change the Web browser tab title when connecting to the device WebUI:
    - Title: `<MODEL> (<Hostname>)`
    - Pictogram: black gecko
- Change: the MS-PowerPoint default background is not transparent by default anymore
- Change: some fonts was not rendered properly leading to unexpected line break (MS-PowerPoint, PDF, ...)
- Fix: in some streaming conditions, the playout background could be black color instead being the right one
- Fix: after having installed a certificate with a configuration script, sometimes it was not possible anymore to connect to the device in https or to add a new certificate.
    - if the previous case occurs in this version, the certificate list is cleared once then the issue should not occur anymore. Think to add back the missing certificate after the  device reboot.
    - if the previous case occurs in this version while the test card is displayed, a message *Cryptographic database corrupted, please reboot for repairing* is displayed. The device needs to be restarted (WebUI, or electrical unplug)
- Fix: sometimes some MS-PowerPoint transitions could be unexpectedly jerky when CEC was activated
- Fix: in some rare case the background colour of Playzilla could be the wrong one
- Fix: an image of a MS-PowerPoint could be not displayed when its resolution was linked to the layout resolution
- Fix: the equations could be cropped by the bottom
- Fix: a message content temporarily unavailable was displayed when viewing a MS-PowerPoint containing an *Up* arrow.
- Fix: the video could become jerky when receiving data on the WebDAV server
- Fix: in some case, a playout content could be not played when 2 scenes was starting at the same time (rare)

## `2019-04-10` V4.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/gekkota_os-dme204-setup-4.11.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a ```.playlog/``` directory in WebUI
- Add support for ```Playlog``` capability
    - The playlog feature needs a playout script `playlog-V1.10.10.js`
    - This script need to be added to each new playout requiring the playlog feature
    - The playout script `playlog-V1.10.10.js` is working only with `Playzilla 4.11.11` (or above)
    - For further information, visit the [Playlog playout script Web page](http://www.innes.pro/fr/support/index.php?PlugnCast_G3/Playout_Scripts/Playlog)
- Add support for a new log file ```.log/streamer.log``` in Web interface
- Change: the max. number of Web socket opened at the same time is limited to 550
- Fix: the check box default color if a HTML page could have a wrong color
- Fix: in the Web UI menu `Maintenance > Logs`, once all the items (default name *app* and *widget*) had been removed, it was not possible to add a new item
- Fix: in some case, it was not possible to save the hostname value in the WebUI
- Fix: when editing a integer user preference in the WebUI, the value 9999 was presented then could be saved after a device reboot

## `2018-10-03` V4.10.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/gekkota_os-dme204-setup-4.10.15.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DASH MSE (```Media Source Extensions```)
    - The DASH MSE is activated by default (meaning the preference ```media.mediasource.enable``` is set to ```true```)
    - This feature allows to play some Web TV channels compliant with the DASH MSE in some conditions:
        - The DASH MSE video content has to be displayed in full screen inside the HTML page:
            - This is the typical YouTube MSE content URL in full screen:
                - ```https://www.youtube.com/embed/<YouTube_video_uuid>?autoplay=1```
            - The Web TV channels available in full screen are available for download in the *content models and uri models packs* delivered the 3rd of October 2018
    - To know whether other Web TV channels may be well supported in full screen on the device, check first that the URL is properly displayed inside your Web browser
- Add support for check disk in WebUI
- Add support for LDAP IDL
- Add support for Web SQL
- Add support for `WebUI > Maintenance`: Repair/Format
- Add support for RTSP
- Fix: device content update from a WebUI `Configuration > App > local deposit` with a .tar, .tgz, .tar.gz archive not working when the path file length of the medias was above 100 characters
- Fix: it was not possible to enter a NTP server URL whose size is greater than 15 characters
- Fix: the email address consistency was not tested before sending an email
- Fix: the device could crash when playing DASH Live stream
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: a message *content temporarily unavailable* could be displayed at the loop back of a RTSP stream
- Fix: the device could reboot when playing RTSP stream with the TERADEK Cube 105 encoder/streamer
- Fix: sometimes, a message *content temporarily unavailable* was displayed when playing a RTSP Live stream in outband mode with VLC
- Fix: in some case, the video could be frozen with audio running when playing RTSP live stream from the VLC software
- Fix: the player could reboot when playing a wrong RTP/SDP Audio Video Profile
- Fix: pressing on the button ```Start the App``` in ```WebUI > Configuration > App``` could lead to an error when the *TestCard* is activated
- Fix: UDP stream could not be played in case using the DME204 streamer whose the WebUI parameter ```Output > Ethernet > Audio ``` was unselected
- Fix: the device could crash sometimes when starting to play an RTSP stream from the TERADEK Cube 105 encoder/streamer
- Fix: a message *content temporarily unavailable* could be displayed when playing some Mpeg2-PS video (mpg container)
- Fix: the URL pasting was not working in the WebUI was not working [DME204]
- Fix: in some rare case, the DME204 boot could not end implying to unplug/plug the power supply to work around (very rare)

## `2018-08-28` V4.10.14 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dme204/gekkota_os-dme204-setup-4.10.14.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HTML5 WebUI
- Add support for MS-PowerPoint media
    - 2007/2010/2013/2016
    - *.pptx, *.ppsx
        - note: in case you have some medias MS-PowerPoint *.ppt (or *.pps), save them into respectively ```PowerPoint presentation *.pptx```, (or ```PowerPoint presentation *.ppsx```)
    - In case using publication software, ensure that the appropriate font is embeded in your content
- Change: embeds Mozilla Gecko 47
- Add support for subtitles SRT, VTT
- Add support for RTP/SDP
- Add support for DASH MPEG (live & VOD) adaptive streaming (.mdp)
    - Note: dynamic quality value switching is not yet supported. The constant quality value can be set in Mbps with the user preference ```innes.video.has.max-bitrate``` (set to ```5``` for example 5 Mbps max.)
    - The server DASH Live and the DME204 device need to be on time and synchronized with a NTP server
    - For video with high rate, in case the video is stopping after a while, it could be needed to increase the ```media.cache_size``` from *16364* KB (default size) to *65536* KB
- Add support for device content update from a WebUI `Configuration > App > local deposit` with a single archive file:
	- `<content_name>.tar`: archive *.tar* of all the files needed to play a content, meaning at least:
	    - player.html
	    - manifest.xml
    - `<content_name>.zip`: archive *.zip* of all the files needed to play a content (like explained just above)
     	- Note: when medias whose pathfile name is containing non-ascii characters, it is required to set the 7Zip option *parameters* value =`cu` to support UTF-8 for file names
   - `<content_name>.tar.gz`: compressed archive *.tar.gz* of a `<content_name>.tar` archive (typical format of the archive made when using the WebUI `directory download` feature)
    - `<content_name>
    - `: compressed archive *.tgz* of a `<content_name>.tar` archive
- Change green LED behaviour depending on these different states
	- 1 flash every 4 seconds: Nominal behaviour
 	- 2 flashs + 4 seconds OFF: Fail soft mode level1
 	- 3 flashs + 4 seconds OFF: Fail soft mode level2
 	- 4 flashs + 4 seconds OFF: System data partition check disk
 	- 5 flashs + 4 seconds OFF: Error noticed on system data partition: partition format is required
 	- 6 flashs + 4 seconds OFF: Firmware upgrading (or patch installation)
 	- 7 flashs + 4 seconds OFF: Not possible to write on SSD anymore. If persistent, contact support@qeedji.tech
