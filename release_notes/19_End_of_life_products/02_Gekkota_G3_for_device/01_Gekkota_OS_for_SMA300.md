# Gekkota OS for SMA300
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led enlightened for few minutes) else the player may not be able to work properly*

*For the device whose the PSN is 01090-XXXXX or 00812-XXXXX, the minimal Gekkota OS version to support the WLAN properly is 3.12.58*

##`2019-03-01` V3.12.58 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.58.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: WLAN may not working with some rare device embedding the last WLAN chip
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.14 (or above)
- PlugnCast V3.10.50 (or above)
- PlugnCast Studio V2.51.11
- PlugnCast Server V2.50.32

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (3.12.57/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/sma300-usermanual-3.12.57-001A_fr.pdf)
- User manual (3.12.57/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/sma300-usermanual-3.12.57-001A_en.pdf)
- User manual (3.12.57/DE) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/sma300-usermanual-3.12.57-001A_de.pdf)
#### **SUPPORTED MEDIAS**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)

#OLD VERSIONS HISTORY
***********************************************************************

##`2018-10-23` V3.12.57 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.57.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for TLS 1.2 (Transport Layer Security)
- Add support for new WLAN chip
- Add support for touch screen devices over USB
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: in some case, the device could not stop rebooting after having unplugged the power supply (very rare)
- Fix: a message *content temporarily unavailable* could be displayed when playing several times a same video whose resolution is 540x1920 (portrait)

##`2018-01-12` V3.12.51 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.51.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes content could be completely frozen after having played a same video media several times (rare)
- Fix: GIF medias could freeze for a while when loading some specific PDF media at the same time

##`2017-11-10` V3.12.49 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.49.zip)
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
- Fix: WLAN interface could disappear in WebUI when the WLAN router was not available a couple of time, or when WLAN configuration was wrong
- Fix: it was not possible to connect to the device WebUI and player could not keep rebooting after a while when HDMI cable is unplugged (audio output on HDMI)
- Fix: SMTP without authentication did not work
- Fix: email attachment was not supported
- Fix: unexpected black screen could be displayed infinitely due to the device which did not manage to boot-up properly (rare)

##`2017-04-27` V3.12.42 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.42.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a device reboot could occur when publishing with Screen Composer or PlugnCast G2 (rare)
>##### **WILL BE CORRECTED IN NEXT VERSIONS**
- Fix: black screen when playing remote Web server media: MS PowerPoint, MAFF, SWF
- Fix: playing SlideMaker diapositive containing objects with fading (inside zone with transition between media activated) makes reboot the player each time the media is played
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.10.10 (or above)
- PlugnCast V3.10.19 (or above)
- PlugnCast Studio V2.51.11
- PlugnCast Server V2.50.32

##`2017-04-13` V3.12.41 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.41.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: device could reboot when playing video sequence with playlist audio in audio zone
- Fix: the canal could stop to be played after a while with scenes generated with old version of PlugnCast Studio (ex: V2.11.13)
- Fix: (rare) audio track could be not rendered anymore after a while when playing audio playlist inside an audio channel (seen with PlugnCast G2 configuration)

##`2017-03-29` V3.12.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.40.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)
- Fix: decoding issue when broadcasted by DME204

##`2017-02-24` V3.12.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes some unexpected screen standby exit (or enter) could be noticed (seen on PlugnCast G2 environment)
- Fix: sometimes some scenes could not start (seen on PlugnCast G2 environment)
- Fix: restore support of PlugnCast G2 over FTP
- Fix: restore support remote media over FTP
- Fix: an error *Net timeout for download request* could remain in status.xml (and never be cancelled) in case the PlugnCast server was manually shut down for a while (PlugnCast G3)
- Fix: add WLAN interface in device status.xml (when the device has one)
- Fix: sometimes, the secondary channel could not stop after having pressed several times and rapidly on a same key (Keyboard Channel)
- Change remote control calibration to improve infrared remote control management

##`2016-11-07` V3.12.37 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.37.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

##`2016-10-19` V3.12.36 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.36.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: was facing issue to connect to WLAN router when its SSID broadcasting is not activated (not visible)
- Fix: player could face issue to take a playout containing a file whose size is more than 2 GB

##`2016-08-29` V3.12.34 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.34.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: audio artefact may occur after a while (for example: 1 hour) when playing audio medias with audio output on HDMI

##`2016-08-09` V3.12.33 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.33.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Add preferences permitting to not display monitor-monitoring data *power-mode* and *input-source* in device-status (by example in case the screen is raising inconsistent data)
    - Set the preference ```innes.app-profile.monitor-monitoring.i2c_1.*.*.protocol``` to ```none``` (instead of auto)
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: player could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix (workaround) progressive shifting noticed between audio and video increasing of 1ms every one second when playing a AV media on HDMI connector (WebUI/audio output: HDMI)
- Fix: xpf file or media file of size 0 KB could be noticed randomly in case reboot immediately after publication (making appear unexpected *no content* message or *media temporarily unavailable* message)
- Fix: some video could be displayed in 4-3 aspect ratio instead 16-9 aspect ratio

##`2016-06-01` V3.12.31 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.31.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to export a playout as *tar.gz* archive (from player to PC with a Web browser) (WebUI)
	- ```http://<player_IP_address>/.playout/?export```
		- To decompress the archive, use one of the softwares WinRar (V5.40 beta1 or above) or 7Zip (V9.5 or above)
- Add possibility to list available WebDAV directories (WebUI)
	- ```http://<player_IP_address>/?list_directory```
- Add possibility to read player status (status.xml) through the player WebDAV server
 	- ```http::/<player_IP_Addr>/.status/```
- Add gateway name and network prefix size in IP address when test card is displayed
	- for example: *192.168.1.29/17*
- Add support of INNES universal infrared remote control (white, 20 buttons)
	- IR sensor TSOP2238
	- remote control key: ```0``` to ```9```
 	- refer to Gekkota application note GPIO configuration V1.10.16 for more information
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
	- Hot plug detect (HDMI)
		- connected
	- Compatible with PlugnCast G3 3.10.26 (or above)
	- Monitor monitoring DDC is activated by default. To inactivate it, set the preference ```innes.app-profile.monitor-monitoring.i2c_1.hdmi_1.authorized``` to false
- Add support of Web IDL AVCmd TCP/IP and serial
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
        - ```/dev/ttyUSB0```, ```/dev/ttyUSB1```
        - uart_1 & uart2
        - TV commands:
            - Standby, Power mode, Brightness, Backlight, Video input, Mute, Volume
            - Call (custom protocols)
            - possibility to inactivate API with preference
        - TV Device protocols
            - ```eiki_xb42```, ```nec_np3150```, ```philips_m2```, ```extron_m1```, ```nec_x461s```, ```samsung_m1```, ```hitachi_m1```, ```nudam_m2```, ```sanyo_m1```, ```kramer_m1```, ```optoma_m1```, ```sharp_m1```, ```lge_m1```, ```panasonic_m1```, ```sony_m1```, ```mitsubishi_xl6x00```, ```panasonic_m2```, ```toshiba_m1```, ```nec_m1```, ```philips_m1```, ```toshiba_tdpt420```
        - Daisy chain RS232 (head TV device configured in serial)
            - mode broadcast (all the TV connected in the daisy chain by RS232 apply the TV command)
            - mode by device ids (only the TV connected in RS232 and having the right broadcast_id apply the TV command)
- Add support of AVCmd custom device protocol addon (serial or TCP/IP) by USB injection
    - Installation/uninstallation
    - Activation/inactivation
    - Requires configuration script V1.10.19 (or above)
    - a custom device protocol example is proposed as example inside configuration script
        - refer to Gekkota application note AVCmd for more information
- Add support of Web IDL AVCmd DDC
	- DDC profile
		- Prerequisite for DDC: video cable & video connector of the screen (monitor) have to support DDC (pin DDC/SDA and pin DDC/SDL)
		- TV has to support DDC-CI/MCCS (MCCS versions: 1.0, 2.0, 2.1, 2.2)
		- TV Commands:
        	- Standby, Power mode, Brightness, Backlight, Video input, Mute, Volume
        	- Call (setVcpCode, getVcpCode)
    - DDC in inactivated by default. For more information, refer to Gekkota AVCmd application note
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix risk to not be able to upgrade anymore Gekkota_os version in case wrong firmware (ex: Gekkota_RT firmware) has been loaded by error previously in this player
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix: no content screen could be displayed infinitely after a publication, due to filesystem corruption (a reboot was solving the issue)
- Fix: after a reboot, and once a video media (played in 1X) has been played at least once, video media could start with a unexpected delay of half second (player content needing to be played synchronized)
- Fix: player could crash or freeze at player start-up when playing video (using custom XPF starting to play video media very soon after boot-up)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix: sometimes a video inside a MAFF media could not be played (depend on how the html is coded, video element destroyed or not)
- Fix: sometimes video media with short duration (lower than 3'50") could not be played when using player synchronization script (V1.10.12 or above)
- Fix directory opening issue when the directory name is containig special characters (WebUI)

##`2016-02-12` V3.12.28 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.28.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: unexpected error message *content temporarily unavailable* when playing a same PDF media several times

##`2016-02-03` V3.12.26 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/gekkota_os-sma300-setup-3.12.26.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add DNS suffix
- Add display mode
	- "1280x720 60Hz CEA-861"
	- "1280x720 50Hz CEA-861"
	- "1920x1080 60Hz CEA-861"
	- "1920x1080 50Hz CEA-861"
- Add support MC7355 WWAN module (Sierra Wireless)
- Add: WWAN/WLAN failover network in case internet connection is lost on LAN (monitoring every 15 minutes)
- Add support of infra-red
 	- remote control key: ```0``` to ```9```
 	- refer to Gekkota application note GPIO configuration V1.10.15 for more information
- Add NTP clock synchronization (not activated by default)
	- refer to Gekkota application note NTP clock synchronization for more information
- Add support set color adjustment on HDMI cable
	- Opacity and opacity max
	- Grey filter ITURBT (activate/inactivate)
		- "BT.601-7"
		- "BT.709-6"
	- refer to Gekkota application note configuration-by-script for more information
- Add support of configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support of specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
- Improve drawing efficiency for medias HTML/PDF/Powerpoint/SWF/MAFF/WGT
- Change: rename display mode
	- "1024x600 60Hz DENSITRON 84-01X8-00XT" to
	- "1024x600 60Hz DENSITRON 84-0188-001T"
- Change: apply HDMI or DVI standard depending on TV device EDID
- Change PDF viewer to increase PDF viewing efficiency
- Change: test pattern
	- display the 3 identification id
		- MAC
		- UUID
		- hostname
	 	- note:
			- a star stamp is indicating chosen identification method
	- display the network interface parameter
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
- Fix: important diagonal tearing when switching between meeting room pages (15 meeting per page)
- Fix: bitrate limitation was not working
- Fix unexpected WWAN inactivation when unplugging and pluggin again WWAN card
- Fix random WWAN detection issue at startup
- Fix random WWAN disconnection issue at runtime
- Fix: WWAN connection was not able to resolve domain name
- Fix: server DNS name was empty for WWAN module
- Fix: a same video played on two players SMA300 could not have the same duration making appear a unexpected shift in the media start-up (player synchronization)
- Fix: WWAN did not work when DHCP was activated (was disconnected 30 seconds after player start-up)
- Fix remaining unconsistent *Fail soft mode - waiting for new content* in device status after exiting from failsoft mode state
- Fix audio decoding issue when output resolution is under full HD resolution
- Fix: brightness did not work
- Fix some video decoding issue (Mp4 container)
- Fix: some characters or some image was not properly displayed for some PDF medias
- Fix delay could be noticed with media when played inside playfolder with a rule (opt-out)
- Fix video decoding issue when video is coming from Androïd (Mov container) (video containing altitude/longitude/latitude)
- Fix remote resource was not downloaded properly the secondth time when injecting USB content twice
- Fix playout not taken by the player with Screen Composer in case containing remote resource and player let in PlugnCast G2 configuration
- Fix: in some case, video whose start-up is programmed at fix time in XPF could start with a delay of 1 second because calendar tolerence error is one second (player synchronization)
- Fix: Gekkota licence error was not reported in device status (PlugnCast G2 configuration)
- Fix: content update issue when trying to fetch opt-out whose defaut directory has been removed (PlugnCast G2 configuration)
- Fix player crash when using LDAP request with null search filter
- Fix playout did not start when remote resource becomes available (after playout publishing with remote resource not available)
- Fix: don't raise anymore error HTTP 404 at each publication (PlugnCast G3 configuration)
- Fix clean errors linked to the URI in device status when successful request has been done then for this URI
- Fix: message "Installation in progress" was not clean up properly from device-status after configuration file installation failure (for example when facing configuration file syntax error)
	- Note: root cause error is still kept in device status to help user to correct syntax error
- Fix audio conflict when media with audio is played in main zone and another audio is played at the same time in audio zone (PlugnCast G3 configuration)
- Fix Gekkota robustness issue at limit implying unexpected player reboot with some specific customer network configurations (PlugnCast G3 configuration)

##`2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of WWAN module
- Fix capability to support WLAN and WWAN
- Add support of configuration file injection through USB with file naming ```configuration.js```
- Add support of configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: user preferences are only saved back at reboot (once fail soft mode timeout has expired) only when at least one preference is modified
- Change user agent by replacing *Playzilla* by product name *Gekkota*. For example: ```Mozilla/5.0 (X11; Linux arm7l; rv:14.0) Gecko/20150917 Firefox/14.0 Gekkota/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Fix compatibility issue with some switch Gigabit
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix: reboot after publication to exit fail soft mode level 2, so restore LED blinking normal behavior
- Fix DVI TV device support
- Fix LDAP IDL error management in case URL validity issue
- Fix reboot task and TV screen standby could not work sometimes (Screen Composer configuration)
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, leading to fail soft mode especialy when the player time&date is earlier than server one
- Fix infinite black screen after the downloading of corrupted (or obsolete) firmware due to unexpected continuous reboot without reaching fail soft mode
- Fix device status purge status update (only when purge is really effective)
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix rare firmware release became impossible, when player was playing certain Flash media. The problem could occur if the Flash media prints some debug information (for example Free Feeds Sytadin)
- Fix player crash when playing video (mp4 container) with fixed duration
- Fix automatic remote downloading issue in case target file in linked media is not the first one in the linked media list (PlugnCast G2 configuration)
- Fix publication issue when software release is programmed (PlugnCast G2 configuration without status server)
- Fix container playlist unexpected playback blocking when trying to play a missing media (PlugnCast G2 configuration)

##`2015-07-07` V3.12.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change information screen when media can not be played (small rectangle with transparence instead of full screen red cross)
	- ```content temporarily unavailable... (code <i>)```
   	- ```<path>/<medianame>.<extension>```
	- with
		- ```<i>``` = 1 in case the file is not present on the player
		- ```<i>``` = 0 for all other kind of error
- Change: restore compatibility with old API *logService.getLogger* and *log* (used in legacy configuration-by-script JavaScript file)
- Fix huge issue in case date & time of player is earlier than 1st January 2000 or later than 19th January 2038 at reboot (calendar loading can not be done anymore leading to black screen display and player can not be remotely repaired)
- Fix unexpected green line display at the bottom of video (interlacing detection is now realized by VPU instead extractor)
- Fix login and password was kept displayed in playback error information message for URI containing [login:password]

##`2015-06-29` V3.12.20
>##### **INSTALLATION ERROR MESSAGE WHEN INJECTING SCRIPT JS WITH GEKKOTA 3.12.20**
- *Installation error* message can pop with Gekkota 3.12.20 in case script installation because legacy script JS is containing obsolete command line making it not compatible with this version
- Please refer to technical documentation to solve the issue or upgrade to above version
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add VC1 decoder support
- Add WMA decoder support
- Add UDP socket multicast support
- Add timezone IDL support
- Add LDAP IDL support
- Add inline GZIP compression in embedded Web browser (to optimize data transfert between Gekkota and user Web browser) (for files not already compressed whose size is upper than 100 bytes)
- Add WebUI: SN value and UUID value in Information / General
- Add WebUI: support DNS suffix
- Add WebUI: possibility to paste URL/login/password in *configuration server Génération 3* text area with json format below
```{ "url": "http://test.com", "username": "usr1", "password": "pwd1" }```
- Change: SWF is not supported for SMA300
- Change WebUI: *delivery, status and installation servers* view
- Change WebUI: licence title *Licence du player* by *Configuration / Licence du middleware*
- Change WebUI: tools title *Tools* by *Maintenance / Tools*
- Change: improve graphics drawing efficiency on opaque rectangles
- Change: remove compatibility with old API *logService.getLogger* and *log* (used in configuration-by-script JavaScript file)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
- Change: delete obsolete error message in device status
- Change: the App content is removed in fail soft mode only when the remaining place in the file system is lower than 2 MB
- Fix important tearing (stairs effect noticed especially in image media transition)
- Fix case of infinite black screen following a bad decoding of interlaced HD stream
- Fix red cross issue when decoding some video media (avi, m4v, m2v, mov containers)
- Fix some video freeze 1 minute when video media is played twice (avi containers)
- Fix audio loss when video media is played twice (avi containers)
- Fix audio glitch at start-up of MP3 media playback during boot sequence
- Fix audio mute level (audio was not completely muted after reboot)
- Fix red cross issue when decoding some interlaced HD stream
- Fix rare unexpected audio or video stop before the end
- Fix rare unexpected black screen after few days
- Fix some red cross display when decoding Mpeg2-
- ps video media (mpg container)
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
- Fix inconsistent error message in device-status when downloading configuration-by-script JavaScript file (PlugnCast G3 configuration)
- Fix potential blocking issue while email sending (threadsafe)
- Fix black screen when playing not empty container which has been previously emptied (PlugnCast G2 configuration)
- Fix red cross display when playing audio container whose one media is containing special caracter { and } (PlugnCast G2 configuration)
- Fix red cross display when playing opt-out media whose variable is containing special caracter ' or ` (PlugnCast G2 configuration)
- Fix red cross display (whereas it should not) while playing container whose one of file is not existing (PlugnCast G2 configuration)
- Fix red cross display while playing media whose file name is containing %, %de (PlugnCast G2 configuration)
- Fix unexpected playout entirely redownloaded after ethernet cable unplug for more than 3 minutes (PlugnCast G2 configuration)

##`2015-06-04` V3.12.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
