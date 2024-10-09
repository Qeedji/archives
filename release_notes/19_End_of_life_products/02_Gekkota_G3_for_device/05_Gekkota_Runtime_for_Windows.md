# Gekkota Runtime
*RELEASE NOTE*

- Choose the Gekkota RT installer according to your Windows version:
    - *Windows XP* (for Windows XP, Windows Embedded)
    - *Windows 7+* (for Windows 7, Windows 8.X, Windows 10)
- To avoid any unexpected network trouble with Gekkota RT, it is recommended to inactivate all LAN interfaces of your player MS-Windows (LAN Bluetooth, virtual LAN...) except MS-Windows Ethernet LAN interface. For more information refer to Gekkota application note troubleshooting options.

##`2019-03-15` V3.12.59 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-3.12.59.exe) [download for Windows XP](gekkota-rt/gekkota_rt-nt5_ia32-setup-3.12.59.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the ```.playlog/``` directory in the WebUI
- Add support for ```Playlog``` feature
    - The playlog feature needs a playout script `playlog-V1.10.10.js` which needs to be added to each new playout requiring the `Playlog` feature
    - The playout script `playlog-V1.10.10.js` is compatible with `Playzilla 4.XX.YY` only

#INFORMATION
***********************************************************************

#### **SUPPORTED MEDIAS DOCUMENTATION**
- Gekkota supported media and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)

#### **RECOMMENDED CONFIGURATION**
- MS-Windows 10 (or MS-Windows 7),
- Core i7 (or i5),
- RAM: 4 GB (or more),
- Hard disk: 128 GB (or more),
- Graphics card: is depending on your needs (video decoding hardware performances, screen wall capabilities, ...). For further information, contact your computer reseller and check this point.

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2019-03-08` V3.12.58 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-3.12.58.exe) [download for Windows XP](gekkota-rt/gekkota_rt-nt5_ia32-setup-3.12.58.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a message *content temporarily unavailable* was raised when a video was played over UDP multicast
- Fix: a video over UDP could not be played in case using a *DME204* encoder-streamer with the audio inactivated

##`2018-10-23` V3.12.57 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-3.12.57.exe) [download for Windows XP](gekkota-rt/gekkota_rt-nt5_ia32-setup-3.12.57.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for TLS 1.2 (Transport Layer Security)
- Fix: attachments could be not properly attached in the email when containing some non-ASCII characters
- Fix: the hardware acceleration was not detected anymore

##`2018-03-19` V3.12.54 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-3.12.54.exe) [download for Windows XP](gekkota-rt/gekkota_rt-nt5_ia32-setup-3.12.54.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: MS-PowerPoint media playback could lead to the display of the message *content temporarily unavailable* since a recent MS-Windows 10 system update
- Fix: black screen could be displayed infinitely after a publication (especially on MS-Windows 10 system)
- Fix: the content could be not displayed in full screen after having unplugged then plugged again HDMI cable (MS-Windows 10)
- Fix: audio could be jerky when playing some HTTP stream (Mpeg-TS container)

##`2017-10-03` V3.12.47 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-3.12.47.exe) [download for Windows XP](gekkota-rt/gekkota_rt-nt5_ia32-setup-3.12.47.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add ```Overscan``` in *Output* menu (WebUI)
- Add support for ```German``` language (WebUI)
- Add support for ```Spanish``` language (WebUI)
- Add support for ```no proxy for``` (WebUI)
	- ```Status server```
	- ```Software and configuration installation serveur``` as well as
	- ```Delivery server```
	- Note: The checkbox value can be different for the 3 items above when they are not sharing the same domain (or IP address)
- Add support for ```Maintenance > Middleware``` menu to upgrade device middleware (WebUI)
- Add support for ```Maintenance > Logs``` menu to print debug log (WebUI)
	- *Name*
		- ```App``` (default)
		- ```Widget```  (default)
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
- Fix: some MS-PowerPoint medias was not played properly
- Fix: some video could not be played sometimes (while they were properly decoded in a previous version)
- Fix: when pasting from clip board a Plugncast configuration (URL, login, password), reset the password when it is not available

##`2017-06-16` V3.12.42
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for ```LaunchGekkota.bat``` (default directory ```c:\Program Files\Innes Gekkota RT\xulrunner```)  to launch manually and automatically Gekkota RT when MS-Windows User Account Control (UAC) is activated
- Change: MS-Windows desktop (*explorer.exe*) is killed when launching Gekkota RT
    - It is possible to not kill *explorer.exe* at Gekkota RT start-up by modifying ```LaunchGekkota.bat``` and removing the line *@taskkill /f /im explorer.exe > nul*
    - To launch MS-Windows desktop (explorer), press *CTRL+ALT+DEL*, select *task manager* and open menu *File > New task (execute)* and type ```explorer```
- Fix: a MS-Windows pop-up was prompted when executing Gekkota RT in case:
	-  MS-Windows User Account Control (UAC) is different from ```never advise``` (when *Some program try to install software or to modify my computer* and when *I modify Windows parameter* (like by exmaple computer clock, computer ip address)
- Fix: MS-PowerPoint medias could never be played on some PC (workaround for these platforms: MS-DirectDraw instead of MS-Direct3D)

##`2017-03-29` V3.12.40
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore value *Gekkota-3* for HTML tag *middleware* in Gekkota 3 device status.xml
- Fix: content of remote directory was not properly updated (PlugnCast G3 configuration) in case renaming, adding or removing file (or directories)
- Fix: issue to connect to device WebUI/configuration with Google Chrome (Chrome version > 15th March 2017)

##`2017-03-09` V3.12.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: Error could be raised in device status.xml preventing playout download when an absolute media path file name length is 236 characters (PlugnCast G3 configuration)
- Fix: Error could be raised in device status.xml preventing playout download when an absolute directory path name length is between 247 and 259 characters (PlugnCast G3 configuration)

##`2017-02-24` V3.12.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: keep the same file name for the device error dump (Web server) to avoid to fill the device MS-Windows hard disk
- Fix: sometimes some unexpected screen standby exit (or enter) could be noticed (seen on PlugnCast G2 environment)
- Fix: sometimes some scenes could not start (seen on PlugnCast G2 environment)
- Fix: issue regarding some devices which are not playing sometimes the right content at the right time
- Fix: restore support of PlugnCast G2 over FTP
- Fix: restore support remote media over FTP
- Fix: an error *Net timeout for download request* could remain in status.xml (and never be cancelled) in case the PlugnCast server was manually shut down for a while (PlugnCast G3)

##`2016-11-07` V3.12.37
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

##`2016-10-05` V3.12.35
>##### **IMPORTANT**
- In case Gekkota RT (V3.12.31, V3.12.32 or V3.12.33) has been installed on your MS-Windows XP or MS-Windows Vista, the Gekkota network interface should not work meaning that software upgrade can not be done remotely with your INNES CMS (Screen Composer G3, PlugnCast G2/G3). To workaround the issue, copy the Gekkota installer *gekkota_rt-nt5_ia32-setup-3.12.35.exe* on your MS-Windows XP (or MS-Windows Vista) desktop and execute it by double clicking on the file. Then please follow the different installation steps
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: Gekkota network interface was not working properly with version V3.12.31, V3.12.32 & 3.12.33 on system Windows XP/Vista (implying issue with software upgrade, test card, upnp)
- Fix: player could face issue to take a playout containing a file whose size is more than 2 GB

##`2016-08-09` V3.12.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Add preferences permitting to not display monitor-monitoring data *power-mode* and *input-source* in device-status (by example in case the screen is raising inconsistent data)
    - set the preference ```innes.app-profile.monitor-monitoring.i2c_1.subd15_1.*.protocol``` to ```none``` (instead of auto)
    - set the preference ```innes.app-profile.monitor-monitoring.i2c_1.hdmi_1.*.protocol``` to ```none``` (instead of auto)
    - set the preference ```innes.app-profile.monitor-monitoring.i2c_1.dvi_1.*.protocol``` to ```none``` (instead of auto)
- Fix: player reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, player could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: player could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised

##`2016-06-03` V3.12.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: inactivate monitor monitoring (user preferences by default)

##`2016-06-01` V3.12.31
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
	- Monitor monitoring DDC is activated by default. To inactivate it, set the preference ```innes.app-profile.monitor-monitoring.i2c_1.<your_connector>.authorized``` to false according to the used connector:
		- ```<your_connector>``` can be
			- dvi_1
			- hdmi_1
			- vga_1
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
        - COM1, COM2, ... (COM5, COM6, ...)
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
    - DDC in inactivated by default. For more information, refer to Gekkota AVCmd application note (002A or above)
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix: was not able to play remote media containing variable (PlugnCast G3 configuration)
- Fix: clean some inconsistent device status error linked to configuration script when MAC, UUID, Hostname is in CAPS (doubloons in device status)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix player reboot when trying to play vidéo with 4K resolution on PC equiped with some graphics card not supporting 4K resolution (for example: Model Matrox C680 PCIe x16)
- Fix: after installation on MS-Windows 10, could prevent to use some ```Windows Store``` applications (Edge, Calculator, ...)
- Fix: image with rotation of 90° was not displayed (Slide Maker / PlugnCast G3 configuration)
- Fix: reboot capability was not stopped while injection a configuration script (PlugnCast G2 configuration)
- Fix: Standby (or Wake up) state was not restored properly after
	- an injection of a script containing an error (PlugnCast G2 configuration)
	- a player reboot having ethernet cable unplugged (PlugnCast G2 configuration)
- Fix media rendering issue in a layer resolution width (or height) above 8192 pixels (screen wall configuration)
- Fix: service list TNT was erased after each software upgrade
- Fix: in case 2 screens configuration (using same graphics card), Gekkota was not displayed properly on one of the screen in case the second screen is set as main screen (menu Display > Personalized your screen)
- Fix directory opening issue when the directory name is containig special characters (WebUI)
- Fix MS-PowerPoint viewing issue, or unexpected decoding stopping issue for Virtual Desktop size upper than 4K (Screen Wall configuration)
-
##`2016-02-12` V3.12.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: unexpected error message *content temporarily unavailable* when playing a same PDF media several times

##`2016-02-03` V3.12.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of AVCmd TV standby/wake-up for 2 TV screens with rack-able PC system (internal serial bus, Gekkota_RT)
		- ```samsung_internal```, ```nec_internal```
- Add support of configuration script and gekkota software download capability from Web server http (PlugnCast G3 configuration)
- Add support of specific directory content update with external USB mass storage (advanced user only because requiring player manifest manual modification)
	- refer to Gekkota application note *USB injection*
- Change PDF viewer to increase PDF viewing efficiency
- Change: extend software decoder maximal resolution to 4K (5120 x 3200) instead of HD (1920 x 1080)
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
- Fix unexpected playout blocked on background (image or color) on some PC when trying to play some specific MS Powerpoint medias (rare)
- Fix rare unexpected powerpoint playback dead lock after a couple a hours
- Fix: Gekkota was stopped definitively when playing an HTML containing a infinite loop
- Fix continuous reboot when trying to start to play the H264 video accelerated by software on a specific platform (Directx 3D9 component not instaled properly)
	- system configuration: chipset Intel HD graphics + NVidia graphics card (ASUS tryptique, MS Windows 10)
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
- Add support of configuration file injection through USB with file naming ```configuration.js```
- Add support of configuration file injection through USB for identification method with file naming for ```<Mac>.js```, ```<UUID>.js```, ```<hostname>.configuration.js``` (in lower case as well as in upper case)
- Change user agent by replacing *Playzilla* by product name *Gekkota RT*. For example: ```Mozilla/5.0 (Windows NT 6.1; rv:14.0) Gecko/20150917 Firefox/14.0 GekkotaRT/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Improve error management when communicating with WebDAV client: CarotDAV, BitKinex, Windows
- Fix LDAP IDL error management in case URL validity issue
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected player crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix unexpected continuous reboot in case firmware (or patch) download in PlugnCast G3  configuration, especialy when the player time&date is earlier than serveur one
- Fix infinite black screen after the downloading of corrupted (or obsolete) firmware due to unexpected continuous reboot
- Fix device status purge status update (only when purge is really effective)
- Fix unexpected error screen (prompted every one minute) message when injecting autoconfiguration file not supported by player
- Fix release firmware critical issue when playout is playing some flash media like free feeds sytadin (could occurs more and less rapidly in case used flash media is printing much flash debug trace)
- Fix player crash when playing video (mp4 container) with fixed duration
- Fix automatic remote downloading issue in case target file in linked media is not the first one in the linked media list (PlugnCast G2 configuration)
- Fix publication issue when software release is programmed (PlugnCast G2 configuration without status server)
- Fix container playlist unexpected playback blocking when trying to play a missing media (PlugnCast G2 configuration)

##`2015-07-16` V3.12.22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix software upgrade with PlugnCast G3

##`2015-07-07` V3.12.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change information screen when media can not be played (small rectangle with transparence instead of full screen red cross)
	- ```content temporarily unavailable... (code <i>)```
   	- ```<path>/<medianame>.<extension>```
	- with
		- ```<i>``` = 1 in case the file is not present on the player
		- ```<i>``` = 0 for all other kind of error
- Change: restore compatibility with old API *logService.getLogger* and *log* (used in legacy configuration-by-script JavaScript file)
- Fix login and password was kept displayed in playback error information message for URI containing [login:password]
- Fix *content temporarily unavailable* message display in case [media path size + media name size] is over 260 caracters

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
- Change: remove compatibility with old API *logService.getLogger* and *log* (used in configuration-by-script JavaScript file)
- Change: xpf object id are entirely regenerated to warranty id unicity (PlugnCast G2 configuration)
- Fix memory leak when playing powerpoint with resize (DirectX 9, DirectX 10)
- Fix estimated available space in device-status (X8 ratio was estimated before)
- Fix unexpected PC reboot when preference ```innes.appli.crashhandler.action``` is set to ```None``` (now, in case crash, Gekkota simply stops)
- Fix black screen with some video when graphics acceleration is active (Giada ultra miniPC)
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

##`2015-05-18` V3.12.19
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to this version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add WebUI *Logs* hyperlink
- Reduce blanking audio (less than 0.5 sec) between 2 consecutive audio medias when situated in different opt-outs  (PlunCast G2 environment)
- Fix critical publication issue (which has been introduced in version 3.12.18)
- Fix crash when renaming file while filemonitor is active
- Fix rare crash when zapping between mp4 video (short playback duration ~ 4sec)
- Fix rare Gekkota crash after few hours when decoding different short video (mp4 container, 3MB size)
- Fix background color disappearing after a while (audio channel with default audio channel) (PlugnCast G2 environment)
- Fix media playback issue in playlist (or opt-out) after having emptied the playlist and filled it again with some others medias (PlugnCast G2 environment)
- Fix media transition which did not work anymore (PlunCast G2 environment)
- Fix playout deadlock while playing playlist whose one of media name is containing '{' (plugncast G2 environment)
- Fix red cross when playing media name containig '%' or '%de' (plugncast G2 environment)
- Fix black screen when playing opt-out with variable containing special characters like "é, è, ê, ë, à" (PlugnCast G2 environment)

##`2015-04-10` V3.12.18
>##### **IMPORTANT BEFORE DOWNGRADING**
- Especially for this version Gekkota 3.12.18, once installed, in PlugnCast G2 environment:
	- It is forbidden to downgrade to any previous version otherwise the publication function will not work definitively
	- In order to downgrade, upgrade first to Gekkota 3.12.19 (or above)
>##### **IMPORTANT BEFORE UPGRADING**
- In case software migration from Gekkota 3.12.18 to above version, the playout will be entirely redownloaded once (just after the player restart). Please wait the end of the playout download before doing any further software migration actions
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
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
- Fix installation issue with Samsung devices & OPS Plug-In Media Player with EWF activated on disk C:\

##`2015-02-17` V3.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of scripts 'js' in migration module (xpf g2 to xpf g3)
- Add support of SCXML
- Add support of Idle API (W3C listener)
- Add feature Fail Soft Mode
	- green led behavior (1X, 2X, 3X)
	- level1: automatical rescue purge content and "Fail Soft Mode" panel display
	- level2: restore user preferences restauration saved before Fail Soft Mode
- Fix WebUI display issue caused by multi Flash plugin versions bad management in Firefox35
- Fix media playback loopback issue with video within audio duration is longer than video duration
- Fix debug log name (playzilla.log)
- Fix random consecutive scanning failed (example of message *{nsiSystemAdapterDigitalTvReceiver.startScan} has failed*)
- Fix services list saving issue when list contains data services (example of message *Saving has failed*)

##`2015-02-03` V3.12.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix powerpoint playback issue

##`2015-1-09` V3.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of NEC, SAMSUNG MD control screen device through RS232 (based on EDID vendor identification)
- Add support of LED Q-Lite display panel through RS232
- Add support of DHCP timeout configuration in WebUI
- Add support of full WGT API (localization)
- Change product name "Playzilla-embedded" to "Gekkota_rt"
- Changed logo Playzilla to logo Gekkota
- Fix screen device brightness and wake up
- Fix black screen if network card is disconnected
- Fix decoding improvement for some HD or H264 video stream
- Fix firmware installation issue with http
- Fix random unworking UDP streaming after reboot
- Fix huge SWF loading issue

##`2014-12-05` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add "player graphics HW acceleration" detection in Gekkota_rt installer : the result of HW acceleration detection will overwrite the previous value of a V3.1x.yy version
- Add VC1 video decoder support
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add support playback of distant media (WGT/MAFF/PDF)
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change version of pdfjs viewer
- Change rename installer to gekkota_rt
- Change the video decoding framework to DirectX video acceleration
- Fix support http 300 error code
- Fix empty online cache with a new publication
- Fix installer name which was displaying 'nt5_ia32 nt_ia32'
- Fix take into account http code 300
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)

##`2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Add WebUI icons to hide/show the passwords
- Add WebUI DHCP timeout
- Add WebUI variables fields (usefull for PlugnCast G3 only)
- Change WebUI Gekkota product icon
- Fix UPNP auto-detection for Windows Player (auto-detection with Screen Composer) with 2 ETH cards
- Fix : for a situation where the player has a task which impose to reboot constantly, give some time to be able to publish an empty content and recover a normal situation
- Fix onthology display management (Power ON, power OFF, brightness) not functionnal on windows XP
- Fix WebUI : identification method saving (UUID/MAC/hostname)
- Fix WebUI : predefined overscan not properly centered in rotated mode
- Fix WebUI : button 'Validate' active in Maintenance/Preference, even without modification
- Fix distant pdf not played

##`2014-10-07` V3.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix support media with FTP distant ressource

##`2014-08-28` V3.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of .wgt file format

##`2014-08-13` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UPNP discovery
- Add new parameters for device-status
- Change version of pdfjs viewer
- Improves plugncast g2 mode functionnalities : can receive download and/or standby and/or reboot task without the need of having an active content update task
- Improves plugncast g2 mode functionnalities : task can be scheduled in time slot
- Fix all containers rules in plugncast g2 mode
- Fix upnp discovery trouble when WLAN active
- Fix webui in ipv6 through a proxy
- Fix a potential blocking case in plugncast g2 mode : use with a container using a variable with a value with special characters
- Fix a case of ScreenComposer bad publication
- Fix a crash with an ics using 'TZID'

##`2014-06-27` V3.10.45
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change preference ```innes.video-with-audio.skip-late-frames = true```
- Change default HW video acceleration preference ```hardware video acceleration = OFF```
- Fix delay between audio and video which could occur
- Fix a case in udp when video wasn't accepted

##`2014-05-20` V3.10.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix a case with a quicktime video container not supported

##`2014-04-30` V3.10.43
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- 2 Installer for Playzilla-embedded Windows XP (nt5_ia32) and Windows 7+ (nt_ia32 or boxpc win)
- Add the possibility to use flashvar in plugncast G2 mode, with variables resolution inside
- Add the possibility to inhibit keyboard and pointer, with 2 new preferences : ```innes.hid.keyboard-event.*.authorized``` and ```innes.hid.pointer-event.*. authorized```
- Add a new preference to show/hide the pointer cursor : ```innes.player.display.show-cursor```
- Add WebUI status server part (for plugncast G3)
- Add a new proxy type : automatic configuration script
- Add support for binary type certificates
- Add the possibility to use html5 offline cache
- Add the compatibility with .txt files in plugncast G2 mode
- Change rename the swf file of the UI
- Improves the cases of incomplete http bodies (rfc2616 section 4.4)
- Improves the management of playout disk full (gives always the possibility to publish a lighter content)
- Improve the following case : when network request was stopped, wsmanagement requests stayed accumulated, and when network come back, all the requests are outputted at the same time
- Improve the following case : when container is used, with a media synchronisation task, PROPFIND requests increase
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
- Fix in UI : WLAN tab inhibited
- Fix in UI : LAN and server tabs not accessible when a bluetooth peripheral is activated
- Fix trouble with V3.10.38 : the clean fonction of ScreenComposer didn't work anymore
- Fix a case with a quicktime video container : with MPEG2 audio, it could make reboot playzilla
- Fix UI (/.playout/) : certain files may be hidden if their extension is unknown
- Fix migration from G2 to G3 : proxy information wasn't propagated, licence may have troubles, and https shows the 443 port in the uri
- Fix a case with a quicktime video container abnormaly detected as not supported
- Fix use a default audio scene in plugncast G2 mode
- Fix a reboot with ics file with a event without DTSART nor DTEND
- Fix a blocking situation during the media playing : when the 'red cross' duration is higher than the duration of the media for which it has been detected
- Fix in plugncast G2 mode : when a media is downloaded and network connection interrupted, the media may be downloaded from its begining when the network come back
- Fix a potential trouble : if a file/directory is renammed with only a case change
- Fix a very rare trouble in plugncast G2 mode : if the server is switched off, it can block the playzilla until its next reboot (red circle)

##`2013-12-24` V3.10.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new feature in plugncast http mode : when player date is more than 24H delayed from server date, it automatically updates its date
- Add the possibility to interrupt current publication with a newer one
- Change WebUI remove the possibility to use ftp proxy when in plugncast ftp mode
- Change WebUI : Fix the possibility to use wrong adresses
- Fix some blocking cases in plugncast mode with disrupted network environment
- Fix following case in plugncast mode : some proxy can interrupt a media download without providing an error => test downloaded file size when it is possible, and download it again if necessary
- Fix following case in plugncast mode : some proxy can replace a media with an html file which tells that the uri is not reachable => checks validity of the control files for the player (especially 'player.xpf')
- Fix a blocking download in plugncast mode with containers
- Fix following case in plugncast mode : when changing a media while a player downloads it can affect the downloaded media => download it again if necessary
- Fix use with proxy with domain

##`2013-11-28` V3.10.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix blocking installation on windows XP
- Fix a crash during DVBT scan with incomplete services
- Fix a potential crash when a video is inserted in an html5 tag, and then removed from dom
- Fix a very rare trouble with flash : it may not been played correctly (red cross)

##`2013-11-12` V3.10.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add an html error when the maximum image surfaces has been reached
- Add a security for cryptographic database, to prevent it from being damaged after a power off. If corrupted, a message is displayed, and database is cleaned after the next reboot. You will loose all certificates added before.
- Fix audio files are played more rapidly when used inside a playfolder
- Change (optimise) time for the player to verify if any file has to be downloaded (PlugnCast G2 situation)
- Add protection to prevent any all filing of the file system in plugncast or usb injection modes
- Fix bad AAC audio rendering in some cases
- Fix bad detection of audio end (in case of playing multiple times)
- Fix a severe memory leak in case of plugncast G2 download, player could reboot during big downloads
- Fix use of jquery 1 and jquery 2

##`2013-10-17` V3.10.34_beta5
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the preference ```innes.avkit.audio-output-sample-rate``` (see after for details)
- Add NTLM support
- Add scenes overlaps in calendar G2 support
- Add *invalid licence* event in testcard mode
- Add WebUI Maintenance/Tools : support for adding certificates
- Add WebUI filtering of any extra folder when use ftp mode (suppress /plugnCast (plugncast G2 server condition)
- Change background color of default scene (serves as background color between scenes) (permits to replace the black)
- Change in containers: the following files are not considered as medias but as resources, so not played : .txt, .csv, .tsv, .xls, .xlsx
- Change visibility of Logs: now are visible in WebDav, use '/.log/' directory. You can upload logs activated and logs of the last delivery-software installation. The folder '/.log/.configuration'
  permits to activate some logs in playzilla (you need to use a client webdav, like bitkinex, to modify the file 'log4xpcom.xml')
- Change WebUI remove the part display, which doesn't work yet http mode was used before)
- Change Playzilla uses imsdk V2013-R2 for video decoding
- Improve verification speed of what files to download after publish in plugncast mode
- Fix: With ```video hw acceleration = ON```, only 1 video can be decoded at the same time. If you have to display more than 1, use software video decoding
- Fix with video hwaccelerator activated, some videos where not decoded with old graphic drivers
- Fix memory leak when downloading many files in plugncast G2 mode
- Fix a blocking case at the end of certain videos
- Fix some MPEG-PS videos which were not decoded
- Fix video file which size is 0 were detected as wrong after 30 seconds
- Fix usb injector in plugncast mode which didn't finish the copy of the files
- Fix download blocked if the character ';' is used in plugncast ftp mode
- Fix use in MeetingRomm model when attendee have accentuation
- Fix flash with linked medias which doesn't retrieve its linked information when it is renammed as .sWf for example (fix case sensitivity)
- Fix a rare blocking case in plugncast mode, when republishing several times
- Fix performance troubles in plugncast ftp mode
- Fix installer XP, 2 preferences were not visible ('innes.hwacceleration' for example)

##`2013-07-31` V3.10.32_beta8
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add AVI container support
- Add configuration-by-script feature, in USB mode only : see respective documentation to obtain more information on it
- Add pixel ratio management : videos on which pixels are not square are correctly rendered
- Add interlaced videos detection and apply a deinterlace filter when necessary
- Add ACC-HE V2 audio support
- Add improvments for audio management, especially when audio driver isn't available all the time
- Add MPEG2 audio decoder
- Add language localization. Default playzilla language = english
- Add udp support
- Add a new preference for defining the comportment when audio/video is not realtime (see details after)
- Change the max time value on which a javascript is declared as broken to 60seconds. If it occurs, a system message is displayed and the player reboots
- Change increase internal pdf viewer version
- Change rename 'plugin-container' process to 'playzilla-container'
- Change (optimization) duration of download after a publication in http mode, especially when there is nothing new to download and use of very big containers
- Change decrease watchdog of the main loop to 3 minutes
- Improve robustness and performance with MPEG-TS flows (udp), and for long duration
- Fix incorrect default base-uri for flash medias
- Fix : when a video is not real time, some images are let passing instead of blocking totally the video. If there is no audio associated to the video, the behaviour is not the same : all the video is displayed, even if not real time
- Fix decode video even if audio format isn't supported
- Fix: Plugncast old scrolling text if forced to fixed text; use the maff model instead, for best performances
- Fix MPEG4.2 with B-frames incorrectly rendered
- Fix a blocking case with plugncast G2 : when network connection is closed but ethernet link is OK
- Fix a blocking case with plugncast G2 : when empty containers are downloaded
- Fix in random mode : share the random information between scenes
- Fix use of a file which has several consecutive space characters (in plugncast G2 mode only)
- Fix end of audio : read all the samples
- Fix a rare blocking situation at the end of a video
- Fix fixed duration media which didn't stop after a failing previous media
- Fix use with webdav IIS server (in plugncast G3 mode)
- Fix several memory leaks
- Fix hardware video decoding for HD4000-based platforms
- Fix use with webdav IIS server
- test mode resizeable, which permits to see all the characters (especially in rotation mode)
- Fix audio desynchronisation after a MPEG-TS flow cut
- Fix a blocking situation when using play 2x a video
- Fix memory leaks with MPEG4 container
- Fix AAC decoder trouble in repeat mode
- Fix use with containers
- Fix trouble when using a schedule between 0h00 and 23h59 each day
- Fix mp3 decoder with low bit rate audios and mono audios
- Fix a trouble on certain web sites

##`2013-02-11` V3.10.28_beta29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add hardware accelerated video support (based on intel imsdk). Please be sure that your video/audio and graphics drivers are up-to-date
- Add DVB-T support with standard DVB-T usb dongle (DVB-T HD channels are temporarily blocked)
- Add MPEG2 audio decoder
- Add deinterlace filter (only on TS container for now)
- Add language localization. Default playzilla language = english
- Add WebUI possibility to wiew the webui in different languages (tab on the right up corner)
- Add WebUI network settings
- Change enable firmware injection during test mode
- Change UPNP modify presentation url with '/.admin' at the end
- Change WebUI output tab (add resolution)
- Change WebUI : hostname instead of equipment name
- Improve scrolling text (use only the maff model for it, not a .txt file)
- Improve robustness with interrupted datas flows (dvb-t or udp)
- Fix accept firmware which platform name is 'box win32'
- Fix end of videos which could be too fast (could cut around 0.5seconds of audio/video)
- Fix some troubles with videos
- Fix with plugncast background color when there is nothing to play which were the last scene background color instead of black
- Fix AAC decoder trouble in repeat mode
- Fix use with containers
- Fix some blocking video
- Fix several blocking cases with use on plugncast
- Fix trouble when using a schedule between 0h00 and 23h59 each day
- Fix mp3 decoder with low bit rate audios and mono audios
- Fix a trouble on certain web sites
- Fix background color between scenes in plugncast use

##`2012-11-16` V3.10.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add udp support. Considering that MPEG2 audio isn't supported yet, general cases can only work without audio
- Fix transparency for floating zones with PlugnCast
- Fix url support with PlugnCast
- Fix variable support with PlugnCast
- Fix scrolling text
- Fix a memory leak while downloading
- Fix impossible to add content with usb dongle after canceling publishing with Screen Composer

##`2012-11-09` V3.10.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with PlugnCast V2.xx.yy
- Change upgrade video decoding library version : imsdk 2012R3
- Change WebUI change icons and logos
- Change WebUI change the selection for g2 compatibility in the tab 'server'

##`2012-10-09` V3.10.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the possibility to remove the red cross in case of media trouble : for that, modify the preference 'innes.xpf.media-error-duration', which defines the duration of the red cross. If you set this preference to the value '0', the red cross will never appear.
- Change the information message when there is no content
- Fix migration from G2 to G3 on platforms with ewf : the licence code was lost. Please verify on WebUI that all your parameters are correctly set after this release.
- Fix powerpoint not working on certain windows embedded

##`2012-09-21` V3.10.22 beta22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add audio of video
- Add a file watcher
- Fix enable crossdomain load when source is FILE
- Fix standby mode on newer SAMSUNG models
- Fix Text maff models used in infinite mode
- Fix regression with usb partial injector

##`2012-08-09` V3.10.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version (video decode is done in software), performances are very dependant on the platform used

