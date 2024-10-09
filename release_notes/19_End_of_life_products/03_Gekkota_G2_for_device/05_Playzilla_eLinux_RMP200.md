# Playzilla eLinux RMP200
*RELEASE NOTE*

##`2015-03-03` V2.50.73 [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-rmp200/playzilla-rmp200-setup-2.50.73.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
>##### **COMPATIBILITIES**
- PlugnCast Server/Studio V2.50.x (or above)
- Screen Composer V2.10.10 (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Getting started (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-rmp200/screen-composer-getting-started-manual-with-playzilla-eLinux-09A_fr.pdf)
- Log activation (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-rmp200/Playzilla-log-activation-001A_en.pdf)

#OLD VERSIONS HISTORY
***********************************************************************

##`2014-09-01` V2.50.72
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix a crash with an ics using 'TZID'
- Fix a possible blocking situation linked to memory leak
- Fix a very rare trouble in plugncast G2 mode : if the server is switched off, it can block the playzilla until its next reboot (red circle)

##`2013-07-08` V2.50.70
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix possible video stop playing in rebooting

##`2012-09-24` V2.50.69
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Checkdisk during each boot. (The green led flashes quickly during checkdisk). DO NOT switch off the platform during that time
- Remove telnet and ftp
- Fix DHCP not working

##`2011-07-05` V2.50.68
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- RMP200 can't work anymore without sd-card. If sd-card fails, it plays nothing, but firmware release is still possible
- Improve ntp
- Decrease timeout from 50s to 20s while reading a file
- Fix a blocking when reading a very low size file
- Fix potential internal blocking while parsing xml file

##`2011-04-12` V2.50.65
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Container with random : the same container can be used several times in the same scene, the random will be share between all containers
- Fix a trouble with excluded dates in the calendar
- Fix PlugnCast download impossible if player has lost its date (Jan. 2002)
- Fix potential trouble with watchdog (never occured)
- Fix video medias were not played when used inside a container

##`2011-03-16` V2.50.63
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix trouble which occurs when using MAFF archive (needed for MAFF templates)
- Fix NTP adjust mode used to correct the low variation of time between the player and the NTP server

##`2011-03-02` V2.50.62
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add SAMSUNG resolutions
- Correct audio volume
- Fix MP3 audio files cut some seconds before their end
- Fix memory leak when using container
- Fix reboot while using audio file different from .mp3
- Fix slight cut in audio playing when video ends
- Fix possible video overflow when using it inside a zone
- Fix no more sound with a very short mp3 file
- Fix left/right possible inversion with audio files
- Fix displaying bad graphics during boot on RMD2xx
- Fix start of certain videos which was shortened
- Add rs232 commands

##`2010-11-10` V2.50.50
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PlugnCast firmware downloader used in Studio
- Player hostname is sent to DHCP server
- Add the possibility to change IGMP version from version 3 to 2 in the IHM
- Add the possibility to choose DNS auto when the IP adress is static
- Display the Playzilla version when reading player information by UPnP
- Add a protection for firmware installation
- Display only the video output types and the resolution in the IHM that can be supported by the player
- Fix file sizes > 2Go (now, 16Go is the maximum supported size for one file on this platform)
- Fix rare trouble with Studio, when status keeps blocked to "player.xpf 100%"
- Fix pdf and MAFF support in containers

##`2010-06-03` V2.50.27
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Text zone support, only fixed opaque text for the moment.
- No scroll bars on HTML
- Know issues which will be fixed in the future release version :
	- Scrolling text zone support
	- floating zones above video
	- Audio synchronised with video
	- other audio formats supported
- The complete list of RS232 executables is:
	```nec_np3150_on,nec_np3150_off :
	toshiba_tdpt420_on,toshiba_tdpt420_off :
	eiki_xb42_on,eiki_xb42_off_c01,eiki_xb42_off_c02 :
	mitsubishi_xl6x00_on,mitsubishi_xl6x00_off :
	lge_m1_on,lge_m1_off :
	toshiba_m1_on,toshiba_m1_off :
	hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d :
	sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi```

##`2010-05-26` V2.50.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add 2.5G functionnalities (2.5 Generation) :
	- SMIL3 standard, with intrinsic medias duration and xpath
- Add pdf support
- Add excel2pdf applet support
- Add audio channel support
- NTLM server authentification
- Video type : new name "Digital+RGBHV on DVI-I (HDMI+VGA)"
- Add a new RGBHV mode "1200x768 60Hz" equivalent to 1366x768 mode
- following executable programs added to control an external product by RS232 (can be called by a task) :
	```hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d,sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi```
- Hardware modification to accept 44.1KHz audio and to add hardware watchdog
- Fix rare communication blocking
- Some rare troubles fixed with frm releases
- With certain sizes of zones inside the scene, scroll bars could appear => fixed

