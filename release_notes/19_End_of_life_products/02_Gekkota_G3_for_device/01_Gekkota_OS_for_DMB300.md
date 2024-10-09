# Gekkota OS for DMB300
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led enlightened for few minutes) else the player may not be able to work properly*

##`2021-06-08` V3.12.58 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.58.zip)
>##### **BUG FIX, NEW FEATURE1S, MINOR UPDATES**
- Add support for this resolution mode
	- *1920x540 VESA 60Hz*
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.14 (or above)
- PlugnCast V3.10.47 (or above)
- PlugnCast Studio V2.51.11
- PlugnCast Server V2.50.32

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Installation guide (012A/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/DMB300-guide-installation-012A_fr.pdf)
#### **SUPPORTED MEDIAS DOCUMENTATION**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)
#### **FEATURES & TROUBLESHOOT FIXING GUIDE**
- Features & troubleshoot fixing guide 001A/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/troubleshoot-fixing-guide-Gekkota/Gekkota-troubleshoot-fixing-guide-001A_en.pdf) 

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2018-10-13` V3.12.57 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.57.zip)
>##### **BUG FIX, NEW FEATURE1S, MINOR UPDATES**
- Add support for TLS 1.2 (Transport Layer Security)
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: in some case, the device could not stop rebooting after having unplugged the power supply (very rare)

##`2018-04-26` V3.12.55 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.55.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
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
        - ```ERROR```: permits to only display logs with the ERROR type
        - ```DEBUG```: permits to only display logs with the DEBUG type
    - option: ```Activate trace of undeclared categories```
        - default value: not ticked. Permits to activate all the available traces of the device. In nominal case, this option must be NOT activated
- Change: minimum date for date picker is 1st January 2005 (WebUI)
- Change: display all the available network interfaces in menu ```Information > Network``` (WebUI)
- Change: when pasting from clip board a Plugncast configuration (URL, login, password), clear the password value when it is not available (WebUI)
- Fix: content downloading was not possible anymore when the PlugnCast server date written in each HTTP request headers was removed from the HTTP requests by some customer network devices
    - note: in previous version, setting the user preference `innes.app-profile.manifest-downloader:g3.*.*.*.date-updater.enable` (or `innes.app-profile.manifest-downloader:g2.*.*.*.date-updater.enable`) to the value *false* was permitting to work around the issue in this case
- Fix: SMTP without authentication did not work
- Fix: email attachment was not supported
- Fix: unexpected black screen could be displayed infinitely due to the device which did not manage to boot-up properly (very rare)

##`2017-04-27` V3.12.42 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.42.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a device reboot could occur when publishing with Screen Composer or PlugnCast G2 (rare)
- Fix: a immediate device reboot could be noticed when playing a specific Web page

##`2017-03-29` V3.12.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.40.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)

##`2017-02-24` V3.12.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes some unexpected screen standby exit (or enter) could be noticed (seen on PlugnCast G2 environment)
- Fix: sometimes some scenes could not start (seen on PlugnCast G2 environment)
- Fix: sometimes, some image could be not displayed after a video playback (letting the background   displayed for a while)
- Fix: restore support for PlugnCast G2 over FTP
- Fix: restore support for remote media over FTP
- Fix: an error *Net timeout for download request* could remain in status.xml (and never be cancelled) in case the PlugnCast server was manually shut down for a while (PlugnCast G3)

##`2016-11-07` V3.12.37 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.37.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

##`2016-10-19` V3.12.36 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.36.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: was facing issue to connect to WLAN router when its SSID broadcasting is not activated (not visible)

##`2016-10-05` V3.12.35 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.35.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, player could not be not able to play any TNT channel leading to *content temporarily unavailable* (now, when DVB-T express card is not able to provide DVB-T data properly for 10 seconds, a workaround is detecting this anomaly and make reboot the player)
- Fix: player could face issue to take a playout containing a file whose size is more than 2 GB

##`2016-08-09` V3.12.33 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-3.12.33.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Add preferences permitting to not display monitor-monitoring data *power-mode* and *input-source* in device-status (by example in case the screen is raising inconsistent data)
    - Set the preference ```innes.app-profile.monitor-monitoring.i2c_1.subd15_1.*.protocol``` to ```none``` (instead of auto)
    - Set the preference ```innes.app-profile.monitor-monitoring.i2c_1.hdmi_1.*.protocol``` to ```none``` (instead of auto)
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: player could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix: artefact could be noticed when playing video medias (Wmv container) generated with PowerPoint 2013 or 2016 (HD resolution / 30 fps)
- Fix: device status (status.xml) was containing wrong connection information in case both HDMI cable and VGA cable was plugged (Monitor monitoring)
- Fix: MS-PowerPoint media (with animation starting as soon as the PowerPoint starts) could be displayed partially on the screen
- Fix: in some case unexpected slight additional delay could be noticed between audio and video when playing interlaced video media with track audio EAC3 (Mpeg2-ts container)
- Fix: xpf file or media file of size 0 KB could be noticed randomly in case reboot immediately after publication (making appear unexpected *no content* message or *media temporarily unavailable* message)
- Fix: some video could be displayed in 4-3 aspect ratio instead 16-9 aspect ratio

##`2016-06-01` V3.12.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to export a playout as *tar.gz* archive (from player to PC with a Web browser) (WebUI)
	- ```http://<player_IP_address>/.playout/?export```
		- To decompress the archive, use one of the softwares WinRar (V5.40 beta1 or above) or 7Zip (V9.5 or above) is required
- Add possibility to list available WebDAV directories (WebUI)
	- ```http://<player_IP_address>/?list_directory```
- Add gateway name and network prefix size in IP address when test card is displayed
	- for example: *192.168.1.29/17*
- Add monitor monitoring HDMI/DVI/VGA
	- Prerequisite for DDC: video cable & video connector of the screen (monitor) have to support DDC (pin DDC/SDA and pin DDC/SDL)
	- DDC-CI/MCCS (MCCS versions: 1.0, 2.0, 2.1, 2.2) (supports by default DDC/EDID) (the screen has to be compatible with MCCS)
		- powermode: ON/OFF (monitoring every 1 minute)
		- input source
	- DDC/EDID
		- connected: true/false (true if DDC reading is successful) (monitoring every 1 minute)
		- connector label: HDMI, DVI-I OUT, VGA_OUT...
		- manufacturer-id
		- product-name
		- product-code
		- serial-number
	- Compatible with PlugnCast G3 3.10.26 (or above)
	- Monitor monitoring DDC is inactivated by default. To activate it, set the preference ```innes.app-profile.monitor-monitoring.i2c_1.<your_connector>.authorized``` to true according to the used connector:
		- ```<your_connector>``` can be
			- hdmi_1 or
			- vga_1
	- In case one screen is plugged on HDMI, and another one is plugged in VGA, Gekkota could fetch wrong monitor monitoring status due to conflit between the screens
	- In case selected output is HDMI, and the only screen connected is VGA, Gekkota is fetching monitor monitoring status from VGA screen (and reciprocally)
- Add support for AVCmd Web IDL TCP/IP and serial
    - TCP/IP profile
    	- Multi-device (same port)
    	- TV Device protocols
            	- ```samsung_m1```, ```nec_m1```
        - TV Commands:
            - Standby, Power mode, Brightness, Backlight, Video input, Mute, Volume
            - Call (custom protocols)
            - possibility to inactivate API with preference
        - Daisy chain RS232 (head TV device configured in TCP/IP)
            - mode broadcast (all the TV connected in the daisy chain by RS232 apply the AV command)
            - mode by device ids (only the TV connected in RS232 and having the right broadcast_id apply the AV command)
    - Serial profile
        - ```/dev/ttyS0```
        - TV commands:
            - Standby, Power mode, Brightness, Backlight, Video input, Mute, Volume
            - Call (custom protocols)
            - possibility to inactivate API with preference
        - TV Device protocols
            - ```eiki_xb42```, ```nec_np3150```, ```philips_m2```, ```extron_m1```, ```nec_x461s```, ```samsung_m1```, ```hitachi_m1```, ```nudam_m2```, ```sanyo_m1```, ```kramer_m1```, ```optoma_m1```, ```sharp_m1```, ```lge_m1```, ```panasonic_m1```, ```sony_m1```, ```mitsubishi_xl6x00```, ```panasonic_m2```, ```toshiba_m1```, ```nec_m1```, ```philips_m1```, ```toshiba_tdpt420```
        - Daisy chain RS232 (head TV device configured in serial)
            - mode broadcast (all the TV connected in the daisy chain by RS232 apply the TV command)
            - mode by device ids (only the TV connected in RS232 and having the right broadcast_id apply the TV command)
- Add support for AVCmd custom device protocol addon (serial or TCP/IP) by USB injection
    - Installation/uninstallation
    - Activation/inactivation
    - Requires configuration script V1.10.19 (or above)
    - a custom device protocol example is proposed as example inside configuration script
        - refer to Gekkota application note AVCmd for more information
- Add support for Web IDL AVCmd DDC
	- DDC profile
		- Prerequisite for DDC: video cable & video connector of the screen (monitor) have to support DDC (pin DDC/SDA and pin DDC/SDL)
		- TV has to support DDC-CI/MCCS (MCCS versions: 1.0, 2.0, 2.1, 2.2)
		- TV Commands:
        	- Standby, Power mode, Brightness, Backlight, Video input, Mute, Volume
        	- Call (setVcpCode, getVcpCode)
    - DDC in inactivated by default. For more information, refer to Gekkota AVCmd application note (002A or above)
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix: no content screen could be displayed infinitely after a publication, due to filesystem corruption (a reboot was solving the issue)
- Fix: after a reboot, and once video media (played in 1X) has been played at least once, video media could start with a unexpected delay of half second (player content needing to be played synchronized)
- Fix jerky effect on image when transition or escape by the top (or bottom) (Slide Maker / PlugnCast G3 configuration)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix directory opening issue when the directory name is containig special characters (WebUI)

##`2016-04-19` V3.12.30
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix unexpected jerky effect on some interlaced H264 video (typically HD DVBT)
- Fix: no content screen is displayed infinitely after a publication, due to a filesystem corruption (a reboot was solving the issue)
- Fix: after a reboot, and once video media (played in 1X) has been played at least once, video media could start with a unexpected delay of half second
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player rebooting and having Ethernet cable unplugged (PlugnCast G2 configuration)
- Fix: Reboot capability was not stopped at the configuration script injection (PlugnCast G2 configuration)
- Fix: player was not able to take a playout with some custom CMS server (due to wrong management of etag file containing ```;``` character)

##`2016-02-29` V3.12.29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add display modes
	- "1280x720 60Hz CEA-861"
	- "1280x720 50Hz CEA-861"
	- "1920x1080 60Hz CEA-861"
	- "1920x1080 50Hz CEA-861"
- Add support for INNES universal infrared remote control (white, 20 buttons)
	- IR sensor TSOP2238
	- remote control key: ```0``` to ```9```
 	- refer to Gekkota application note GPIO configuration V1.10.15 for more information
- Add: WWAN/WLAN failover network in case internet connection is lost on LAN (monitoring every 15 minutes)
- Add support for TNT HD
	- If the URN of TNT HD services are not embedded in your Screen Composer (or PlugnCast), it is required to install content model package V3.29 (or above)
- Add support for configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support for specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
- Add support for new WWAN modules: Sierra Wireless MC8705, MC7304 & MC7355
- Add possibility to read player status (status.xml) through the player WebDAV server
 	- ```http::/<player_IP_Addr>/.status/```
- Change PDF viewer to increase PDF viewing efficiency
- Change: test pattern
	- display of the 3 identification id
		- MAC
		- UUID
		- hostname
	 	- note:
			- a star stamp is indicating chosen identification method
	- display of the network interface parameter
		- MAC address,
		- IPV4 address
		- IPV6 address
		- Status for the available network interface (up: usable, down: unusable)
		- The network interface parameter are displayed one after the other every 10 seconds
			- a radio button is indicating the index of the interface in the list of interfaces
		- List of potential network interfaces
			- Ethernet:  ```LAN<i>```
			- 3G: ```WWAN<i>```
			- WIFI: ```WLAN<i>```
- Change: rename display mode
	- "1024x600 60Hz DENSITRON 84-01X8-00XT" to
	- "1024x600 60Hz DENSITRON 84-0188-001T"
- Fix: rare unexpected video tearing noticed on some player (video media, transitions between media) which could be solved previously only after a player reboot (occurence rate was depending on platform)
- Fix risk to not be able to upgrade anymore Gekkota_os version in case wrong firmware (ex: Gekkota_RT firmware) has been loaded by error previously in this player
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix: scrolling text overlay could not start immediately after a playout publishing
- Fix unexpected player reboot while playing media scrolling text with overlay
- Fix: player does not keep rebooting when injecting firmware through USB (and player previously powered off)
- Fix: scrolling text with overlay could not start sometimes immediately after a publishing
- Fix remaining inconsistent *Fail soft mode - waiting for new content* in device status after exiting from failsoft mode state
- Fix black screen when zapping on TNT services (Express Card Hauppauge WinTV) with weak signal (tuner was not able to lock anymore after zapping on specific services at the end of UHF band)
- Fix infinite black screen immediately after reboot when zapping on some TNT service
- Fix: WWAN did not work when DHCP was activated (was disconnected 30 seconds after player start-up)
- Fix: some characters or some image was not properly displayed for some PDF medias
- Fix: delay could be noticed between flash media when played inside playfolder with a rule (opt-out)
- Fix video decoding issue when video is coming from Androïd (Mov container) (video containing altitude/longitude/latitude)
- Fix: remote resource was not downloaded properly the secondth time when injecting USB content twice
- Fix playout not taken by the player with Screen Composer in case containing remote resource and player let in PlugnCast G2 configuration
- Fix: in some case, video whose start-up is programmed at fix time in XPF could start with a delay of 1 second because calendar tolerence error is one second (player synchronization)
- Fix: Gekkota licence error was not reported in device status (PlugnCast G2 configuration)
- Fix content update issue when trying to fetch opt-out whose defaut directory has been removed (PlugnCast G2 configuration)
- Fix player crash when using LDAP request with null search filter
- Fix: playout did not start when remote resource becomes available (after playout publishing with remote resource not available)
- Fix: don't raise anymore error HTTP 404 at each publication (PlugnCast G3 configuration)
- Fix: clean errors linked to the URI in device status when successful request has been done then for this URI
- Fix: message "Installation in progress" was not clean up properly from device-status after configuration file installation failure (for example when facing configuration file syntax error)
	- Note: root cause error is still kept in device status to help user to correct syntax error
- Fix audio conflict when media with audio is played in main zone and another audio is played at the same time in audio zone (PlugnCast G3 configuration)
- Fix Gekkota robustness issue at limit implying unexpected player reboot with some specific customer network configurations (PlugnCast G3 configuration)

##`2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for scroller overlay
	- compatible with "Text défilant horizontal" v1.10.10 (or above) available in Content Model Package 3.20
- Add support for configuration file injection through USB with file naming ```configuration.js```
- Add support for configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: user preferences are only saved back at reboot (once fail soft mode timeout has expired) only when at least one preference is modified
- Change user agent by replacing *Playzilla* by product name *Gekkota*. For example: ```Mozilla/5.0 (X11; Linux i686; rv:14.0) Gecko/20150917 Firefox/14.0 Gekkota/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix impossibility sometimes to update the time&date (WebUI, NTP) after the player DC supply has been unplug for more than one week
- Fix: reboot after publication to exit fail soft mode level 2, so restore LED blinking normal behavior
- Fix LDAP IDL error management in case URL validity issue
- Fix reboot task and TV screen standby could not work sometimes (Screen Composer configuration)
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, leading to fail soft mode especialy when the player time&date is earlier than server one
- Fix infinite black screen after the downloading of corrupted (or obsolete) firmware due to unexpected continuous reboot without reaching fail soft mode
- Fix device status purge status update (only when purge is really effective)
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix rare firmware release became impossible, when player was playing certain Flash media. The problem could occur if the Flash media prints some debug information (for example Free Feeds Sytadin)
- Fix *content temporarily unavailable* displayed for some video (.mov container) (where ftyp atom is missing in the stream)
- Fix player crash when playing video (mp4 container) with fixed duration
- Fix automatic remote downloading issue in case target file in linked media is not the first one in the linked media list (PlugnCast G2 configuration)
- Fix publication issue when software release is programmed (PlugnCast G2 configuration without status server)
- Fix container playlist unexpected playback blocking when trying to play a missing media (PlugnCast G2 configuration)

##`2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for scroller overlay
	- compatible with "Text défilant horizontal" v1.10.10 (or above) available in Content Model Package 3.20
- Add support for configuration file injection through USB with file naming ```configuration.js```
- Add support for configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: user preferences are only saved back at reboot (once fail soft mode timeout has expired) only when at least one preference is modified
- Change user agent by replacing *Playzilla* by product name *Gekkota*. For example: ```Mozilla/5.0 (X11; Linux i686; rv:14.0) Gecko/20150917 Firefox/14.0 Gekkota/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix impossibility sometimes to update the time&date (WebUI, NTP) after the player DC supply has been unplug for more than one week
- Fix: reboot after publication to exit fail soft mode level 2, so restore LED blinking normal behavior
- Fix LDAP IDL error management in case URL validity issue
- Fix reboot task and TV screen standby could not work sometimes (Screen Composer configuration)
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, leading to fail soft mode especialy when the player time&date is earlier than server one
- Fix infinite black screen after the downloading of corrupted (or obsolete) firmware due to unexpected continuous reboot without reaching fail soft mode
- Fix device status purge status update (only when purge is really effective)
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix rare firmware release became impossible, when player was playing certain Flash media. The problem could occur if the Flash media prints some debug information (for example Free Feeds Sytadin)
- Fix *content temporarily unavailable* displayed for some video (.mov container) (where ftyp atom is missing in the stream)
- Fix player crash when playing video (mp4 container) with fixed duration
- Fix automatic remote downloading issue in case target file in linked media is not the first one in the linked media list (PlugnCast G2 configuration)
- Fix publication issue when software release is programmed (PlugnCast G2 configuration without status server)
- Fix container playlist unexpected playback blocking when trying to play a missing media (PlugnCast G2 configuration)

##`2015-07-07` V3.12.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change information screen when media can not be played (small rectangle with transparence containing a small triangle instead of full screen red cross)
	- ```content temporarily unavailable... (code <i>)```
   	- ```<path>/<medianame>.<extension>```
	- with
		- ```<i>``` = 1 in case the file is not present on the player
		- ```<i>``` = 0 for all other kind of error
- Change: restore compatibility with old API *logService.getLogger* and *log* (used in legacy configuration scripts)
- Fix huge issue in case date & time of player is earlier than 1st January 2000 or later than 19th January 2038 at reboot (calendar loading can not be done anymore leading to black screen display and player can not be remotely repaired)
- Fix crash when playing web site storing a lot of image in graphics memory
- Fix login and password was kept displayed in playback error information message for URI containing [login:password]

##`2015-06-29` V3.12.20
>##### **INSTALLATION ERROR MESSAGE WHEN INJECTING SCRIPT JS WITH GEKKOTA 3.12.20**
- *Installation error* message can pop with Gekkota 3.12.20 in case script installation because legacy script JS is containing obsolete command line making it not compatible with this version
- Please refer to technical documentation to solve the issue or upgrade to above version
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket multicast IDL support
- Add timezone IDL support
- Add LDAP IDL support
- Add inline GZIP compression in embedded Web browser (to optimize data transfert between Gekkota and user Web browser) (for files not already compressed whose size is upper than 100 bytes)
- Add WebUI: SN value and UUID value in Information / General
- Add WebUI: support DNS suffix
- Add WebUI: possibility to paste URL/login/password in *configuration server Génération 3* text area with json format below
```{ "url": "http://test.com", "username": "usr1", "password": "pwd1" }```
- Change WebUI: *delivery, status and installation servers* view
- Change WebUI: licence title *Licence du player* by *Configuration / Licence du middleware*
- Change WebUI: tools title *Tools* by *Maintenance / Tools*
- Change: improve graphics drawing efficiency on opaque rectangles
- Change: remove compatibility with old API *logService.getLogger* and *log* (used in configuration scripts)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
- Change: the App content is removed in fail soft mode only when the remaining place in the file system is lower than 2 MB
- Fix some red cross display when decoding Mpeg2-ps video media (mpg container)
- Fix wifi was not shut down properly when not ticked in WebUI
- Fix WebUI: translation in english for DCHP parameters
- Fix WebUI: in maintenance/format SD card, *formatting in progress* screen was not disappearing at the end of operation
- Fix black screen issue when playing URI MAFF distant (read from Web server) (cross domain communication was bad managed)
- Fix black screen issue in case some of resources are inserted in a playfolder (please refer to gekkota-supported-medias-and-performances.pdf)
- Fix black screen issue when playing URI playback (PDF,WGT) from distant Web server requiring authentication
- Fix authentication with Proxy Squid (XHR mode)
- Fix case of white screen for several minutes after power supply unplug (PlugnCast G2 configuration)
- Fix channel zIndex is not properly taken into account (Plugncast G2 configuration)
- Fix PDF and Powerpoint interactivity: possibility to reach page number with keypad
- Fix random playout stop just after midnight (in case daily event whose slot is from midnight to midnight in calendar)
- Fix inconsistent error message in device-status when downloading configuration script (PlugnCast G3 configuration)
- Fix potential blocking issue while email sending (threadsafe)
- Fix black screen when playing not empty container which has been previously emptied (PlugnCast G2 configuration)
- Fix red cross display when playing audio container whose one media is containing special caracter { and } (PlugnCast G2 configuration)
- Fix red cross display when playing opt-out media whose variable is containing special caracter ' or ` (PlugnCast G2 configuration)
- Fix red cross display (whereas it should not) while playing container whose one of file is not existing (PlugnCast G2 configuration)
- Fix red cross display while playing media whose file name is containing %, %de (PlugnCast G2 configuration)
- Fix unexpected playout entirely redownloaded after ethernet cable unplug for more than 3 minutes (PlugnCast G2 configuration)

##`2015-05-18` V3.12.19
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to this version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add WebUI *Logs* hyperlink
- Add channel type detection (audio or visual) (permits to fully support function described in documentations *gpio_channel-001A_en* and *keyboard_channel-001A_en*)
- Reduce blanking audio (less than 0.5 sec) between 2 consecutive audio medias when situated in different opt-outs  (PlunCast G2 environment)
- Fix critical publication issue (which has been introduced in version 3.12.18)
- Fix crash when renaming file while filemonitor is active
- Fix background color disappearing after a while (audio channel with default audio channel) (PlugnCast G2 environment)
- Fix media playback issue in playlist (or opt-out) after having emptied the playlist and filled it again with some others medias (PlugnCast G2 environment)
- Fix media transition which did not work anymore (PlugnCast G2 environment)
- Fix playout deadlock while playing playlist whose one of media name is containing '{' (PlugnCast G2 environment)
- Fix red cross when playing media name containing '%' or '%de' (PlugnCast G2 environment)

##`2015-04-10` V3.12.18
>##### **IMPORTANT BEFORE DOWNGRADING**
- Especially for this version Gekkota 3.12.18, once installed, in PlugnCast G2 environment:
	- It is forbidden to downgrade to any previous version otherwise the publication function will not work definitively
	- In order to downgrade, upgrade first to Gekkota 3.12.19 (or above)
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to above version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix rare infinite audio lose  after few days (publication did not manage to fix issue)
- Fix black screen when playing opt-out with variable containing special characters like "é, è, ê, ë, à" (PlugnCast G2 environment)
- Add security to not crash when playing Meeting Room Summarization Google Calendar after few seconds
- Fix directory HTTP download issue when containing special character ';'
- Fix content HTTP download issue with server Proxy Squid activated [cache setup forced] (PlugnCast environment)

##`2015-03-09` V3.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix default scene not displayed with PlugnCast G2 configuration (issue in migration script G2-> G3)
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix jerky video (when  played inside HTML) after one loopback
- Fix red cross displayed when HTML was containing non-existing resource
- Fix WIFI reconnexion issue (mode Infrastructure - WEP mode)

##`2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SCXML
- Add support for Idle API (W3C listener)
- Add feature Fail Soft Mode
	- green led behavior (1X, 2X, 3X)
	- level1: automatical rescue purge content and "Fail Soft Mode" panel display
	- level2: restore user preferences restauration saved before Fail Soft Mode
- Fix WebUI display issue caused by multi Flash plugin versions bad management in Firefox35
- Fix media playback loopback issue with video within audio duration is longer than video duration
- Fix debug log name (playzilla.log)
- Fix random consecutive scanning failed (example of message *{nsiSystemAdapterDigitalTvReceiver.startScan} has failed*)
- Fix services list saving issue when list contains data services (example of message *Saving has failed*)

##`2015-02-05` V3.12.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for scripts 'js' in migration module (xpf g2 to xpf g3)

##`2015-1-09` V3.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DHCP timeout  configuration in WebUI
- Add support for full WGT API (localization)
- Change logo Playzilla to logo Gekkota
- Change product name "Playzilla-and-elinux" to "Gekkota_os"
- Fix decoding improvement for some HD or H264 video stream
- Fix flash playback when fake URI media are inserted just before SWF media
- Fix firmware installation issue with http
- Fix random unworking UDP streaming after reboot
- Fix huge SWF loading issue

##`2014-12-08` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add 'yadif' deinterlace mode. This mode is only available in 720x576i resolution maximum ('blend' mode is used instead)
- Add support playback of distant media (WGT/MAFF/PDF)
- Add checkdisk feature
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change version of pdfjs viewer
- Change rename installer to gekkota_os, new gekkota icons
- Fix support http 300 error code
- Fix a reboot which could occur with powerpoints
- Fix flash not played after a 'red cross'
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)
- Fix empty online cache with a new publication
- Fix take into account http code 300
- Fix a video playing inside a flash makes all video files not played after

##`2014-11-19` V3.11.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix a definitive blocking of player in very rare cases, when a powerpoint is in use. The player will reboot instead of being idle

##`2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Add Web UI DHCP timeout
- Add Web UI icons to hide/show the passwords
- Add Web UI add Variables fields (usefull for PlugnCast G3 only)
- Change Web UI Gekkota product icon
- Fix : for a situation where the player has a task which impose to reboot constantly, give some time to be able to publish an empty content and recover a normal situation
- Fix web UI : identification method saving (UUID/MAC/hostname)
- Fix web UI : predefined overscan not properly centered in rotated mode
- Fix web UI : button 'Validate' active in Maintenance/Preference, even without modification
- Fix URI with distant PDF

##`2014-10-07` V3.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix support acceleration video when video is played inside powerpoint
- Fix support media with FTP distant ressource

##`2014-08-28` V3.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for .wgt file format
- Fix in wifi use : it could not work according to the boot
- Fix in wifi use : IP adress fix and automatic DNS, DNS didn't work

##`2014-08-14` V3.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix deinterlace mode 'linear' and 'discard' which make appear a green line on the top of video

##`2014-08-13` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Improves plugncast g2 mode functionnalities : can receive download and/or standby and/or reboot task without the need of having an active content update task
- Improves plugncast g2 mode functionnalities : task can be scheduled in time slot
- Add brightness feature
- Add GPIO Jack35 and GPIO Phoenix management
- Add DVB-T option support
- Add new parameters for device-status
- Add a new preference for choosing the deinterlace mode (see below). The default one is 'linear'. The mode of older versions corresponds to 'blend'
- Change version of pdfjs viewer
- Fix all containers rules in plugncast g2 mode
- Fix delay between audio and video which could occur
- Fix a case in udp when video wasn't accepted
- Fix upnp discovery trouble when WLAN active
- Fix webui in ipv6 through a proxy
- Fix a potential blocking case in plugncast g2 mode : use with a container using a variable with a value with special characters
- Fix a case of ScreenComposer bad publication
- Fix a crash with an ics using 'TZID'
>#### **COMPATIBILITIES**
- Screen Composer V3.10.10 minimum (latest V3.xx.yy recommended)
- Boootloader 2.36.8-8

##`2014-05-20` V3.10.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new RS232 executables : extron_m1_input, extron_m2_input, extron_m3_input, extron_m4_input
- Add a new display output mode '1280x720 60Hz CGV CPLine AV-HD'
- Add the possibility to support not-standard resolutions for video whith
- width and height between 1080 and 1920
- New version of bootloader
- Fix a case with a quicktime video container not supported

##`2014-04-30` V3.10.43
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Rename the swf file of the UI
- Fix a case of ScreenComposer new publication not detected (when very small publications, as a .maff file)
- Fix standby mode not working anymore
- Fix mouse cursor reactivated after a standby
- Fix in plugncast G2 : exception date in a recurrence was not considered
- Fix in plugncast G2 : max duration of container, and duration of each medias were not considered
- Fix in plugncast G2 : no more management when using a chanel with the character "
- Fix a case with several big sized images : some images were not rendered (red cross)
- Fix a case with a quicktime video container : audio not well rendered
- Fix reception of several udp streams with different adresses but the same port
- Fix in udp : a delay between video and audio could occur (depends on the udp
- multiplexing)
- Fix UI accessible in ipv6

##`2014-04-07`V3.10.42
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new preference to show/hide the pointer cursor : 'innes.player.display.show-cursor'
- Fix bad decoding of video which could occur, and green screen which could replace the video
- Fix a case with a quicktime video container : with MPEG2 audio, it could make reboot Gekkota
- Rename the preference ```innes.hid.pointer-event.*. authorized``` by ```innes.hid.pointer-event.*.authorized``` (remove the unwanted space character)

##`2014-04-01` V3.10.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new proxy type : automatic configuration script
- Add support for binary type certificates
- Add the possibility to use html5 offline cache
- Add the compatibility with .txt files in plugncast G2 mode
- Add RS232 executables for display control
- Add the possibility to play 2 powerpoint files. In this case, the performance may be decreased, so it stays not adviced to do that
- Add the possibility to use flashvar in plugncast G2 mode, with variables resolution inside
- Add the possibility to inhibit keyboard and pointer, with new preferences :
        - ```innes.hid.keyboard-event.*.authorized```
		- ```innes.hid.pointer-event.*. authorized```
- UI : Add status server part (for plugncast G3)
- Improves the cases of incomplete http bodies (rfc2616 section 4.4)
- Improves the management of playout disk full (gives always the possibility to publish a lighter content)
- Improve the following case : when network request was stopped, wsmanagement requests stayed accumulated, and when network come back, all the requests are outputted at the same time
- Improve the following case : when container is used, with a media synchronisation task, PROPFIND requests increase
- Fix UI : impossible to enter a bad DNS server
- Fix UI (/.playout/) : certain files may be hidden if their extension is unknown
- Fix a case with a quicktime video container abnormaly detected as not supported
- Fix powerpoint with embedded font and powerpoint in protected mode (all powerpoint are declared as trusted)
- Fix use a default audio scene in plugncast G2 mode
- Fix reboot with ics file with a event without DTSART nor DTEND
- Fix false detection of the filesystem repair
- Fix blocking situation during the media playing : when the 'red cross' duration is higher than the duration of the media for which it has been detected
- Fix in plugncast G2 mode : when a media is downloaded and network connection interrupted, the media may be downloaded from its begining when the network come back
- Fix random trouble: if a file/directory is renammed with only a case change
- Fix random trouble: if player is switched off during the start phase, it could detect a false error 'Can not write on data recovery'
- Fix random trouble in plugncast G2 mode : if the server is switched off, it can block the Gekkota until its next reboot (red circle)
- Fix random trouble: video can become green for ever
- Fix preference 'innes.video-with-audio.skip-late-frames' to true

## `2014-01-29` V3.10.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- Screen Composer V3.10.10 minimum (latest V3.xx.yy recommended)
- Not compatible with Screen Composer V2.xx.yy
