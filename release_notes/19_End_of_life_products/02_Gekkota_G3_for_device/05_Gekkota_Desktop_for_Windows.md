# Gekkota Desktop
*RELEASE NOTE*

## `2019-03-08` V3.12.58 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-desktop/gekkota_desktop-nt_ia32-setup-3.12.58.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a video over UDP could not be played in case using a *DME204* encoder-streamer with the audio inactivated
>##### **COMPATIBILITIES**
- MS-Windows platform
- Not compatible with PlugnCast

#INFORMATION
***********************************************************************
#### **SLIDEMAKER**
- Fix: playing SlideMaker media containing objects with fading (inside zone with transition between media activated) makes reboot the player each time the media is played

#### **SUPPORTED MEDIAS DOCUMENTATION**
- Gekkota supported media and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-supported-medias-and-performances.pdf)

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2018-03-19` V3.12.54 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-desktop/gekkota_desktop-nt_ia32-setup-3.12.54.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: MS-PowerPoint media playback could lead to the display of the message *content temporarily unavailable* since a recent MS-Windows 10 system update
- Fix: the content could be not displayed in full screen after having unplugged then plugged again HDMI cable (MS-Windows 10)

## `2017-10-03` V3.12.47
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: some MS-PowerPoint medias was not played properly
- Fix: some video could not be played sometimes (while they were properly decoded in a previous version)

## `2017-03-09` V3.12.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: files whose path name length was 260 characters was not supported
- Fix: directories whose path name length was between 247 and 259 characters was not supported

## `2017-02-24` V3.12.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore support remote media over FTP

## `2016-11-07` V3.12.37
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of "download directory" hyperlink (in WebUI) permitting to save the playout as tar gz archive
	- To decompress the archive, use one of the softwares
		- WinRar (V5.40 beta1 or above) or
		- 7Zip (V9.5 or above)
- Fix: was not able to get the new content of image media updated remotely every 'n' minute from a WebDAV server
- Fix: in some case, some image of WebUI could not be displayed after having pressed F5 key in Mozilla Firefox Web browser with preference ```network.http.pipelining = true``` activated

## `2016-08-09` V3.12.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of HTML DOM (Document Object Model) permitting to modify dynamically HTML page element with JavaScript file
- Fix: reboot when using SignMeeting with email (when accessing to navigator.messaging.email.accounts) (especially SignMeeting configuration)
- Fix: after sending email, could reboot in case bad smtp configuration (due to wrong error management)
- Fix: in some rare case, a calendar event could never end
- Fix: could reboot after a publication while decoding video media (Wmv container)
- Fix: in case a variable (inside an URI) can not be resolved, a media downloading error is raised
- Fix: some video could be displayed in 4-3 aspect ratio instead 16-9 aspect ratio

## `2016-06-03` V3.12.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: set default value for the preference ```innes.app-profile.monitor-monitoring.i2c_1.<your_connector>.authorized``` to false

## `2016-06-01` V3.12.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix (workaround) in some very rare cases, a multimedia sequence could not keep looping (never ending without any reason) (seen in PlugnCast G2 configuration)
- Fix PDF viewing issue in interactive mode and duration per page is different of zero
- Fix crash when trying to play vidéo with 4K resolution on PC equiped with some graphics card not supporting 4K resolution (for example: Model Matrox C680 PCIe x16)
- Fix: after installation on Windows 10, could prevent to use some ```Windows Store``` applications (Edge, Calculator, ...)
- Fix media rendering issue in a layer resolution width (or height) above 8192 pixels (screen wall configuration)
- Fix: in case 2 screens configuration (using same graphics card), Gekkota was not displayed in one of the screen in case the second screen is set as main screen (menu Display > Personalized your screen)
- Fix MS-PowerPoint viewing issue, or unexpected decoding stopping issue for Virtual Desktop size upper than 4K (Screen Wall configuration)

## `2016-02-12` V3.12.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: unexpected error message *content temporarily unavailable* when playing a same PDF media several times

## `2016-02-03` V3.12.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: extend software decoder maximal resolution to 4K (5120 x 3200) instead of HD (1920 x 1080)
- Change PDF viewer to increase PDF viewing efficiency
- Fix rare unexpected powerpoint playback dead lock after a couple a hours
- Fix: Gekkota was stopped definitively when playing an HTML containing a infinite loop
- Fix continuous reboot when trying to start to play the H264 video accelerated by software on a specific platform (Directx 3D9 component not installed properly)
	- system configuration: chipset Intel HD graphics + NVidia graphics card (ASUS tryptique, MS Windows 10)
- Fix unexpected playout blocked on background (image or color) on some PC when trying to play some specific MS Powerpoint medias (rare)
- Fix: some characters or some image was not porperly dispayed for some PDF medias
- Fix delay could be noticed between flash media when played inside playfolder with a rule (opt-out)
- Fix video decoding issue when video is coming from Androïd (Mov container) (video containing altitude/longitude/latitude)
- Fix remote resource was not downloaded properly the secondth time when injecting USB content twice
- Fix: in some case, video whose start-up is programmed at fix time in XPF could start with a delay of 1 second because calendar tolerence error is one second (player synchronization)
- Fix player crash when using LDAP request with null search filter
- Fix: playout did not start when remote resource becomes available (after playout publishing with remote resource not available)

## `2015-09-25` V3.12.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change user agent by replacing *Playzilla* by product name *Gekkota Desktop*. For example: ```Mozilla/5.0 (Windows NT 6.2; WOW64; rv:14.0) Gecko/20150917 GekkotaDesktop/3.12.24```
- Change: close automatically socket when html document is closed (IDL UDP socket multicast)
- Fix LDAP IDL error management in case URL validity issue
- Fix *content temporarily unavailable* displayed a couple of time (few minutes) when decoding stream on UDP in case encoder/streamer restart (indeed decoding could stop due to old timestamp wrong management)
- Fix unexpected crash in case a video transition while decoding UDP stream (mp4 container, full HD)
- Fix player crash when playing video (mp4 container) with fixed duration
## `2015-07-07` V3.12.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change information screen when media can not be played (small rectangle with transparence instead of full screen red cross)
	- ```content temporarily unavailable... (code <i>)```
   	- ```<path>/<medianame>.<extension>```
	- with
		- ```<i>``` = 1 in case the file is not present on the player
		- ```<i>``` = 0 for all other kind of error
- Change: restore compatibility with old API *logService.getLogger* and *log* (used in legacy auto-configuration scripts)
- Fix *content temporarily unavailable* message display in case [media path size + media name size] is over 260 caracters
- Fix login and password was kept displayed in playback error information message for URI containing [login:password]

## `2015-06-29` V3.12.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket multicast IDL support
- Add timezone IDL support
- Add LDAP IDL support
- Fix memory leak when playing powerpoint with resize (DirectX 9, DirectX 10)
- Fix estimated available space in device-status (X8 ratio was estimated before)
- Fix unexpected PC reboot when preference ```innes.appli.crashhandler.action``` is set to ```None``` (now, in case crash, Gekkota simply stops)
- Fix black screen with some video when graphics acceleration is active (Giada ultra miniPC)
- Fix issue preventing Gekkota-desktop to work properly when launched automatically after its installation on operating system
- Fix some red cross display when decoding Mpeg2-ps video media (mpg container)
- Fix black screen issue when playing URI MAFF distant (read from Web server) (cross domain communication was bad managed)
- Fix black screen issue in case some of resources are inserted in a playfolder (please refer to gekkota-supported-medias-and-performances.pdf)
- Fix black screen issue when playing URI playback (PDF,WGT) from distant Web server requiring authentication
- Fix authentication with Proxy Squid (XHR mode)
- Fix PDF and Powerpoint interactivity: possibility to reach page number with keypad
- Fix random playout stop just after midnight (in case daily event whose slot is from midnight to midnight in calendar)
- Fix potential blocking issue while email sending (threadsafe)

## `2015-05-18` V3.12.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix rare crash when zapping between mp4 video (short playback duration ~ 4sec)
- Fix rare Gekkota crash after few hours when decoding different short video (mp4 container, 3MB size)

## `2015-04-10` V3.12.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add security to not crash when playing Meeting Room Summarization Google Calendar after few seconds

## `2015-03-06` V3.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix jerky video (when  played inside HTML) after one loopback
- Fix red cross displayed when HTML was containing non-existing resource

## `2015-02-17` V3.12.15
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

## `2015-02-03` V3.12.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix powerpoint playback issue

## `2015-1-09` V3.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of full WGT API (localization)
- Change logo Playzilla to logo Gekkota
- Change interface product name "Playzilla-desktop" to "Gekkota_os"
- Fix black screen if network card is disconnected
- Fix decoding improvement for some HD or H264 video stream
- Fix random unworking UDP streaming after reboot
- Fix huge SWF loading issue

## `2014-12-05` V3.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add VC1 video decoder support
- Add Microsoft SQL Server WebIdl
- Add MySQL WebIdl
- Add support playback of distant media (WGT/MAFF/PDF)
- Add an extra watchdog detection for some very rare cases of 'black screen'
- Change rename installer to gekkota_desktop
- Change the video decoding framework to DirectX video acceleration
- Change version of pdfjs viewer
- Fix empty online cache with a new publication
- Fix udp not correctly working with ts paquets size of different values (not all = 7x188 bytes)

## `2014-10-31` V3.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add UDP web socket IDL support
- Fix URI with distant PDF

## `2014-10-07` V3.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of .wgt file format

## `2014-08-13` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- New version of pdfjs viewer
- Fix a crash with an ics using 'TZID'

## `2014-05-20` V3.10.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the possibility to use flashvar in plugncast G2 mode, with variables resolution inside
- Add the possibility to inhibit keyboard and pointer, with new preferences :
        - ```innes.hid.keyboard-event.*.authorized```
		- ```innes.hid.pointer-event.*. authorized```
- Add a new preference to show/hide the pointer cursor : 'innes.player.display.show-cursor'
- Add a new proxy type : automatic configuration script
- Add support for binary type certificates
- Add the possibility to use html5 offline cache
- Add the compatibility with .txt files in plugncast G2 mode
- Add WebUI status server part (for plugncast G3)
- Change rename the swf file of the WebUI
- Change: 2 Installer for Playzilla-embedded Windows XP (nt5_ia32) and Windows 7+ (nt_ia32 or boxpc win)
- Improve the cases of incomplete http bodies (rfc2616 section 4.4)
- Improve the management of playout disk full (gives always the possibility to publish a lighter content)
- Improve the following case : when network request was stopped, wsmanagement requests stayed accumulated, and when network come back, all the requests are outputted at the same time
- Improve the following case : when container is used, with a media synchronisation task, PROPFIND requests increase
- Fix a case with a quicktime video container not supported
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
- Fix preference 'innes.video-with-audio.skip-late-frames' to true

## `2013-11-28` V3.10.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix blocks installation on windows XP
- Fix a potential crash when a video is inserted in an html5 tag, and then removed from dom
- Fix a very rare trouble with flash : it may not been played correctly (red cross)

## `2013-11-12` V3.10.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add an html error when the maximum image surfaces has been reached
- Change: audio files are played more rapidly when used inside a playfolder
- Fix bad AAC audio rendering in some cases
- Fix bad detection of audio end (in case of playing multiple times)
- Fix use of jquery 1 and jquery 2

## `2013-10-17` V3.10.34_beta5
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the preference 'innes.avkit.audio-output-sample-rate' (see after for details)
- Add NTLM support
- Change: Playzilla uses imsdk V2013-R2 for video decoding
- Change in containers: the following files are not considered as medias but as resources, so not played : .txt, .csv, .tsv, .xls, .xlsx
- Fix: with video hwaccelerator activated, only 1 video can be decoded at the same time. If you have to display more than 1, use software video decoding****
- Fix with video hwaccelerator activated, some videos where not decoded with old graphic drivers
- Fix a blocking case at the end of certain videos
- Fix some MPEG-PS videos which were not decoded
- Fix video file which size is 0 were detected as wrong after 30 seconds
- Fix flash with linked medias which doesn't retrieve its linked information when it is renammed as .sWf for example (fix case sensitivity)

## `2013-07-31` V3.10.32_beta8
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add AVI container support
- Add pixel ratio management : videos on which pixels are not square are correctly rendered
- Add interlaced videos detection and apply a deinterlace filter when necessary
- Add ACC-HE V2 audio support
- Change increase internal pdf viewer version
- Change rename 'plugin-container' process to 'playzilla-container'
- Change decrease watchdog of the main loop to 3 minutes
- Change the max time value on which a javascript is declared as broken to 60seconds. If it occurs, a system message is displayed.
- Improve robustness and performance with MPEG-TS flows (udp), and for long duration
- Fix: When a video is not real time, some images are let passing instead of blocking totally the video. If there is no audio associated to the video, the behaviour is not the same : all the video is displayed, even if not real time
- Fix a rare blocking situation at the end of a video
- Fix fixed duration media which didn't stop after a failing previous media

## `2013-05-17` V3.10.31_beta9
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Increase internal pdf viewer version
- Add improvments for audio management, especially when audio driver isn't available all the time
- Rename 'plugin-container' process to 'playzilla-container'
- Add a new preference for defining the comportment when audio/video is not realtime (see details after)
- Fix fixed duration media which didn't stop after a failing previous media
- Fix hardware video decoding for HD4000-based platforms
- Fix memory leaks

## `2013-04-11` V3.10.30_beta3
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the max time value on which a javascript is declared as broken to 60seconds. If it occurs, a system message is displayed and the player reboots
- Improve robustness and performance with MPEG-TS flows (udp), and for long duration
- Fix: when a video is not real time, some images are let passing instead of blocking totally the video. If there is no audio associated to the video, the behaviour is not the same : all the video is displayed, even if not real time
- Fix use with webdav IIS server
- Fix several memory leaks
- Fix end of audio : read all the samples
- Fix a rare blocking situation at the end of a video
- Fix regression with default playzilla language = english

## `2013-03-06` V3.10.28_beta36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Test mode resizeable, which permits to see all the characters (especially in rotation mode)
- Improve robustness with MPEG-TS flows (udp)
- Fix tearing effect on videos
- Fix some memory leak
- Fix a rare blocking situation at the end of a video
- Fix audio desynchronisation after a MPEG-TS flow cut
- Fix a blocking situation when using play 2x a video

## `2013-02-21` V3.10.28_beta32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Improve scrolling text (use only the maff model for it, not a .txt file)
- Add MPEG2 audio decoder
- Add UDP support
- Add deinterlace filter (only on TS container for now)
- Add language localization. Default playzilla language = english
- Add force decode video even if audio format isn't supported
- Change increase internal pdf viewer version
- Improve robustness with interrupted datas flows (udp)
- Fix memory leaks with MPEG4 container
- Fix end of videos which could be too fast (could cut around 0.5seconds of audio/video)
- Fix some troubles with videos
- Fix AAC decoder trouble in repeat mode
- Fix use with containers
- Fix some blocking video
- Fix trouble when using a schedule between 0h00 and 23h59 each day
- Fix mp3 decoder with low bit rate audios and mono audios
- Fix a trouble on certain web sites
- Fix scrolling text

## `2012-11-09` V3.10.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change upgrade video decoding library version : imsdk 2012R3
- Change icons and logos

## `2012-10-10` V3.10.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix powerpoint not working on certain windows embedded
- Change video decode is done in software (hardware acceleration will be done in a future version)

## `2012-09-21` V3.10.22 beta 22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a file watcher
- Fix Text maff models used in infinite mode
- Fix mp3 file alone or in indefinite play blocks after 1 pass
- Fix MPEG2-PS which blocks at the end

## `2012-09-17` V3.10.22 beta 20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add video's audio support
- Enable crossdomain load when source is FILE
- Fix Trouble while using powerpoint, on platforms which have office2010
- Fix schedule not correctly followed

## `2012-08-06` V3.10.20 beta 11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version

