# Gekkota OS for SMT210
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led enlightened for few minutes) else the player may not be able to work properly*

## `2018-10-23` V3.12.57 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.57.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for TLS 1.2 (Transport Layer Security)
- Change: too many touch call back events could be raised when pressing the touch screen
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: in some rare case, the OMNIKEY 5427CK smart card reader plugged on the USB connector could not work anymore
- Fix: in some case, the device could not stop rebooting after having unplugged the power supply (very rare)
- Fix: Jack GPIO was not working anymore
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.14 (or above)
- PlugnCast V3.10.47 (or above)
- PlugnCast Studio V2.51.11
- PlugnCast Server 2.50.32

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Installation guide (016G/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/SMT210-guide-installation-016G_fr.pdf)
- Installation guide (016G/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/SMT210-installation-guide-016G_en.pdf)
- Installation guide (016G/DE) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/SMT210-service-handbuch-016G_de.pdf)
#### **SUPPORTED MEDIAS**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)
#### **CASING OVERVIEW**
- Casing overview [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/DS-SMTDRP-B.pdf)

# OLD VERSIONS HISTORY
***********************************************************************

## `2018-01-12` V3.12.51 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.51.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes content could be completely frozen after having played a same video media several times (rare)
- Fix: GIF medias could freeze for a while when loading some specific PDF media at the same time

## `2018-01-10` V3.12.50 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.50.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: network interface was not working anymore when a smart card reader model OMNIKEY 5427CK was plugged on the USB connector

## `2017-11-10` V3.12.49 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.49.zip)
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
- Fix: SMTP without authentication did not work
- Fix: email attachment was not supported

## `2017-07-18` V3.12.44 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.44.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: device reboot when sending an email containing a body image (image type CIS)
- Fix: a device reboot could occur when publishing with Screen Composer or PlugnCast G2 (rare)
- Fix: device could reboot when playing video sequence with playlist audio in audio zone
- Fix: the canal could stop to be played after a while with scenes generated with old version of PlugnCast Studio (ex: V2.11.13)
- Fix: (rare) audio track could be not rendered anymore after a while when playing audio playlist inside an audio channel (seen with PlugnCast G2 configuration)

## `2017-03-29` V3.12.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.40.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)

## `2016-11-07` V3.12.37
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

## `2016-10-19` V3.12.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: was facing issue to connect to WLAN router when its SSID broadcasting is not activated (not visible)
- Fix: player could face issue to take a playout containing a file whose size is more than 2 GB

## `2016-08-09` V3.12.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Fix: when error is pop, user could notice unexpected remaining trace after having drag the finger on the interface
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix: xpf file or media file of size 0 KB could be noticed randomly in case reboot immediately after publication (making appear unexpected *no content* message or *media temporarily unavailable* message)

## `2016-05-31` V3.12.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to export a playout as *tar.gz* archive (from player to PC with a Web browser) (WebUI)
	- ```http://<player_IP_address>/.playout/?export```
		- To decompress the archive, use one of the softwares WinRar (V5.40 beta1 or above) or 7Zip (V9.5 or above) is required
- Add possibility to list available WebDAV directories (WebUI)
	- ```http://<player_IP_address>/?list_directory```
- Add possibility to read player status (status.xml) through the player WebDAV server
 	- ```http::/<player_IP_Addr>/.status/```
- Add gateway name or network prefix size in IP address when test card is displayed
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
	- Monitor monitoring DDC is inactivated by default. To activate it, set the preference ```innes.app-profile.monitor-monitoring.gpu_1.lcd-module_1.authorized``` to true
- Add support of Web IDL AVCmd tcp/ip
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
- Add support of AVCmd custom device protocol addon (TCP/IP) by USB injection
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
    - DDC in inactivated by default. For more information, refer to Gekkota AVCmd application note (002A or above)
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix risk to not be able to upgrade anymore Gekkota_os version in case wrong firmware (ex: Gekkota_RT firmware) has been loaded by error previously in this player
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix: no content screen could be displayed infinitely after a publication, due to filesystem corruption (a reboot was solving the issue)
- Fix: after a reboot, and once a video media (played in 1X) has been played at least once, video media could start with a unexpected delay of half second (player content needing to be played synchronized)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix directory opening issue when the directory name is containig special characters (WebUI)

## `2016-02-12` V3.12.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix unexpected error message *content temporarily unavailable* when playing a same PDF media several times

## `2016-02-03` V3.12.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new API in NFC Web IDL *configureMultipleModulations*
	- nice to be used instead of *configurePolling* because this API offers more flexibility when using several modulation at a time
- Add display mode
	- "1280x720 60Hz CEA-861"
	- "1280x720 50Hz CEA-861"
	- "1920x1080 60Hz CEA-861"
	- "1920x1080 50Hz CEA-861"
- Add support MC7355 WWAN module (Sierra Wireless)
- Add: WWAN/WLAN failover network in case internet connection is lost on LAN (monitoring every 15 minutes)
- Add support of configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support of specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
- Change PDF viewer to increase PDF viewing efficiency
- Change: rename display mode
	- "1024x600 60Hz DENSITRON 84-01X8-00XT" to
	- "1024x600 60Hz DENSITRON 84-0188-001T"
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
- Fix remaining unconsistent *Fail soft mode - waiting for new content* in device status after exiting from failsoft mode state
- Fix: a RFID badge ISO14443A whose baud rate 106 kbps was detected even if baud rate filter selected was 212 or 424 kbps
- Fix: video black was not really dark black
- Fix: some characters or some image was not properly displayed for some PDF medias
- Fix delay could be noticed between flash media when played inside playfolder with a rule (opt-out)
- Fix video decoding issue when video is coming from Androïd (Mov container) (video containing altitude/longitude/latitude)
- Fix remote resource was not downloaded properly the secondth time when injecting USB content twice
- Fix playout not taken by the player with Screen Composer in case containing remote resource and player let in PlugnCast G2 configuration
- Fix: in some case, video whose start-up is programmed at fix time in XPF could start with a delay of 1 second because calendar tolerence error is one second (player synchronization)
- Fix: Gekkota licence error was not reported in device status (PlugnCast G2 configuration)
- Fix: content update issue when trying to fetch opt-out whose defaut directory has been removed (PlugnCast G2 configuration)
- Fix player crash when using LDAP request with null search filter
- Fix: playout did not start when remote resource becomes available (after playout publishing with remote resource not available)
- Fix: don't raise anymore error HTTP 404 at each publication (PlugnCast G3 configuration)
- Fix clean errors linked to the URI in device status when successful request has been done then for this URI
- Fix: message "Installation in progress" was not clean up properly from device-status after configuration file installation failure (for example when facing configuration file syntax error)
	- Note: root cause error is still kept in device status to help user to correct syntax error
- Fix audio conflict when media with audio is played in main zone and another audio is played at the same time in audio zone (PlugnCast G3 configuration)
- Fix Gekkota robustness issue at limit implying unexpected player reboot with some specific customer network configurations (PlugnCast G3 configuration)

## `2015-10-13` V3.12.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change NFC Web IDL:
	- Add the modulation/baudrate of the received RFID tag
	- Add the possibility to obtain the complete list of modulation/baudrate supported by the hardware
- Change: restore NFC power to *nominal* radiation
- Improve RFID tag detection
- Improve display lifescreen in standby mode
- Fix RFID tag double detection

## `2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of configuration file injection through USB with file naming ```configuration.js```
- Add support of configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: user preferences are only saved back at reboot (once fail soft mode timeout has expired) only when at least one preference is modified
- Improve NFC detection robustness
- Change user agent by replacing *Playzilla* by product name *Gekkota*. For example: ```Mozilla/5.0 (X11; Linux arm7l; rv:14.0) Gecko/20150917 Firefox/14.0 Gekkota/3.12.24```
- Change internal gpio API to be able to readback a gpio output (this feature is used in SignMeeting acropolis app)
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix: reboot after publication to exit fail soft mode level 2, so restore LED blinking normal behavior
- Fix LDAP IDL error management in case URL validity issue
- Fix reboot task and TV screen standby could not work sometimes (Screen Composer configuration)
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, leading to fail soft mode especialy when the player time&date is earlier than server one
- Fix update purge status in device status only when purge is really effective
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix rare firmware release became impossible, when player was playing certain Flash media. The problem could occur if the Flash media prints some debug information (for example Free Feeds Sytadin)
- Fix player crash when playing video (mp4 container) with fixed duration
- Fix automatic remote downloading issue in case target file in linked media is not the first one in the linked media list (PlugnCast G2 configuration)
- Fix publication issue when software release is programmed (PlugnCast G2 configuration without status server)
- Fix container playlist unexpected playback blocking when trying to play a missing media (PlugnCast G2 configuration)

## `2015-07-07` V3.12.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change information screen when media can not be played (small rectangle with transparence instead of full screen red cross)
	- ```content temporarily unavailable... (code <i>)```
   	- ```<path>/<medianame>.<extension>```
	- with
		- ```<i>``` = 1 in case the file is not present on the player
		- ```<i>``` = 0 for all other kind of error
- Change: restore compatibility with old API *logService.getLogger* and *log* (used in legacy configuration-by-script JavaScript file)
- Fix huge issue in case date & time of player is earlier than 1st January 2000 or later than 19th January 2038 at reboot (calendar loading can not be done anymore leading to black screen display and player can not be remotely repaired)
- Fix login and password was kept displayed in playback error information message for URI containing [login:password]

## `2015-06-29` V3.12.20
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
- Change: remove compatibility with old API *logService.getLogger* and *log* (used in configuration-by-script JavaScript file)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
- Change: the App content is removed in fail soft mode only when the remaining place in the file system is lower than 2 MB
- Fix audio of previous publication is still heard a couple of time when a new playout is played
- Fix some red cross display when decoding Mpeg2-ps video media (mpg container)
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

## `2015-05-18` V3.12.19
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to this version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add WebUI *Logs* hyperlink
- Add support NFC API
- Add channel type detection (audio or visual) (permits to fully support function described in documentations *gpio_channel-001A_en* and *keyboard_channel-001A_en*)
- Reduce blanking audio (less than 0.5 sec) between 2 consecutive audio medias when situated in different opt-outs  (PlunCast G2 environment)
- Fix critical publication issue (which has been introduced in version 3.12.18)
- Fix audio artefact in some audio transition: from audio container 48 KHz audio file (media unavailable) to audio container containing 44.1 KHz
- Fix crash when renaming file while filemonitor is active
- Fix background color disappearing after a while (PlugnCast G2 environment: audio channel with default audio channel)
- Fix media playback issue in playlist (or opt-out) after having emptied the playlist and filled it again with some others medias (PlunCast G2 environment)
- Fix media transition which did not work anymore (PlunCast G2 environment)
- Fix playout deadlock while playing playlist whose one of media name is containing '{' (PlugnCast G2 environment)
- Fix red cross when playing media name containing '%' or '%de' (PlugnCast G2 environment)

## `2015-04-10` V3.12.18
>##### **IMPORTANT BEFORE DOWNGRADING**
- Especially for this version Gekkota 3.12.18, once installed, in PlugnCast G2 environment:
	- It is forbidden to downgrade to any previous version otherwise the publication function will not work definitively
	- In order to downgrade, upgrade first to Gekkota 3.12.19 (or above)
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to above version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add security to not crash when playing Meeting Room Summarization Google Calendar after few seconds
- Fix directory HTTP download issue when containing special character ';'
- Fix content HTTP download issue with server Proxy Squid activated [cache setup forced] (PlugnCast environment)

## `2015-03-13` V3.12.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix rare infinite audio lose after few days (publication did not manage to fix issue)
- Fix black screen when playing opt-out with variable containing special characters like "é, è, ê, ë, à" (PlugnCast G2 environment)

## `2015-03-09` V3.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add security for future platform embedding new memory device: impossible to downgrade version lower than 3.12.16 for products with PSN: 00433-xxxxx [in case WIFI, PSN: 00563-xxxxx]
- Fix rare infinite freeze video (or audio) after few days (publication did not manage to fix issue)
- Fix rare infinite black screen after few days (publication did not manage to fix issue)
- Fix default scene not displayed with PlugnCast G2 configuration (issue in migration script G2-> G3)
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix jerky video (when  played inside HTML) after one loopback
- Fix red cross displayed when HTML was containing non-existing resource
- Fix WIFI reconnexion issue (mode Infrastructure - WEP mode)

## `2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of scripts 'js' in migration module (xpf g2 to xpf g3)
- Add support of SCXML
- Add support of Idle API (W3C listener)
- Add feature Fail Soft Mode
	- green led behavior (1X, 2X, 3X)
	- level1: automatical rescue purge content and "Fail Soft Mode" panel display
	- level2: restore user preferences restauration saved before Fail Soft Mode
- Fix random jerky video when included inside html (at loopback)
- Fix WebUI display issue caused by multi Flash plugin versions bad management in Firefox35
- Fix media playback loopback issue with video within audio duration is longer than video duration
- Fix debug log name (playzilla.log)

## `2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of scripts 'js' in migration module (xpf g2 to xpf g3)
- Add support of SCXML
- Add support of Idle API (W3C listener)
- Add feature Fail Soft Mode
	- green led behavior (1X, 2X, 3X)
	- level1: automatical rescue purge content and "Fail Soft Mode" panel display
	- level2: restore user preferences restauration saved before Fail Soft Mode
- Fix random jerky video when included inside html (at loopback)
- Fix WebUI display issue caused by multi Flash plugin versions bad management in Firefox35
- Fix media playback loopback issue with video within audio duration is longer than video duration
- Fix debug log name (playzilla.log)

## `2014-01-09` V3.12.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-smt210/gekkota_os-smt210-setup-3.12.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add DHCP timeout configuration in WebUI
- Add support full WGT API (localization)
- Change product name "Playzilla-and-elinux" to "Gekkota_os"
- Change logo Playzilla to logo Gekkota
- Fix decoding improvement for some HD or H264 video stream
- Fix firmware installation issue with http
- Fix random unworking UDP streaming after reboot
- Fix huge SWF loading issue
- Fix random freeze video for some 576 streams

## `2014-12-08` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add support playback of distant media (WGT/MAFF/PDF)
- Add checkdisk feature
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change rename installer to gekkota_os, new gekkota icons
- Change version of pdfjs viewer
- Fix support http 300 error code
- Fix a reboot which could occur with powerpoints
- Fix flash not played after a 'red cross'
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)
- Fix empty online cache with a new publication
- Fix take into account http code 300
- Fix a trouble when playing 2 swf and a pdf in the same time


## `2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Add WebUI icons to hide/show the passwords
- Add WebUI DHCP timeout
- Add WebUI variables fields (usefull for PlugnCast G3 only)
- Change WebUI Gekkota product icon
- Improve SMT210 LED management
- Fix random 3G module startup issue after reboot
- Fix a case where player does not keep rebooting by giving some additional time to publish an empty content
- Fix WebUI identification method saving (UUID/MAC/hostname)
- Fix WebUI button 'Validate' active in Maintenance/Preference, even without modification
- Fix URI with distant PDF


## `2014-10-07` V3.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
 - Add support media with FTP distant ressource


## `2014-08-28` V3.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of .wgt file format
- Fix side color leds which could show the wrong color
- Fix in wifi use : it could not work according to the boot
- Fix in wifi use : IP adress fix and automatic DNS, DNS didn't work


## `2014-08-13` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new version of pdfjs viewer
- Add new parameters for device-status
- Improves plugncast g2 mode functionnalities : can receive download and/or standby and/or reboot task without the need of having an active content update task
- Improves plugncast g2 mode functionnalities : task can be scheduled in time slot
- Fix all containers rules in plugncast g2 mode
- Fix UPNP discovery trouble when WLAN active
- Fix WebUI in IPV6 through a proxy
- Fix potential blocking case in plugncast g2 mode : use with a container using a variable with a value with special characters
- Fix case of ScreenComposer bad publication
- Fix crash with an ics using TZID

## `2014-05-20` V3.10.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new display output mode '1280x720 60Hz CGV CPLine AV-HD'
- Fix 2 cases of 'black screen' (Gekkota doesn't play anything), and when in plugncast G2 mode, there is the red circle
- Fix a case with a quicktime video container not supported
- Fix checkdisk feature
- Fix a trouble in standby mode when video playback is still working : after standby, videos don't work properly


## `2014-04-30` V3.10.43
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change rename the swf file of the UI
- Fix a case of ScreenComposer new publication not detected (when very small publications, as a .maff file)
- Fix standby mode not working anymore
- Fix mouse cursor reactivated after a standby
- Fix in PlugnCast G2 : exception date in a recurrence was not considered
- Fix in PlugnCast G2 : max duration of container, and duration of each medias were not considered
- Fix in PlugnCast G2 : no more management when using a chanel with the character "
- Fix a case with several big sized images : some images were not rendered (red cross)
- Fix a case with a quicktime video container : audio not well rendered
- Fix reception of several udp streams with different adresses but the same port
- Fix in UDP : a delay between video and audio could occur (depends on the udp multiplexing)
- Fix WebUI accessible in ipv6


## `2014-04-07` V3.10.42
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new preference to show/hide the pointer cursor : ```innes.player.display.show-cursor```
- Change rename the preference ```innes.hid.pointer-event.*. authorized``` by ```innes.hid.pointer-event.*.authorized``` (remove the unwanted space character)
- Fix a case with a quicktime video container : with MPEG2 audio, it could make reboot Gekkota


## `2014-04-02` V3.10.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix in plugncast G2 mode : transparent .txt and right justified .txt
- Fix case of 'black screen' (Gekkota dosen't play anything), and when in plugncast G2 mode, there is the red circle


## `2014-03-31` V3.10.40
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new proxy type : automatic configuration script
- Add support for binary type certificates
- Add the possibility to use html5 offline cache
- Add the compatibility with .txt files in plugncast G2 mode
- Add the possibility to use flashvar in plugncast G2 mode, with variables resolution inside
- Add the possibility to inhibit keyboard and pointer, with new preferences ```innes.hid.keyboard-event.*.authorized``` and ```innes.hid.pointer-event.*. authorized```
- Add WebUI status server part (for plugncast G3)
- Improve the management of playout disk full (gives always the possibility to publish a lighter content)
- Improve the cases of incomplete http bodies (rfc2616 section 4.4)
- Improve the following case : when network request was stopped, wsmanagement requests stayed accumulated, and when network come back, all the requests are outputted at the same time
- Improve the following case : when container is used, with a media synchronisation task, PROPFIND requests increase
- Fix WebUI : impossible to enter a bad DNS server
- Fix WebUI (/.playout/) : certain files may be hidden if their extension is unknown
- Fix case with a quicktime video container abnormaly detected as not supported
- Fix use a default audio scene in plugncast G2 mode
- Fix reboot with ics file with a event without DTSART nor DTEND
- Fix false detection of the filesystem repair
- Fix blocking situation during the media playing : when the 'red cross' duration is higher than the duration of the media for which it has been detected
- Fix in plugncast G2 mode : when a media is downloaded and network connection interrupted, the media may be downloaded from its begining when the network come back
- Fix 2 cases of 'black screen' (Gekkota+ dosen't play anything), and when in plugncast G2 mode, there is the red circle
- Fix random trouble: audio can become slow and cut
- Fix random trouble: if a file/directory is renammed with only a case change
- Fix random trouble: if player is switched off during the start phase, it could detect a false error *Can not write on data recovery*
- Fix random trouble: LAN could become unavailable, and stay like that
- Fix random trouble: when the server is switched off, it can block the Gekkota until its next reboot (red circle) (with Plugncast G2)


## `2013-12-24` V3.10.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new feature in plugncast http mode : when player date is more than 24H delayed from server date, it automatically updates its date
- Add the possibility to interrupt current publication with a newer one
- Change WebUI remove the possibility to use ftp proxy when in plugncast ftp mode
- Fix in very rare cases : LAN doesn't work any more
- Fix some blocking cases in plugncast mode with disrupted network environment
- Fix following case in plugncast mode : some proxy can interrupt a media download without providing an error => test downloaded file size when it is possible, and download it again if necessary
- Fix following case in plugncast mode : some proxy can replace a media with an html file which tells that the uri is not reachable => checks validity of the control files for the player (especially 'player.xpf')
- Fix following case in plugncast mode : when changing a media while a player downloads it can affect the downloaded media => download it again if necessary
- Fix use with proxy with domain
- Fix a potential crash when a video is inserted in an html5 tag, and then removed from dom
- Fix a very rare trouble with flash : it may not been played correctly (red cross)
- Fix WebUI possibility to use wrong adresses

## `2013-11-20` V3.10.35
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change remove port number 6000 from internal X11 server
- Fix touch screen disabled in the V3.10.34

## `2013-11-06` V3.10.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add preference ```innes.avkit.audio-output-sample-rate``` (see after for details)
- Add html error when the maximum image surfaces has been reached
- Add protection to prevent from filing all the file system in plugncast or usb injection modes
- Add security for cryptographic database, to prevent it from being damaged after a power off. If corrupted, a message is displayed, and database is cleaned after the next reboot. You will loose all certificates added before.
- Change (optimization) time for the player to verify if any file has to be downloaded (plugncast G2 situation)
- Fix in very rare cases display could be white at the startup, as if colors were saturated (which could only be removed by off/on)
- Fix a severe memory leak in case of plugncast G2 download, player could reboot during big downloads
- Fix use of jquery 1 and jquery 2
- WebUI : Fix modification of IGMP not detected on the sheet, Fix orthographic detail on LAN bitrates
- Fix WebUI wrong english translation during format/fix partition
- Fix WebUI modification of LAN/WLAN DHCP was not saved if changing screen
- Fix audio files are played more rapidly when used inside a playfolder
- Fix video file of null size puts 1 min to display the red cross
- Fix bad detection of audio end (in case of playing multiple times)

## `2013-10-14` V3.10.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add NTLM support
- Add scenes overlaps in calendar G2 support
- Add LAN bitrate limitation : 128 and 256kbps + only discrete values are permited
- Add *invalid licence* even in testcard mode
- Add WebUI (maintenance/Tools) support for adding certificates, support for formating/fixing data partition (in certain cases)
- Add WebUI (plugncast G2 server) extra folder filtering when use ftp mode (suppress /plugnCast if http mode was used before)
- Change (containers) the following files are not considered as medias anymore (but as resources instead = not played) .txt, .csv, .tsv, .xls, .xlsx
- Change logs are now visible in WebDav, use '/.log/' directory. You can upload logs activated and logs of the last delivery-software installation. The folder '/.log/.configuration'
  permits to activate some logs in Gekkota (you need to use a client webdav, like bitkinex, to modify the file 'log4xpcom.xml')
- Change background color of default scene serves as background color between scenes (permits to
- Improve jpg decoding speed
- Improve verification speed of what files to download after publish in plugncast mode
 replace the black)
- Fix USB injector in plugncast mode which didn't finish the copy of the files
- Fix download blocked if the character ';' is used in plugncast ftp mode
- Fix flash may not be viewed after a publish
- Fix ntp server in ipv6
- Fix ntp may not work at the startup in DHCP mode
- Fix use in MeetingRomm model when attendee have accentuation
- Fix flash with linked medias which doesn't retrieve its linked information when it is renammed as .sWf for example (fix case sensitivity)
- Fix bitrate limitation not accessible when a WLAN option is detected
- Fix rare blocking case in plugncast mode, when republishing several times
- Fix performance troubles in plugncast ftp mode

## `2013-08-01` V3.10.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add AVI container support
- Add automatic repair feature of data filesystem
- Change maxbitrate idl with discrete values instead of a number in kbps
- Change (optimization) duration of download after a publication in http mode, especially when there is nothing new to download and use of very big containers
- Fix: using of configuration-by-script on USB dongle with test card activated were not authorized
- Fix incorrect default base-uri for flash medias
- Fix a blocking case with plugncast G2 : when network connection is closed but ethernet link is OK
- Fix a blocking case with plugncast G2 : when empty containers are downloaded
- Fix in random mode : share the random information between scenes

## `2013-06-20` V3.10.31_beta16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add touch screen calibration
- Add new bitrate limitation: 56kbps
- Add configuration-by-script feature
- Add pixel ratio management : videos on which pixels are not square are correctly rendered
- Add interlaced videos detection and apply a deinterlace filter when necessary
- Add ACC-HE V2 audio support
- Change maximum volume limit
- Fix desynchronisation between audio and video with streamed videos (udp)
- Fix support for certain slow 32GB SD-CARD
- Fix use of a file which has several consecutive space characters (in plugncast G2 mode only)
- Fix fixed duration media which didn't stop after a failing previous media
- Fix case of reboot with video

## `2013-05-27` V3.10.31_beta11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version

