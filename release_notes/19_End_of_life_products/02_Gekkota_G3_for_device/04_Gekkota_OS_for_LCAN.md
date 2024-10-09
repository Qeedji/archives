# Gekkota OS for LCAN
*RELEASE NOTE*

*Never make electric unplug on your player while software upgrade is in progress (green led enlightened for few minutes) else the player may not be able to work properly*

## `2017-03-29` V3.12.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-lcan/gekkota_os-lcan-setup-3.12.40.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)
>##### **WILL BE CORRECTED IN NEXT VERSIONS**
- Fix: playing SlideMaker diapositive containing objects with fading (inside zone with transition between media activated) makes reboot the player each time the media is played
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.10.10 (or above)
- PlugnCast V3.10.19 (or above)
- PlugnCast Studio V2.51.11
- PlugnCast Server 2.50.32

#INFORMATION
***********************************************************************

#### **SUPPORTED MEDIAS**
- Gekkota supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)

# OLD VERSIONS HISTORY
***********************************************************************

## `2016-11-07` V3.12.37 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-lcan/gekkota_os-lcan-setup-3.12.37.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

## `2016-08-09` V3.12.33 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-lcan/gekkota_os-lcan-setup-3.12.33.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Fix: player reboot several time a day due to memory leak when playing playlist of video medias
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: player could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix unexpected player reboot when playing video media (Wmv container)
- Fix: xpf file or media file of size 0 KB could be noticed randomly in case reboot immediately after publication (making appear unexpected *no content* message or *media temporarily unavailable* message)
- Fix: some video could be displayed in 4-3 aspect ratio instead 16-9 aspect ratio

## `2016-06-01` V3.12.31 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-lcan/gekkota_os-lcan-setup-3.12.31.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to export a playout as *tar.gz* archive (from player to PC with a Web browser) (WebUI)
	- ```http://<player_IP_address>/.playout/?export```
		- To decompress the archive, use one of the softwares WinRar (V5.40 beta1 or above) or 7Zip (V9.5 or above)
- Add possibility to list available WebDAV directories (WebUI)
	- ```http://<player_IP_address>/?list_directory```
- Add possibility to read player status (status.xml) through the player WebDAV server
 	- ```http::/<player_IP_Addr>/.status/```
- Add gateway name and network prefix size in IP address when test card is diplayed
	- for example: *192.168.1.29/17*
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
        - COM1, COM2, COM3, COM4
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
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix risk to not be able to upgrade anymore Gekkota_os version in case wrong firmware (ex: Gekkota_RT firmware) has been loaded by error previously in this player
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix: no content screen could be displayed infinitely after a publication, due to filesystem corruption (a reboot was solving the issue)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix directory opening issue when the directory name is containig special characters (WebUI)

## `2016-02-12` V3.12.28 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-lcan/gekkota_os-lcan-setup-3.12.28.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: unexpected error message *content temporarily unavailable* when playing a same PDF media several times

## `2016-02-03` V3.12.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support of specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
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

## `2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of configuration file injection through USB with file naming ```configuration.js```
- Add support of configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change: support GPIO modification notification (SignMeeting configuration)
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix LDAP IDL error management in case URL validity issue
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, especialy when the player time&date is earlier than server one
- Fix infinite black screen after the downloading of corrupted (or obsolete) firmware
- Fix device status purge status update (only when purge is really effective)
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix release firmware critical issue when playout is playing some flash media like free feeds sytadin (could occurs more and less rapidly in case used flash media is printing much flash debug trace)
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
- Change: remove compatibility with old API *logService.getLogger* and *log* (used in configuration-by-script JavaScript file)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
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
- Reduce blanking audio (less than 0.5 sec) between 2 consecutive audio medias when situated in different opt-outs  (PlunCast G2 environment)
- Fix critical publication issue (which has been introduced in version 3.12.18)
- Fix crash when renaming file while filemonitor is active
- Fix background color disappearing after a while (audio channel with default audio channel) (PlugnCast G2 environment)
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
- Fix black screen when playing opt-out with variable containing special characters like "é, è, ê, ë, à" (PlugnCast G2 environment)

## `2015-03-09` V3.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix default scene not displayed with PlugnCast G2 configuration (issue in migration script G2-> G3)
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix jerky video (when  played inside HTML) after one loopback
- Fix red cross displayed when HTML was containing non-existing resource

## `2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of scripts 'js' in migration module (xpf g2 to xpf g3)
- Add support of SCXML
- Add support of Idle API (W3C listener)
- Fix WebUI display issue caused by multi Flash plugin versions bad management in Firefox35
- Fix media playback loopback issue with video within audio duration is longer than video duration
- Fix debug log name (playzilla.log)

## `2015-01-21` V3.12.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of Mpeg4.2 codec

## `2014-01-09` V3.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add DHCP timeout configuration in WebUI
- Add support of full WGT API (localization)
- Change product name "Playzilla-and-elinux" to "Gekkota_os"
- Changed logo Playzilla to logo Gekkota
- Fix decoding improvement for some HD or H264 video stream
- Fix firmware installation issue with http
- Fix random unworking UDP streaming after reboot
- Fix SWF loading important issue

## `2014-12-08` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add support of distant media playback (WGT/MAFF/PDF)
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change rename installer to gekkota_os, new gekkota icons
- Change version of pdfjs viewer
- Fix a reboot which could occur with powerpoints
- Fix flash not played after a 'red cross'
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)
- Fix empty online cache with a new publication
- Fix take into account http code 300

## `2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Add WebUI icons to hide/show the passwords
- Add WebUI DHCP timeout
- Add WebUI variables fields (usefull for PlugnCast G3 only)
- Add support of URI with distant PDF
- Change WebUI Gekkota product icon
- Fix a case where player does not kee rebooting by giving some additional time to publish an empty content
- Fix WebUI identification method saving (UUID/MAC/hostname)
- Fix WebUI button 'Validate' active in Maintenance/Preference, even without modification
