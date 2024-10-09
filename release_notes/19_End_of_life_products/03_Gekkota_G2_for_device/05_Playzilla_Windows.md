# Playzilla Windows
*RELEASE NOTE*

## `2014-08-20` V2.50.90 [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-win32/playzilla-box%20win32-setup-2.50.90.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Installer accepts firmware whose platform_label is 'nt5_ia32', so upgrade to G3 version is possible for windows XP
- Add support to model MAFF 'Texte défilant horizontal'
- Fix PDF viewer which could create a temporary file at each view of a pdf (depending on its embedded fonts). So, the 'C:/Windows/temp' was growing in the time
- Fix a case when powerpoint makes appear the windows task bar (seen on Windows7). Keyboard focus is only taken if powerpoint is viewed in interactive mode
- Fix a rare case where plugncast download is blocked
- Fix a reboot with an ics file using 'TZID'
- Fix a reboot with ics file with a event without DTSART nor DTEND
>##### **COMPATIBILITIES**
- PlugnCast Server/Studio V2.50.x can only be used on V2.50.x players
- Screen Composer V2.10.10 minimum (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Stick USB loading (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-win32/Playzilla-chargement-par-clé-usb-003A_fr.pdf)
- Multiple screen (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-win32/playzilla-windows-prise-en-charge-des-écrans-multiples.pdf)
#### **NOTE FOR NEC DISPLAY: STANDBY WITH EMBEDDED OPS MODULE**
- When Playzilla enters in standby mode, the module powers OFF the display, so impossible to automatically standby off. To workaround this expected behaviour, go to OSD menu and set to ON the variable ```option power``` (OSD/ADVANCED/OPTION SETTINGS/OPTION POWER)
#### **IMPORTANT NOTE FOR SAMSUNG MODELS**
- In order to make work properly the standby on Samsung with an embedded PC (internal or external), you must connect your 'MagicInfo Out' output to 'MagicInfo in' HDMI input of display
This connection must be done BEFORE the power on
- Using VGA input + RS232 make failed the standby mode functionality automatically (contrary to 'MagicInfo' connection)
#### **PLAYZILLA INSTALLATION ON EXTERNAL USB DRIVE**
- If playzilla need to be installed on an external USB drive, do the following step:
	- copy the installer on the main drive
	- open a command prompt (execute 'cmd')
	- execute '<installer> -datadir <data_dest>'
	- for example ```playzilla-box win32-setup-2.50.81 -datadir E:```
- Backward: this installation way implies to update manually any future version
#### **IMPORTANT NOTE EWF INACTIVATED BEFORE INSTALLATION**
- Playzilla always active EWF after its installation is performed. In case EWF was inactive before instalaltion, restore manually the EWF.
- To manually deactivate EWF manager, open a command prompt (execute 'cmd'), and type :
  ```ewfmgr c: -commitanddisable -live```

# OLD VERSIONS HISTORY
***********************************************************************

## `2013-04-03` V2.50.84
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Installer accepts firmware which platform_label is 'nt_ia32'
- Installer manage correctly LUA (Limited User Account) for windows 7 and vista
- Fix trouble with the new preference to disable ftp : ‘innes.xpf.downloader-plugnCast.useFtp'

## `2012-09-18` V2.50.83
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new preference to disable ftp : ‘innes.xpf.downloader-plugnCast.useFtp'
- Increase timeout in case of no-data reception (can occur if a proxy implies a very long delay)
- Fix standby mode on newer SAMSUNG models

## `2012-03-14` V2.50.82
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add partial usb injection. please refer to the separated manual for this feature
- Fix can't use pptx files inside containers
- Put task bar on auto hide mode
- Fix Standby on NEC displays with embedded platform (validated with OPS modules, on windows 7) : specific standby when a NEC display is detected (by RS232)
- Fix installer : remove wbs2 link on startup menu
- Fix installer : remove IIS service on Windows Seven
- Fix installer : disable balloon tips
- Fix installer : when we try to install on a platform with 1 partition protected (by ewf), it doesn't install anymore
- Fix on old XP : PowerpointViewer is now installed

## `2011-10-19` V2.50.81
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- USB dongle function : copy only the usefull content, and not all the usb dongle content
- USB dongle function : for firmware update, ignore all executables with not a valid name; if many firmware are on the dongle, use
  only the one with the correct platform name, and if none is adapted, displays an error message
- Installer with autorun dongle : displays a message to remove the dongle before launching installation (to prevent from twice installations)
- Installer : Remove windows notifications (BallonsTip), configure firewall on windows7, remove floating language bar
- Fix when windows platform has a ewf manager : Installs the data on the first internal disk which is not protected. If impossible, displays an error message. Conserve the ewf real status.

## `2011-10-19` V2.50.76
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add 4 buttons remote feature
- Fix standby mode with samsung series2, series3 and windows 7 platforms
- Fix USB dongle function : correct bad estimation of available size; if no more place, retrieve the previous playout when removing the dongle
- Remove the directx library for rendering videos (fix a potential trouble : videos become black after several days of working)
- Fix setup trouble on samsung series3 : remove correctly magicinfo launching
- Fix USB dongle function : on rare cases, previous fonts were not removed, so copy was impossible
- Fix on very rare cases : display becomes black => the watchdog feature will reboot the player

## `2011-09-24` V2.50.75
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add update by USB dongle function : please refer to the separated manual for this feature
- Add secured transfers mode (https and ftps)
- Fix in very rares cases troubles while viewing images and html after network deconnexions

## `2011-06-23` V2.50.70
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PlugnCast firmware downloader used in Studio
- MAFF archive support
- all scroll bars suppressed
- Flash player version = 10.1
- Replaces the red square void message in Studio by "Rien à diffuser"
- Take into account the background color redefined for flash medias
- Fix file sizes > 2Go
- Fix rare trouble with Studio, when status keeps blocked to "player.xpf 100%"
- Fix Memory leak when launching executable
- Fix in web UI : in 'preferences' section, integer values greater than 10 were unable to modify
- Fix memory leak while using container
- Fix PlugnCast download impossible if player has lost its date (Jan. 2002)
- Modify random mode with several containers in the same scene (the random is shared between all the same containers)
- Fix some troubles on exception dates

## `2010-07-05` V2.50.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add multi screen support
- Add excel2pdf applet support
- NTLM server authentification
- With certain sizes of zones inside the scene, scroll bars could appear => fixed
- Powerpoint improvements : release viewer version (install service pack, if possible)

## `2010-03-26` V2.50.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add pdf support
- Fix rare cases some fonts are not rendered

## `2009-12-09` V2.50.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add 2.5G functionnalities (2.5 Generation) :
	- SMIL3 standard, with intrinsic medias duration and xpath
- Fix rare communication blocking
- Know issues which will be fixed in the future release version :
	- In rare cases, some fonts are not rendered

## `2009-08-31` V2.11.22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add define exeption for proxy server

## `2009-07-23` V2.11.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add define user and password for proxy server HTTP and FTP

## `2009-07-16` V2.11.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add define proxy server HTTP and FTP
- Add functions restart or reboot when Playzilla crashed (xulrunner.exe)

## `2009-06-24` V2.11.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new monitoring messages (downloading date, current scene playing, channel). These messages can be viewed in window "operation in progress", environment "network" of the Studio.

## `2009-06-04` V2.11.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix downloader rare blocking

## `2009-05-20` V2.11.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Screen Composer support
- Window message suppression "The plugin performed an illegal operation. You are strongly advised to restart the computer"
- Fix : some fonts automatic clean could imply font degradation

## `2009-04-09` V2.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- IHM : overscan works correctly and add test pattern activation
- Images are shown in one time (jpg were shown in several times before)
- Fonts dynamic loading, improved font management
- binary execution in a task
- Several Powerpoint zones can be shown in the same time
- Fix : communications between server and players were blocked after a server bad stop
- Text scroller : italic and bold fonts support

## `2009-03-19` V2.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- IHM : Add Date and Clock
- Fix : player freeze after a certain amount of images display

## `2009-03-09` V2.11.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Audio zone priority over audio of a video media
- Text scroller : empty text error fixed
- Add Test pattern and overscan (not in IHM yet)
- Fix downloader blocking during publishing
- Fix a player freeze on eeebox
- Fix installer on samsung : some samsung needed to stop the player before installing
- Fix installer embedded-windows : tune the display power off time to prevent misfunctionment during display deactivation

## `2009-02-06` V2.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Playzilla is stopped during display power off

## `2009-02-02` V2.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix priority messages which could be masked
- Delete F1 and F2 keys function
- Fix flash rendering in transparent mode

## `2009-01-23` V2.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support to .MOV, .WMV
- Add flash10 version support
- Add support to local html files
- Fix installer embedded-windows :
	- windows automatic updates deactivation
	- ASUS update deactivation (eeebox)
	- MagicinfoPro deactivation (samsung)
	- Powerpoint licence automatic validation
- Fix a freeze of flash zone when used with video
