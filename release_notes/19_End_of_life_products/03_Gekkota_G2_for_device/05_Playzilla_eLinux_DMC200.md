# Playzilla eLinux boxpc DMC200
*RELEASE NOTE*

## `2015-03-03` V2.50.91 [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-dmc200/playzilla-dmc200-setup-2.50.91.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of model MAFF 'Texte défilant horizontal'
- Fix extremely rare Black screen with 'Rien a diffuser', after playing an html media with a pop-up
- Fix issue in calendar with "until" function (player was playing the event one day too much in configuration "0h to 0h" or "all day long")
- Fix a rare case where plugncast download is blocked
- Fix a reboot with an ics file using 'TZID'
- Fix a reboot with ics file with a event without DTSART nor DTEND
>##### **COMPATIBILITIES**
- PlugnCast Server/Studio V2.50.x can only be used on V2.50.x players
- Screen Composer V2.10.10 (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Installation Guide (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-dmc200/DMC200-guide-installation-011C_fr.pdf)
- USB stick loading (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-dmc200/playzilla-chargement-par-clé-usb-003A_fr.pdf)
- Log activation (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/playzilla-g2-dmc200/Playzilla-log-activation-001A_en.pdf)
#### **NOTE TO CHANGE VIDEO DEINTERLACED MODE**
- deinterlace mode is controlled by the preference ```innes.video.deinterlace-mode``` (Web UI / Maintenance / Preferences)
- deinterlace mode is active only with software decoding. If you use hardware video accelerator, the preference has no effect
- Possible values :
```
 'blend' : default value.
 'weave', 'discard', 'bob', 'linear' : new values added on V2.50.82
```
- When a wrong value is set , ```discard``` value is used.
#### **NOTE TO USE HARDWARE VIDEO ACCELARATOR**
- The Hardware video accelerator is not activated by default in DMC200. It can be activated bygoing into Web UI / Maintenance / Preferences
- Modify ```innes.hwacceleration.video``` and ```innes.hwacceleration.deinterlace``` preferences to - Possible values :
```
 'true'
 'false'
```
#### **RESTRICTION WHEN USING HARDWARE VIDEO ACCELARATOR**
- Only 2 videos are synched with vertical synchro. If you use more than 2, the smallest ones may have a tearing effect
- Don't use videos which are more than 25fps. If you use such videos, all the videos may be slow. To minimize this effect, use a 60Hz display mode instead of 50Hz
- If ```innes.hwacceleration.deinterlace = true```, the hardware deinterlace filter is used. If so, never use floating zone above this video. If you do so, the video will not be shown properly
- If ```innes.hwacceleration.deinterlace = false```, no deinterlace filter is used. If so, you may see interlace artifacts (depending on the video), but you can use a floating zone above
- Some video formats are not supported by hardware acceletor. The software decoder will be automatically used instead
- The following formats are not supported by hardware accelerator : MPEG1, Windows Media Video V8, all audios formats
- The DVB reception use only software decoder
- In rare cases, some video may end before their end (especially when using many videos in the same time). A reboot may occur too
#### **LIST OF SUPPORTED EXTENSIONS**
- List of known video extension files :
	.mpg, .mpeg, .m2v, .vob, .m1s, .m2p, .m2t
	.mp4, .m4v
    .avi, .mov
	.vlc
    .wmv
    .divx, .divx-pcm, .divx-rpcm
    .flv, .f4v

- List of known audio extension files :
    .mp3, .m2a, .ac3
    .mp4, .m4a
	.vlc
    .wma
#### **LIST OF RS232 EXECUTABLES**
	```nec_np3150_on,nec_np3150_off : on/off for NEC NP3150
	toshiba_tdpt420_on,toshiba_tdpt420_off : on/off for TOSHIBA TDP-T420 series
	eiki_xb42_on,eiki_xb42_off_c01,eiki_xb42_off_c02 : on/quick poweroff/off for EIKI XB42
	mitsubishi_xl6x00_on,mitsubishi_xl6x00_off : on/off for MITSUBISHI XL6600U/XL6500U/XL6600LU/XL6500LU
	lge_m1_on,lge_m1_off : on/off for LGE 19LU40/50, 22LU40/50, 26LU50, 19/22/26/32/37/42LH20, 32/37/42/47LH30/40/50/70, 32/37/42LF25, 32/37/42/47LH49, 32/37/42LG21, 50/60PS70/80
					  19/22/26/32LD3***, 32/37/42/47LD4***, 32/42/46/52/60LD5***, 19/22/26LE3***, 32/37/42/47/55LE5***
	toshiba_m1_on,toshiba_m1_off : on/off for TOSHIBA type AV/RV625D
	hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d : on/off/select HDMI/select DVI-D for HITACHI CP-X10000/CP-WX11000/CP-SX12000
	sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi : on/off/select HDMI for SANYO PLC-WXU700
	samsung_m1_on,samsung_m1_off,samsung_m1_dvi,samsung_m1_dtv,samsung_m1_pc,samsung_m1_hdmi : on/off and select DVI/DTV/VGA/HDMI source for SAMSUNG SyncMaster 400CXn-2, 460CXn-2, 400DXn-2, 460DXn-2, 700DXn-2, 820DXn-2, 400UXn-2, 460UXn-2
	philips_m1_standby,philips_m1_on,philips_m1_off,philips_m1_hdmi : Standby/on/off and select HDMI for PHILIPS which support PHILIPS DICP protocol
	sony_m1_on sony_m1_off sony_m1_standby_on sony_m1_standby_off sony_m1_tv sony_m1_video1 ony_m1_video2 sony_m1_video3 sony_m1_component1 sony_m1_component2 sony_m1_component3 sony_m1_hdmi1 sony_m1_hdmi2 sony_m1_hdmi3 sony_m1_hdmi4 sony_m1_hdmi5 : Standby/on/off, select input source for SONY BRAVIA
	proto2000_video1to3, proto2000_video2to3, proto2000_video3to3 and proto2000_video3to2 : protocol 2000 to switch input 1 to output 3, in2 to out3, in3 to out3 and in3 to out2, sharp_m1_off sharp_m1_on sharp_m1_tv sharp_m1_dtv sharp_m1_ext1 sharp_m1_ext2 sharp_m1_ext3 sharp_m1_hdmi1 sharp_m1_hdmi2 sharp_m1_hdmi3 sharp_m1_hdmi4 : off/on/select input source for SHARP LC-40LE924E,LC-40LE924RU,LC-40LE824E,LC-40LE824RU,LC-40LU824E,LC-40LU824RU,LC-46LE824E,LC-46LE824RU,LC-46LU824E,LC-46LU824RU,LC-40LE814E,LC-40LE814RU,LC-46LE814E,LC-46LE814RU,LC-40LX814E,LC-46LX814E,     panasonic_m1_on,panasonic_m1_off,panasonic_m1_slot1,panasonic_m1_slot2,panasonic_m1_slot3,panasonic_m1_pc1,panasonic_m1_slot1a,panasonic_m1_slot1b,panasonic_m1_slot2a,panasonic_m1_slot2b : off/on/select input source for PANASONIC monitor TH50PH11E
	nudam_m2_relay_1_on nudam_m2_relay_1_off nudam_m2_relay_2_on nudam_m2_relay_2_off nudam_m2_relay_3_on nudam_m2_relay_3_off nudam_m2_relay_4_on nudam_m2_relay_4_off nudam_m2_relay_all_00 nudam_m2_relay_all_01 nudam_m2_relay_all_02 nudam_m2_relay_all_03 nudam_m2_relay_all_04 nudam_m2_relay_all_05 nudam_m2_relay_all_06 nudam_m2_relay_all_07 nudam_m2_relay_all_08 nudam_m2_relay_all_09 nudam_m2_relay_all_0a nudam_m2_relay_all_0b nudam_m2_relay_all_0c nudam_m2_relay_all_0d nudam_m2_relay_all_0e nudam_m2_relay_all_0f : off/on digital output for nudam module type 6050/6052/6053/6054/6056/6058/6060/6063, with module adress = 2
	nec_m1_on nec_m1_off nec_m1_vga nec_m1_rgb_hv nec_m1_dvi nec_m1_hdmi1 nec_m1_hdmi2 nec_m1_video1 nec_m1_video2 nec_m1_svideo nec_m1_dvd_hd1 nec_m1_dvd_hd2 : off/on/select input source for NEC V321, V461, LCD4215(R)
	optoma_m1_on optoma_m1_off optoma_m1_hdmi optoma_m1_vga1 optoma_m1_vga2 optoma_m1_vga1_component optoma_m1_svideo optoma_m1_video optoma_m1_vga2_scart optoma_m1_vga2_component : off/on/select input source for Optoma EW762
	panasonic_m2_on panasonic_m2_off panasonic_m2_vid panasonic_m2_svd panasonic_m2_rg1 panasonic_m2_rg2 panasonic_m2_dvi panasonic_m2_hd1 panasonic_m2_sct panasonic_m2_au1_sd1 panasonic_m2_au1_sd2 panasonic_m2_au2_sd1 panasonic_m2_au2_sd2 : off/on/select input source for PANASONIC PT-EX16KE
    philips_m2_on philips_m2_off philips_m2_hdmi1 philips_m2_hdmi2 philips_m2_vga philips_m2_dvi : on/off and select input source for PHILIPS which support PHILIPS DICP protocol, with id=1```


# OLD VERSIONS HISTORY
***********************************************************************

## `2014-02-27` V2.50.89
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the possibility to downgrade version from V3.xx.yy to V2.50.89

## `2013-12-04` V2.50.88
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added to control an external product by RS232 (can be called by a task) :
  ```sony_m1_video2 sony_m1_video3 sony_m1_component1 sony_m1_component2 sony_m1_component3 sony_m1_hdmi1 sony_m1_hdmi2 sony_m1_hdmi3 sony_m1_hdmi4 sony_m1_hdmi5```

## `2013-08-06` V2.50.87
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added to control an external product by RS232 (can be called by a task) :
  ```philips_m2_on philips_m2_off philips_m2_hdmi1 philips_m2_hdmi2 philips_m2_vga philips_m2_dvi```

## `2013-06-19` V2.50.86
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new feature : when LAN and WWAN (or WLAN) are connected in the same time, you can define that you want to use LAN as the default interface (and deactivate WWAN/WLAN).
>##### **WARNING **
- If there is a failure in the internet connection, the player automatically switches on WWAN/WLAN connection. This feature is surveyed each 15 min. It is tuned with kdb variables :
	- system/network/failover1 which can be none (default), WWAN or WLAN : first interface to connect to if the LAN is failing
	- system/network/failover2 which can be none (default), WWAN or WLAN : second interface to connect to if the <system/network/failover1> is failing.

## `2013-06-18` V2.50.86_beta2
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added to control an external product by RS232 (can be called by a task) :
  ```nec_m1_on nec_m1_off nec_m1_vga nec_m1_rgb_hv nec_m1_dvi nec_m1_hdmi1 nec_m1_hdmi2 nec_m1_video1 nec_m1_video2 nec_m1_svideo nec_m1_dvd_hd1 nec_m1_dvd_hd2,
  optoma_m1_on optoma_m1_off optoma_m1_hdmi optoma_m1_vga1 optoma_m1_vga2 optoma_m1_vga1_component optoma_m1_svideo optoma_m1_video optoma_m1_vga2_scart optoma_m1_vga2_component
  panasonic_m2_on panasonic_m2_off panasonic_m2_vid panasonic_m2_svd panasonic_m2_rg1 panasonic_m2_rg2 panasonic_m2_dvi panasonic_m2_hd1 panasonic_m2_sct panasonic_m2_au1_sd1 panasonic_m2_au1_sd2 panasonic_m2_au2_sd1 panasonic_m2_au2_sd2```

## `2013-03-04` V2.50.85
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added to control an external product by RS232 (can be called by a task) :
  ```nudam_m2_relay_1_on nudam_m2_relay_1_off nudam_m2_relay_2_on nudam_m2_relay_2_off nudam_m2_relay_3_on nudam_m2_relay_3_off nudam_m2_relay_4_on nudam_m2_relay_4_off nudam_m2_relay_all_00 nudam_m2_relay_all_01 nudam_m2_relay_all_02 nudam_m2_relay_all_03 nudam_m2_relay_all_04 nudam_m2_relay_all_05 nudam_m2_relay_all_06 nudam_m2_relay_all_07 nudam_m2_relay_all_08 nudam_m2_relay_all_09 nudam_m2_relay_all_0a nudam_m2_relay_all_0b nudam_m2_relay_all_0c nudam_m2_relay_all_0d nudam_m2_relay_all_0e nudam_m2_relay_all_0f```

## `2012-12-11` V2.50.84
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new output mode : "1280x720 60Hz SONY", for SONY displays in digital input

## `2012-11-28` V2.50.83
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add SD-CARD support for medias storage
- following executable programs added to control an external product by RS232 (can be called by a task) :
```panasonic_m1_on,panasonic_m1_off,panasonic_m1_slot1,panasonic_m1_slot2,panasonic_m1_slot3,panasonic_m1_pc1,panasonic_m1_slot1a,panasonic_m1_slot1b,panasonic_m1_slot2a,panasonic_m1_slot2b
- Fix scrolling text which become very slow on extremely rare cases```

## `2012-09-18` V2.50.82
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a new preference to disable ftp : ‘innes.xpf.downloader-plugnCast.useFtp'
- Add a new preference 'innes.video.deinterlace-mode' to select video deinterlace mode (see notes on 'how to change video deinterlace mode')
- Add partial usb injection. please refer to the separated manual for this feature ('Playzilla - chargement par clé usb 003A_fr.pdf')
- Add compatibility to install bios release patch
- Fix can't use pptx files inside containers
- following executable programs added to control an external product by RS232 (can be called by a task) :
  sharp_m1_off,sharp_m1_on,sharp_m1_tv,sharp_m1_dtv,sharp_m1_ext1,sharp_m1_ext2,sharp_m1_ext3,sharp_m1_hdmi1,sharp_m1_hdmi2,sharp_m1_hdmi3,sharp_m1_hdmi4,samsung_m1_on,samsung_m1_off

## `2011-12-20` V2.50.79
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix a trouble with 2.50.78, only with some internal module types (Toradex rev.C only) : DVI output may not functionning

## `2011-12-07` V2.50.78
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix a trouble with RS232 feature, only with some internal module types (Toradex rev.C only)

## `2011-11-23` V2.50.77
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Check file system on each boot. During check, the green led flashes (0.5seconds ON / 0.5seconds OFF)
- Add hardware watchdog for rebooting some platforms which may fail booting after BIOS (Toradex modules only)
- 4 buttons remote feature : not functionnal

## `2011-10-11` V2.50.76
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Remove telnet and ftp server
- Add 4 buttons remote feature
- following executable programs added to control an external product by RS232 (can be called by a task) :
	```proto2000_video1to3, proto2000_video2to3, proto2000_video3to3 and proto2000_video3to2```
- Fix USB dongle function : correct bad estimation of available size; if no more place, retrieve the previous playout when removing the dongle
- Fix USB dongle function : on rare cases, previous fonts were not removed, so copy was impossible
- Fix on very rare cases : display becomes black => the watchdog feature will reboot the player

## `2011-07-13` V2.50.75
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add update by USB dongle function : please refer to the separated manual for this feature
- Add new output mode : 640x480 60Hz
- Add new modes for Wifi express-card option : WPA-PSK and WPA2-PSK
- Add secured transfers mode (https and ftps)
- Add a new DVB-T express-card option model (hauppauge WinTV-HVR1400)
- WebUI : Add new parameters for NTP server (timeout + maximum tries number)

## `2011-06-20` V2.50.69
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new specific output modes : 128x96, 112x96, 96x96
- GPIO internal feature redesigned, to support gpio-brightness function (all GPIO features in the past become incompatible with this version, they need to be updated)
- Flash supports baseuri parameter
- Fix some video format not well decoded while using hardware video acceleration

## `2011-05-31` V2.50.68
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add CVBS input function with ITV541 express card option
- Modify NTP server : the date adjustment is done only at the start of player, but it tries several times
- Modify random mode with several containers in the same scene (the random is shared between all the same containers)
- Add 3 new output modes : 128x96, 112x96, 96x96
- Fix regression on DVB-T input
- Fix one case of video hardware decoding
- Fix some troubles on exception dates

## `2011-03-29` V2.50.64
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add RS232 executables for SONY displays (see list under)
- Fix using NTP server with 3G module option
- Fix regression on composite input
- Fix a trouble using NTP server : the slight date adjustment were not functionning
- Fix memory leak while using container
- Fix PlugnCast download impossible if player has lost its date (Jan. 2002)
- Fix potential trouble with watchdog (never occured)
- Fix a rare trouble : video is blocked, while using DVB input on the same time

## `2011-02-16` V2.50.61
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add DVB Receiver function with ITV540 express card option
- Fix a potential trouble detected in V2.50.60 while releasing the player with HDD option
- Fix in web UI : in 'preferences' section, integer values greater than 10 were unable to modify

## `2011-01-24` V2.50.60
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- VLC version upgraded to V1.1
- Add hardware video accelerator (see details under)
- Add DMD210 support
- Flash background color is not replaced anymore by background color of the scene. It will be replaceable in a future Studio/Screen composer version, flash per flash
- Web UI : Add WWAN option, correct a protection when modifying gateway, and a visualization trouble when using filters in Preferences
- Fix Memory leak when launching executable

## `2010-11-24` V2.50.50
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PlugnCast firmware downloader used in Studio
- Player hostname is sent to DHCP server
- Display the Playzilla version when reading player information by UPnP
- Flash player version = 10.1.85.3
- Add the possibility to choose DNS auto when the IP adress is static
>##### **WARNING**
- When you install a V2.50.60 with video hardware acceleration activated, and reinstall a V2.50.50 after, it reboots the application. Unactivate video hardware acceleration before.

## `2010-11-15` V2.50.44
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Flash player version = 10.1.85.3
- following executable programs added to control an external product by RS232 (can be called by a task) :
	```philips_m1_standby,philips_m1_on,philips_m1_off,philips_m1_hdmi```
- Support new devices input types, like 3D barcode scanner
- Replaces the red square void message in Studio by "Rien à diffuser"
- Web UI modifications : add IGMP version, add protections on mismatch IP adresses
- Fix pdf and MAFF support in containers

## `2010-08-20` V2.50.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added to control an external product by RS232 (can be called by a task) :
	```hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d,sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi```
- Fix rare trouble with Studio, when status keeps blocked to "player.xpf 100%"
- Fix pdf and MAFF support in containers
- The complete list of RS232 executables is :
	```nec_np3150_on,nec_np3150_off : on/off for NEC NP3150
	toshiba_tdpt420_on,toshiba_tdpt420_off : on/off for TOSHIBA TDP-T420 series
	eiki_xb42_on,eiki_xb42_off_c01,eiki_xb42_off_c02 : on/quick poweroff/off for EIKI XB42
	mitsubishi_xl6x00_on,mitsubishi_xl6x00_off : on/off for MITSUBISHI XL6600U/XL6500U/XL6600LU/XL6500LU
	lge_m1_on,lge_m1_off : on/off for LGE 19LU40/50, 22LU40/50, 26LU50, 19/22/26/32/37/42LH20, 32/37/42/47LH30/40/50/70, 32/37/42LF25, 32/37/42/47LH49, 32/37/42LG21, 50/60PS70/80
	toshiba_m1_on,toshiba_m1_off : on/off for TOSHIBA type AV/RV625D
	hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d : on/off/select HDMI/select DVI-D for HITACHI CP-X10000/CP-WX11000/CP-SX12000
	sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi : on/off/select HDMI for SANYO PLC-WXU700
	samsung_m1_dvi samsung_m1_dtv samsung_m1_pc samsung_m1_hdmi : select DVI/DTV/VGA/HDMI source for SAMSUNG SyncMaster 400CXn-2, 460CXn-2, 400DXn-2, 460DXn-2, 700DXn-2, 820DXn-2, 400UXn-2, 460UXn-2```

## `2010-08-20` V2.50.40
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- New flash player version : V10.1
- The complete list of RS232 executables is :
	```nec_np3150_on,nec_np3150_off : on/off for NEC NP3150
	toshiba_tdpt420_on,toshiba_tdpt420_off : on/off for TOSHIBA TDP-T420 series
	eiki_xb42_on,eiki_xb42_off_c01,eiki_xb42_off_c02 : on/quick poweroff/off for EIKI XB42
	mitsubishi_xl6x00_on,mitsubishi_xl6x00_off : on/off for MITSUBISHI XL6600U/XL6500U/XL6600LU/XL6500LU
	lge_m1_on,lge_m1_off : on/off for LGE 19LU40/50, 22LU40/50, 26LU50, 19/22/26/32/37/42LH20, 32/37/42/47LH30/40/50/70, 32/37/42LF25, 32/37/42/47LH49, 32/37/42LG21, 50/60PS70/80
	toshiba_m1_on,toshiba_m1_off : on/off for TOSHIBA type AV/RV625D
	hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d : on/off/select HDMI/select DVI-D for HITACHI CP-X10000/CP-WX11000/CP-SX12000
	sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi : on/off/select HDMI for SANYO PLC-WXU700```

## `2010-07-08` V2.50.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- MAF archive support
- all scroll bars suppressed
- Flash background color is defined in the Studio (background color of the scene)
- Suppress LVDS modes (used only for DMD215)
- decrease voltage DC offset on the VGA output to its minimum value
- Fix fonts used in powerpoint with 'italic' or 'bold' in the middle of the font name not supported
- Fix caracters overlap with some powerpoints
- Fix file sizes > 2Go (now, 16Go is the maximum supported size for one file on this platform)

## `2010-06-01` V2.50.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Suppress tearing effect on videos without any floating zone above
- Light optimisation on rendering powerpoint
- Fix blocking at the end of video, especially when used with GPIOs scripts
- The complete list of RS232 executables is :
	```nec_np3150_on,nec_np3150_off : on/off for NEC NP3150
	toshiba_tdpt420_on,toshiba_tdpt420_off : on/off for TOSHIBA TDP-T420 series
	eiki_xb42_on,eiki_xb42_off_c01,eiki_xb42_off_c02 : on/quick poweroff/off for EIKI XB42
	mitsubishi_xl6x00_on,mitsubishi_xl6x00_off : on/off for MITSUBISHI XL6600U/XL6500U/XL6600LU/XL6500LU
	lge_m1_on,lge_m1_off : on/off for LGE 19LU40/50, 22LU40/50, 26LU50, 19/22/26/32/37/42LH20, 32/37/42/47LH30/40/50/70, 32/37/42LF25, 32/37/42/47LH49, 32/37/42LG21, 50/60PS70/80
	toshiba_m1_on,toshiba_m1_off : on/off for TOSHIBA type AV/RV625D
	hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d : on/off/select HDMI/select DVI-D for HITACHI CP-X10000/CP-WX11000/CP-SX12000
	sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi : on/off/select HDMI for SANYO PLC-WXU700```

## `2010-05-27` V2.50.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add excel2pdf applet support
- Powerpoint : timeout 1 min (instead of 20s)
- Video type : new name "Digital+RGBHV on DVI-I (HDMI+VGA)"
- following executable programs added to control an external product by RS232 (can be called by a task) :
	```hitachi_m1_on,hitachi_m1_off,hitachi_m1_hdmi,hitachi_m1_dvi-d,sanyo_m1_on,sanyo_m1_off,sanyo_m1_hdmi```

## `2010-05-03` V2.50.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- NTLM server authentification
- With certain sizes of zones inside the scene, scroll bars could appear => fixed
- Graphics modes reworked to correct clock drift on some modes (especially 1280x720 modes) => Some modes which could not work on some displays (mostly with HDMI input) should work now
- Fix a trouble which can prevent the player from starting (green led still on)
- Add functionnality to accept a BIOS release with a patch firmware

## `2010-04-19` V2.50.22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added (can be called by a task) :
	```toshiba_m1_on, toshiba_m1_off```
- delete and remplace lg_on, lg_off executable by lge_m1_on, lge_m1_off
- Powerpoint improvements : release viewer version
- Fix shift in overscan mode
- Fix normal mode 24 bits instead of 18 bits

## `2010-03-30` V2.50.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added (can be called by a task) :
	```lg_on, lg_off```
- DMD215 : Add panel support LG LM150X08

## `2010-03-22` V2.50.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add pdf support
- Add audio channel support
- Fix a download trouble which was rebooting the player
- Fix scrolling text pass to black background color when starting
- Fix text right aligned cuts 1 or 2 letters + text alignment improvments
- Fix text with interlines inserted not well rendered in fixed text
- Fix audio zone sound could be interleaved with video zone sound in very rare cases
- Fix Volume scale is not linear (0 to 100%) but in dB, so no more sound under 60%
- Fix in very rare cases, player can freeze => it will reboot instead

## `2010-02-25` V2.50.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Powerpoint improvements : better support of pptx, ppsx, possibility to play several powerpoints in the same time
- Fix black screen + player blocked due to powerpoint
- Fix centered text improperly centered
- Fix GPIOs stability in the time (need hardware update)

## `2010-01-25` V2.50.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix GPIO5 state not restored after Off/On (when used in output mode)

## `2010-01-20` V2.50.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Wifi option support
- Add 3 new executable programs  (can be called by a task) :
	- set_gpio, get_gpio, config_gpio
	- How to use these programs :
		```"config_gpio <number> <action>"
		"set_gpio <number> <value>"
		"get_gpio <number>"
		with	<number> = GPIO number (1 to 5)
				<action> = GPIO direction setting (you need to do it only once), value = 'input' or 'output'
				<value> = Value to set to GPIO (0 or 1)```
- Improve visibility during boot process
- Fix possible release process blocking
- Fix block with message "critical temperature" (false temperature information)
- Fix rare cases for which text could loose some characters
- Fix following case : when use a zone not on top-left, with popewpoint in intrinsic time, a black zone may appear on top-left when powerpoint disappears

## `2009-12-09` V2.50.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add 2.5G functionnalities (2.5 Generation) :
	- SMIL3 standard, with intrinsic medias duration and xpath
- Add AVinput support (with DVBT-CVBS option), use it with network favourites in the Studio : "urn:innes:owl:avinput:1"
- Add 3G modem option support
- Fix rare communication blocking
- Some rare troubles fixed with frm releases

## `2009-10-30` V2.12.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add 2 new executable programs (can be called by a task) :
	```mitsubishi_xl6x00_off, mitsubishi_xl6x00_on```
- When more than one powerpoint is used, it may not play all powerpoints (black zone) => only one powerpoint can be played at a time

## `2009-10-20` V2.12.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add NTP support (if enabled, the boot phase is increased by 4 to 10 seconds)
- Video performance improvments
- Powerpoint performance improvments
- Fix some rare cases of blocking during firmware update

## `2009-10-06` V2.12.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add hardware watchdog

## `2009-09-11` V2.12.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- following executable programs added (can be called by a task) :
	```eiki_xb42_off_c01, eiki_xb42_off_c02, eiki_xb42_on,
	nec_np3150_off, nec_np3150_on,
	toshiba_tdpt420_off, toshiba_tdpt420_on```
- HDD option support on DMC200
- Scrolling text with long text makes player reboot => fixed
- White zones appear before each new zone creation => fixed
- Powerpoint may freeze the DMC200 => fixed

## `2009-09-02` V2.12.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add define exeption for proxy server (IHM Web)

## `2009-08-14` V2.12.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- A scene with video or powerpoint may freeze after a certain amount of time => fixed
- Audio zone doesn't work properly => fixed

## `2009-07-20` V2.12.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Test pattern becomes black (display off) after more than 3hours => fixed
- Reboot on DMC200 may fail after a firmware release => fixed
- Video becomes slow after a certain amount of time => fixed
- Add user and password for proxy server HTTP and FTP
- Audio zone may not work while playing with powerpoint => fixed
- When playing 2 videos in the same time, the size of one may be wrong => fixed
- A scene with video may freeze after a long time => fixed with watchdog

## `2009-07-20` V2.12.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Text scrolling fixed
- VGA shaking and sync polarities fixed
- Boot time improved
- Add define proxy server HTTP and FTP

## `2009-07-10` V2.12.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- MAJOR RELEASE : Complete redesign of graphics core for better performances (24 bits colors, rotation, graphics and video accelerations)
- V2.12.10 is functionally equivalent to V2.11.21

## `2009-06-26` V2.11.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new platform : MPDSBC16. Improve USB stick automatic installation.
- Add new platform : DMC200 (V2.11.18).

## `2009-06-24` V2.11.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new monitoring messages (downloading date, current scene playing, channel). These messages can be viewed in window "operation in progress", environment "network" of the Studio.

## `2009-06-04` V2.11.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix downloader rare blocking

## `2009-05-20` V2.11.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Screen Composer support
- Improved Powerpoint load time
- Watchdog : new calculation of available memory
- "mms://" streams work instantly, and not only after 2 min
- ".frm" file suppressed if not valid during a release process

## `2009-04-09` V2.11.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- IHM : overscan works correctly and add test pattern activation
- Images are shown in one time (jpg were shown in several times before)
- Fonts dynamic loading, improved font management
- freeze correction in vertical mode
- Add ACPI management for AOPEN platforms for better temperature management

## `2009-04-06` V2.11.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix : communications between server and players were blocked after a server bad stop
- binary execution in a task
- Add "nec_np3150_on", "nec_np3150_off", "toshiba_tdpt420_on" and "toshiba_tdpt420_off" binaries
- Text scroller : italic and bold fonts support
- Graphic driver : clock and synchro signals improved

## `2009-03-23` V2.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Graphic driver : 1920x1080 mode in DVI for DSA3400 fixed

## `2009-03-19` V2.11.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix : video playback can freeze when playing streaming on a dreambox and input channel is changed
- Graphic driver : 1920x1080 mode in DVI for DSA3400 temporary fixed

## `2009-03-09` V2.11.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Audio zone priority over audio of a video media
- Text scroller : empty text error fixed
- Some flash10 blocks fixed
- Add a button press detection on RS232 port
- video horizontal defaults fixed
- Add support "rtp://" and "mmsh://" streams
- Add Test pattern and overscan (not in IHM yet)
- Add support to pptx and some ppsx Powerpoint formats
- Fix downloader blocking during publishing

## `2009-02-09` V2.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- General speed improvement
- Audio zone possible
- Fix display cut in 4 when using pixel_depth=32 option
- Player is stopped during display power off

## `2009-02-07` V2.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support to .MOV, .WMV
- Add flash10 version support
- Add support to local html files
- Add watchdog for memory and playzilla troubles monitoring

## `2009-02-05` V2.10.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add Composite and S-VIDEO support on AOPEN MP945
- Add sound on AOPEN MP945 and DSA3400
