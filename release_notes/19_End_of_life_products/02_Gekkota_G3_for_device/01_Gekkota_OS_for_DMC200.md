# Gekkota OS for DMC200
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led enlightened for few minutes) else the player may not be able to work properly*

## `2018-10-13` V3.12.57 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.57.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for TLS 1.2 (Transport Layer Security)
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: in some very rare cases, the device boot could not end
- Fix: in some case, the device could not stop rebooting after having unplugged the power supply (very rare)

#INFORMATION
***********************************************************************

#### **INSTALLATION GUIDE**
- Installation guide (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/DMC200-guide-installation-011E_fr.pdf)
#### **SUPPORTED MEDIAS**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)
#### **FEATURES & TROUBLESHOOT FIXING GUIDE**
- Features & troubleshoot fixing guide 001A/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/troubleshoot-fixing-guide-Gekkota/Gekkota-troubleshoot-fixing-guide-001A_en.pdf) 

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2018-04-26` V3.12.55 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.55.zip)
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
- Fix: a device reboot could occur when the PlugnCast server date written in each HTTP request headers was removed  from the request by some customer network devices
    - note: in previous version, setting the user preference `innes.app-profile.manifest-downloader:g3.*.*.*.date-updater.enable` (or `innes.app-profile.manifest-downloader:g2.*.*.*.date-updater.enable`) to the value *false* was permitting to work around the issue in this case
- Fix: SMTP without authentication did not work
- Fix: email attachment was not supported
- Fix: unexpected black screen could be displayed infinitely due to the device which did not manage to boot-up properly (very rare)

## `2017-04-27` V3.12.42 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.42.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a device reboot could occur when publishing with Screen Composer or PlugnCast G2 (rare)
- Fix: a immediate device reboot could be noticed when playing a specific Web page

## `2017-03-29` V3.12.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.40.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)

## `2016-11-07` V3.12.37 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.37.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

## `2016-10-05` V3.12.35 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.35.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, player could not be not able to play any TNT channel leading to *content temporarily unavailable* (now, when DVB-T express card is not able to provide DVB-T data properly for 10 seconds, a workaround is detecting this anomaly and make reboot the player)
- Fix: player could face issue to take a playout containing a file whose size is more than 2 GB

## `2016-08-09` V3.12.33 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.33.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Add preferences permitting to not display monitor-monitoring data *power-mode* and *input-source* in device-status (by example in case the screen is raising inconsistent data)
    - Set the preference ```innes.app-profile.monitor-monitoring.i2c_1.dvi_1.*.protocol``` to ```none``` (instead of auto)
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: player could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix: artefact could be noticed when playing video medias (Wmv container) generated with PowerPoint 2013 or 2016 (HD resolution / 30 fps)
- Fix: *uart4* was not supported
- Fix: MS-PowerPoint media (with animation starting as soon as the PowerPoint starts) could be displayed partially on the screen
- Fix: in some case unexpected slight additional delay could be noticed between audio and video when playing interlaced video media with track audio EAC3 (Mpeg2-ts container)
- Fix: xpf file or media file of size 0 KB could be noticed randomly in case reboot immediately after publication (making appear unexpected *no content* message or *media temporarily unavailable* message)
- Fix: some video could be displayed in 4-3 aspect ratio instead 16-9 aspect ratio

## `2016-06-01` V3.12.31 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.31.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to export a playout as *tar.gz* archive (from player to PC with a Web browser) (WebUI)
	- ```http://<player_IP_address>/.playout/?export```
		- To decompress the archive, use one of the softwares WinRar (V5.40 beta1 or above) or 7Zip (V9.5 or above) is required
- Add possibility to list available WebDAV directories (WebUI)
	- ```http://<player_IP_address>/?list_directory```
- Add gateway name and network prefix size in IP address when displaying test card screen
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
	- Monitor monitoring DDC is inactivated by default. To activate it, set the preference ```innes.app-profile.monitor-monitoring.i2c_1.dvi_1.authorized``` to true
	- In case using DVI-I cable (1: DVI-I to 2: VGA + DVI), one screen is plugged on DVI, and another one is plugged on VGA, Gekkota could fetch wrong monitor monitoring status due to conflit between screens
- Add support for Web IDL AVCmd TCP/IP and serial
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
        - ```/dev/ttyUSB0```
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
- Fix: after a reboot, and once a video media (played in 1X) has been played at least once, video média could start with a unexpected delay of half second (player content needing to be played synchronized)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix: boot time was increased implying black screen displaying *Skipping non-existent adapter gma500 GPIOC* when edid of a screen could not be fecthed
- Fix directory opening issue when the directory name is containig special characters (WebUI)

## `2016-04-19` V3.12.30 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.30.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix unexpected jerky effect on some interlaced H264 video (typically HD DVBT)
- Fix: no content screen is displayed infinitely after a publication, due to a filesystem corruption (a reboot was solving the issue)
- Fix: after a reboot, and once video media (played in 1X) has been played at least once, video media could start with a unexpected delay of half second
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player rebooting and having Ethernet cable unplugged (PlugnCast G2 configuration)
- Fix: Reboot capability was not stopped at the configuration script injection (PlugnCast G2 configuration)
- Fix: player was not able to take a playout with some custom CMS server (due to wrong management of etag file containing ```;``` character)

## `2016-02-29` V3.12.29 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.29.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to read player status (status.xml) through the player WebDAV server
 	- ```http::/<player_IP_Addr>/.status/```
- Fix player reboot for AV streams whose audio codec is different from AC3 and EAC3 and has more than two channels
- Fix risk to not be able to upgrade anymore Gekkota_os version in case wrong firmware (ex: Gekkota_RT firmware) has been loaded by error previously in this player
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix: very rare unexpected video tearing noticed on some player (video medias, transitions between media) which could be solved previously only after a player reboot (occurrence rate was depending on some platform)

## `2016-02-12` V3.12.28 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.28.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: unexpected error message *content temporarily unavailable* when playing a same PDF media several times

## `2016-02-03` V3.12.26 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmc200/gekkota_os-dmc200-setup-3.12.26.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add display modes
	- "1280x720 60Hz CEA-861"
	- "1280x720 50Hz CEA-861"
	- "1920x1080 60Hz CEA-861"
	- "1920x1080 50Hz CEA-861"
- Add: WWAN/WLAN failover network in case internet connection is lost on LAN (monitoring every 15 minutes)
- Add support for TNT HD
	- If the URN of TNT HD services are not embedded in your Screen Composer (or PlugnCast), it is required to install content model package V3.29 (or above)
- Add support for configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support for specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
- Change PDF viewer to increase PDF viewing efficiency
- Change: rename display mode
	- "1024x600 60Hz DENSITRON 84-01X8-00XT" to
	- "1024x600 60Hz DENSITRON 84-0188-001T"
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
- Fix remaining unconsistent *Fail soft mode - waiting for new content* in device status after exiting from failsoft mode state
- Fix: some characters or some image was not porperly dispayed for some PDF medias
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

## `2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for configuration file injection through USB with file naming ```configuration.js```
- Add support for configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: user preferences are only saved back at reboot (once fail soft mode timeout has expired) only when at least one preference is modified
- Change user agent by replacing *Playzilla* by product name *Gekkota*. For example: ```Mozilla/5.0 (X11; Linux i686; rv:14.0) Gecko/20150917 Firefox/14.0 Gekkota/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Change: remove DVB-T channels list in case G2 to G3 migration (due to channel list compatiblity). New scanning is required after migration to recover the functionality
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix: reboot after publication to exit fail soft mode level 2, so restore LED blinking normal behavior
- Fix LDAP IDL error management in case URL validity issue
- Fix reboot task and TV screen standby could not work sometimes (Screen Composer configuration)- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
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
- Fix crash when playing web site storing a lot of image in graphics memory
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
- Add WebUI: possibility to paste URL/login/password in *configuration server Génération 3* text area with json format below:
```{ "url": "http://test.com", "username": "usr1", "password": "pwd1" }```
- Change WebUI: *delivery, status and installation servers* view
- Change WebUI: licence title *Licence du player* by *Configuration / Licence du middleware*
- Change WebUI: tools title *Tools* by *Maintenance / Tools*
- Change: improve graphics drawing efficiency on opaque rectangles
- Change (configuration-by-script) remove compatibility with old API *logService.getLogger* and *log* (used in configuration-by-script JavaScript file)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
- Change: the App content is removed in fail soft mode only when the remaining place in the file system is lower than 2 MB
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
- Add channel type detection (audio or visual) (permits to fully support function described in documentations *gpio_channel-001A_en* and *keyboard_channel-001A_en*)
- Reduce blanking audio (less than 0.5 sec) between 2 consecutive audio medias when situated in different opt-outs  (PlunCast G2 environment)
- Fix critical publication issue (which has been introduced in version 3.12.18)
- Fix crash when renaming file while filemonitor is active
- Fix background color disappearing after a while (audio channel with default audio channel) (PlugnCast G2 environment)
- Fix media playback issue in playlist (or opt-out) after having emptied the playlist and filled it again with some others medias (PlugnCast G2 environment)
- Fix media transition which did not work anymore (PlugnCast G2 environment)
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
- Fix rare infinite audio lose after few days (publication did not manage to fix issue)
- Fix black screen when playing opt-out with variable containing special characters like "é, è, ê, ë, à" (PlugnCast G2 environment)
- Add security to not crash when playing Meeting Room Summarization Google Calendar after few seconds
- Fix directory HTTP download issue when containing special character ';'
- Fix content HTTP download issue with server Proxy Squid activated [cache setup forced] (PlugnCast environment)

## `2015-03-09` V3.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix default scene not displayed with PlugnCast G2 configuration (issue in migration script G2-> G3)
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix jerky video (when  played inside HTML) after one loopback
- Fix red cross displayed when HTML was containing non-existing resource

## `2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for of scripts 'js' in migration module (xpf g2 to xpf g3)
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

## `2015-01-09` V3.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DHCP timeout  configuration in WebUI
- Add support for full WGT API (localization)
- Changed logo Playzilla to logo Gekkota
- Change product name "Playzilla-and-elinux" to "Gekkota_os"
- Fix decoding improvement for some HD or H264 video stream
- Fix flash playback playback when fake URI media are inserted just before SWF media
- Fix firmware installation issue with http
- Fix random unworking UDP streaming after reboot
- Fix huge SWF loading issue

## `2014-12-08` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add 'yadif' deinterlace mode. This mode is only available in 720x576i resolution maximum ('blend' mode is used instead)
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change new version of pdfjs viewer
- Change rename installer to gekkota_os, new gekkota icons
- Fix support playback of distant media (WGT/MAFF/PDF)
- Fix a reboot which could occur with powerpoints
- Fix flash not played after a 'red cross'
- Fix a case of black screen when playing several different videos
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)
- Fix empty online cache with a new publication
- Fix take into account http code 300
- Fix a video playing inside a flash makes all video files not played after
- Fix checkdisk feature which could imply that powerpoint are not properly rendered afterwards

## `2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Add Web UI icons to hide/show the passwords
- Add Web UI DHCP timeout
- Add Web UI Variables fields (usefull for PlugnCast G3 only)
- Change Web UI Gekkota product icon
- Fix : for a situation where the player has a task which impose to reboot constantly, give some time to be able to publish an empty content and recover a normal situation
- Fix web UI : identification method saving (UUID/MAC/hostname)
- Fix web UI : predefined overscan not properly centered in rotated mode
- Fix web UI : button 'Validate' active in Maintenance/Preference, even without modification
- Fix URI with distant PDF

## `2014-10-07` V3.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Support media with FTP distant ressource

## `2014-08-28` V3.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for .wgt file format

## `2014-08-14` V3.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix deinterlace mode 'linear' and 'discard' which make appear a green line on the top of video

## `2014-08-13` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Improve plugncast g2 mode functionnalities : can receive download and/or standby and/or reboot task without the need of having an active content update task
- Improve plugncast g2 mode functionnalities : task can be scheduled in time slot
- Add a new preference for choosing the deinterlace mode (see below). The default one is 'linear'. The mode of older versions corresponds to 'blend'
- Add new parameters for device-status
- Change new version of pdfjs viewer
- Fix all containers rules in plugncast g2 mode
- Fix delay between audio and video which could occur
- Fix a case in udp when video wasn't accepted
- Fix webui in ipv6 through a proxy
- Fix a random blocking case in plugncast g2 mode : use with a container using a variable with a value with special characters
- Fix a case of ScreenComposer bad publication
- Fix a crash with an ics using 'TZID'
- Fix a trouble when changing from a DVBT channel to an other

## `2014-05-20` V3.10.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new RS232 executables : extron_m1_input, extron_m2_input, extron_m3_input, extron_m4_input
- Add a new display output mode '1280x720 60Hz CGV CPLine AV-HD'
- Add the possibility to support not-standard resolutions for video whith width and height between 1080 and 1920
- Fix a case with a quicktime video container not supported

## `2014-04-30` V3.10.43
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change rename the swf file of the UI
- Fix a case of ScreenComposer new publication not detected (when very small publications, as a .maff file)
- Fix standby mode not working anymore
- Fix mouse cursor reactivated after a standby
- Fix in plugncast G2 : exception date in a recurrence was not considered
- Fix in plugncast G2 : max duration of container, and duration of each medias were not considered
- Fix in plugncast G2 : no more management when using a chanel with the character "
- Fix a case with several big sized images : some images were not rendered (red cross)
- Fix a case with a quicktime video container : audio not well rendered
- Fix reception of several udp streams with different adresses but the same port
- Fix in udp : a delay between video and audio could occur (depends on the udp multiplexing)
- Fix UI accessible in ipv6

## `2014-04-07` V3.10.42
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new preference to show/hide the pointer cursor : ```innes.player.display.show-cursor```
- - Change rename the preference ```innes.hid.pointer-event.*. authorized``` by ```innes.hid.pointer-event.*.authorized``` (remove the unwanted space character)
- Fix bad decoding of video which could occur, and green screen which could replace the video
- Fix a case with a quicktime video container : with MPEG2 audio, it could make reboot Gekkota

## `2014-04-01` V3.10.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new proxy type : automatic configuration script
- Add support for binary type certificates
- Add the possibility to use html5 offline cache
- Add the compatibility with .txt files in plugncast G2 mode
- Add RS232 executables for display control
- Add the possibility to play 2 powerpoint files (only for DMC200 with HDD or SDCARD). In this case, the performance may be decreased, so it stays not adviced to do that.
- Add the possibility to use flashvar in plugncast G2 mode, with variables resolution inside
- Add the possibility to inhibit keyboard and pointer, with new preferences :
        - ```innes.hid.keyboard-event.*.authorized```
		- ```innes.hid.pointer-event.*. authorized```
- Add WebUI status server part (for plugncast G3)
- Improve the cases of incomplete http bodies (rfc2616 section 4.4)
- Improve the management of playout disk full (gives always the possibility to publish a lighter content)
- Improve the following case : when network request was stopped, wsmanagement requests stayed accumulated, and when network come back, all the requests are outputted at the same time
- Improve the following case : when container is used, with a media synchronisation task, PROPFIND requests increase
- Fix WebUI : impossible to enter a bad DNS server
- Fix WebUI (/.playout/) : certain files may be hidden if their extension is unknown
- Fix migration from G2 to G3 : proxy information wasn't propagated, licence may have troubles, and https shows the 443 port in the uri
- Fix a case with a quicktime video container abnormaly detected as not supported
- Fix powerpoint with embedded font and powerpoint in protected mode (all powerpoint are declared as trusted)
- Fix use a default audio scene in plugncast G2 mode
- Fix a reboot with ics file with a event without DTSART nor DTEND
- Fix a false detection of the filesystem repair
- Fix a blocking situation during the media playing : when the 'red cross' duration is higher than the duration of the media for which it has been detected
- Fix in plugncast G2 mode : when a media is downloaded and network connection interrupted, the media may be downloaded from its begining when the network come back
- Fix a potential trouble : if a file/directory is renammed with only a case change
- Fix a very rare trouble : if player is switched off during the start phase, it could detect a false error 'Can not write on data recovery'
- Fix a very rare trouble in plugncast G2 mode : if the server is switched off, it can block the Gekkota until its next reboot (red circle)
- Fix a rare trouble : video can become green for ever
- Fix preference 'innes.video-with-audio.skip-late-frames' to true

## `2014-01-29` V3.10.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add powerpoint 2010 support
- Add brightness feature
- Fix trouble with V3.10.38 : the clean fonction of ScreenComposer didn't work anymore
- Fix a potential system general blocking or slowing

## `2013-12-24` V3.10.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new feature in plugncast http mode : when player date is more than 24H delayed from server date, it automatically updates its date
- Add the possibility to interrupt current publication with a newer one
- Change WebUI remove the possibility to use ftp proxy when in plugncast ftp mode
- Fix some blocking cases in plugncast mode with disrupted network environment
- Fix following case in plugncast mode : some proxy can interrupt a media download without providing an error => test downloaded file size when it is possible, and download it again if necessary
- Fix following case in plugncast mode : some proxy can replace a media with an html file which tells that the uri is not reachable => checks validity of the control files for the player (especially 'player.xpf')
- Fix a blocking download in plugncast mode with containers
- Fix following case in plugncast mode : when changing a media while a player downloads it can affect the downloaded media => download it again if necessary
- Fix use with proxy with domain
- Fix WebUI possibility to use wrong adresses

## `2013-11-28` V3.10.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the preference 'innes.avkit.audio-output-sample-rate' (see after for details)
- Add an html error when the maximum image surfaces has been reached
- Add a security for cryptographic database, to prevent it from being damaged after a power off. If corrupted, a message is displayed, and database is cleaned after the next reboot. You will loose all certificates added before.
- Change remove port number 6000 from internal X11 server
- Fix audio files are played more rapidly when used inside a playfolder
- Change player time delay in a plugncast G2 situation to verify whether any file has to be downloaded
- Fix prevent from filing all the file system in plugncast or usb injection modes
- Fix a crash during DVBT scan with incomplete services
- Fix a potential crash when a video is inserted in an html5 tag, and then removed from dom
- Fix a very rare trouble with flash : it may not been played correctly (red cross)
- Fix in very rare cases display could be white at the startup, as if colors were saturated (which could only be removed by off/on)
- Fix a severe memory leak in case of plugncast G2 download, player could reboot during big downloads
- Fix use of jquery 1 and jquery 2
- Fix Web UI modification of IGMP not detected on the sheet, Fix orthographic detail on LAN bitrates
- Fix Web UI wrong english translation during format/fix partition
- Fix Web UI modification of LAN/WLAN DHCP was not saved if changing screen
- Fix video file of null size puts 1 min to display the red cross
- Fix bad detection of audio end (in case of playing multiple times)

## `2013-10-09` V3.10.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add WMA support in ASF container
- Add NTLM support
- Improve verification speed of what files to download after publish in plugncast mode
- Add scenes overlaps in calendar G2 support
- Add LAN bitrate limitation 128 and 256kbps (+ only discrete values are permited)
- Add logs visibility in webdav, use '/.log/' directory. You can upload logs activated and logs of the last delivery-software installation. The folder '/.log/.configuration'
  permits to activate some logs in Gekkota (you need to use a client webdav, like bitkinex, to modify the file 'log4xpcom.xml')
- Add 'invalid licence' even in testcard mode
- Add Web UI Maintenance/Tools : support for adding certificates, support for formating/fixing data partition (in certain cases)
- Add Web UI (with plugncast G2 server) filter any extra folder when use ftp mode (suppress /plugnCast if http mode was used before)
- Change containers from medias to resources, so can not be played (.txt, .csv, .tsv, .xls, .xlsx)
- Change The background color of default scene is used as background color between scenes (permits to replace the black)
- Fix usb injector in plugncast mode which didn't finish the copy of the files
- Fix download blocked if the character ';' is used in plugncast ftp mode
- Fix flash may not be viewed after a publish
- Fix ntp server in ipv6
- Fix ntp may not work at the startup in DHCP mode
- Fix use in MeetingRomm model when attendee have accentuation
- Fix flash with linked medias which doesn't retrieve its linked information when it is renammed as .sWf for example (fix case sensitivity)
- Fix bitrate limitation not accessible when a WLAN option is detected
- Fix a rare blocking case in plugncast mode, when republishing several times
- Fix performance troubles in plugncast ftp mode
- Fix a rare blocking case : with HDD option, access to disk may block, the watchdog will reboot the player

## `2013-08-01` V3.10.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add AVI container support
- Add ASF container support + VC1 video decoder
- Add automatic repair feature of data filesystem (for DMC with HDD or SD-card option)
- Fix incorrect default base-uri for flash medias
- Fix MPEG4.2 with B-frames incorrectly rendered
- Fix a blocking case with plugncast G2 : when network connection is closed but ethernet link is OK
- Fix a blocking case with plugncast G2 : when empty containers are downloaded
- Change duration (optimization) of download after a publication in http mode, especially when there is nothing new to download and use of very big containers
- Fix in random mode : share the random information between scenes

## `2013-07-04` V3.10.32_beta2
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change maxbitrate idl with discrete values instead of a number in kbps
- Fix: use of JavaScript file on USB dongle with test card activated were not authorized (configuration-by-script)

## `2013-06-19` V3.10.31_beta16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add MPEG4.2 decoder on MP4 container
- Add a new bitrate limitation at 56kbps
- Fix special characters for certain channels, when scanning DVB-T option
- Fix a reception trouble with DVB-T option
- Fix desynchronisation between audio and video with streamed videos (udp and DVB-T)
- Fix a trouble with autoconfiguration : when test mode is activated, and script has an error, test mode wasn't come back
- Fix a case of reboot with video

## `2013-05-30` V3.10.31_beta12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add configuration-by-script feature
- Add pixel ratio management : videos on which pixels are not square are correctly rendered
- Add interlaced videos detection and apply a deinterlace filter when necessary
- Add ACC-HE V2 audio support
- Add file synchronisation with USB copy, to improve robustness in this mode
- Add a new preference for defining the comportment when audio/video is not realtime (see details after)
- Change the max time value on which a javascript is declared as broken to 60seconds. If it occurs, a system message is displayed and the player reboots
- Change increase internal pdf viewer version
- Change rename 'plugin-container' process to 'playzilla-container'
- Plugncast old scrolling text if forced to fixed text; use the maff model instead, for best performances
- Change audio path (optimization): the best performances are obtained when using 48KHz sampling rate with audio/video container
- Change reduce installed size using a jar type, instead of a flat installation type
- Change decrease watchdog of the main loop to 3 minutes
- Improve robustness and performance with MPEG-TS flows (udp), and for long duration
- Fix When a video is not real time, some images are let passing instead of blocking totally the video. If there is no audio associated to the video, the behaviour is not the same : all the video is displayed, even if not real time
- Fix use of a file which has several consecutive space characters (in plugncast G2 mode only)
- Fix video which is displayed slower for its first time play and just after its download
- Fix green screen for certain videos
- Fix big sized files transfert : it could not work even with HDD option
- Fix display black instead of video
- Fix webui : when changing DNS servers, old values were keeped if coming back to the same webui tab
- Fix end of audio : read all the samples
- Fix a rare total blocking of any kind of media
- Fix a rare blocking situation at the end of a video
- Fix fixed duration media which didn't stop after a failing previous media
- Fix use with webdav IIS server (in plugncast G3 mode)
- Fix several memory leaks
- Fix regression with default Gekkota language = english

## `2013-03-27` V3.10.29_beta5
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change audio/video synchronisation (optimization)
- Fix When a video is not real time, some images are let passing instead of blocking totally the video. If there is no audio associated to the video, the behaviour is not the same : all the video is displayed, even if not real time
- Fix very rare total blocking of Gekkota : when intensive use of Gekkota, use of flash and end of an audio or video
- Fix memory leak
- Fix a crash at the end of video
- Fix system warning/error not displayed if Gekkota is in display off (example : when usb dongle inserted, nothing was displayed on the screen)

## `2013-03-22` V3.10.29_beta3
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add LAN bitrate limitation (tuned for http plugncast mode)
- Change the max time value on which a javascript is declared as broken to 60seconds. If it occurs, a system message is displayed and the player reboots
- Improve robustness and performance with MPEG-TS flows (DVB-T and udp), and for long duration
- Fix all video mode were not selectable
- Fix in ui : date and time sometimes shows the previous month
- Fix a situation where a zone could become black
- Fix end of audio : read all the samples
- Fix some memory leak with MP4 containers, and with video
- Fix a rare blocking situation at the end of a video
- Fix blockings while passing from DVB-T to udp

## `2013-03-06` V3.10.28_beta36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add test mode resizeable, which permits to see all the characters (especially in rotation mode)
- Change improve robustness with MPEG-TS flows (DVB-T and udp)
- Add support vertical videos and improve its quality
- Add display of a system wait during DVB-T scan
- Fix synchros polarity for some output display modes
- Fix some memory leak
- Fix a rare blocking situation at the end of a video
- Fix audio desynchronisation after a MPEG-TS flow cut
- Fix a blocking situation when using play 2x a video

## `2013-02-11` V3.10.28_beta29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Improve scrolling text (use only the maff model for it, not a .txt file)
- Add DVB-T option (cvbs is not included for now, DVB-T HD channels are temporarily blocked)
- Add MPEG2 audio decoder
- Add language localization. Default Gekkota language = english
- Add fix to prevent a G2 version to be released
- Add WebUI possibility to wiew the webui in different languages (tab on the right up corner)
- Change WebUI output tab (overscan in rotation mode)
- Change WebUI hostname instead of equipment name
- Fix end of videos which could be too fast (could cut around 0.5seconds of audio/video)
- Fix some troubles with videos
- Fix with plugncast background color when there is nothing to play which were the last scene background color instead of black
- Fix AAC decoder trouble in repeat mode
- Fix webui change the hostname not taken into account with Chrome
- Improve robustness with interrupted datas flows (dvb-t or udp)

## `2013-01-14` V3.10.28_beta10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add rotation modes
- Change increase internal pdf viewer version
- Change use flash in opaque mode only
- Fix use with containers
- Fix some blocking video

## `2012-12-12` V3.10.28_beta4
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add video decoding support (always hardware accelerated)
- Add new output mode : "1280x720 60Hz SONY", for SONY displays in digital input
- Add support SD-CARD external storage (as V2.50.83)
- Change upnp presentation url with '/.admin' at the end
- Change enable firmware injection during test mode
- Change watchdog detection enhancement
- Change decode video even if audio format isn't supported
- Improves checks while upgrading to G3 version
- Fix trouble with old board revision while upgrading to G3 version (causes constant reboot)
- Fix several blocking cases with use on plugncast
- Fix trouble when using a schedule between 0h00 and 23h59 each day
- Fix AAC decoder with was removed in previous versions
- Fix mp3 decoder with low bit rate audios and mono audios
- Fix graphic troubles on images
- Fix a trouble on certain web sites
- Fix web UI : in LAN, after a change without reboot, old values seem to come back
- Fix standby mode
- Fix background color between scenes in plugncast use

## `2012-11-16`  V3.10.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with PlugnCast V2.xx.yy
- Add udp support. Considering that MPEG2 audio isn't supported yet, general cases can only work without audio
- Change WebUI icons and logos
- Change WebUI selection for g2 compatibility in the tab 'server'
- Change flash player version, to correct some transparency artifacts : 11.1 r102
- Change improve global graphic performances
- Fix Transparency for floating zones with PlugnCast
- Fix url support with PlugnCast
- Fix variable support with PlugnCast
- Fix download with plugncast may be blocked while using accent and special characters (for medias, scenes, channels)
- Fix scrolling text
- Fix a memory leak while downloading
- Fix impossible to add content with usb dongle after canceling publishing with Screen Composer

## `2012-10-09` V3.10.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the possibility to remove the red cross in case of media trouble : for that, modify the preference 'innes.xpf.media-error-duration', which defines the duration of the red cross. If you set this preference to the value '0', the red cross will never appear.
- Add audio of video
- Add a file watcher
- Add watchdog when boot process blocks
- Add support for INNES universal infrared remote control (grey, 28 buttons)
	- IR sensor TSOP2138 (NEC 38K)
	- remote control key: ```0``` to ```9```, ```+```, ```-```, ```next```, ```prev```
- Change enable crossdomain load when source is FILE
- Change the information message when there is no content
- Fix Text maff models used in infinite mode
- Fix regression with usb partial injector

## `2012-08-27` V3.10.20 beta 21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add pdf format support
- Fix containers not properly working

## `2012-05-30` V3.10.11 beta 29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- initial version
