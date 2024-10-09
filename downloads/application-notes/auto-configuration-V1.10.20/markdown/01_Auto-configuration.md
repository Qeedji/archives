# Auto-configuration script
*RELEASE NOTE*


##`2016-05-27` V1.10.20 [Download](application-notes/auto-configuration-V1.10.20/example_000000000000-V1.10.20.js){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Set connector for audio output (for SMA300 only)
	- setAudioOutput
		- JACK35
		- HDMI 
>##### **COMPATIBILITIES**
- Gekkota V3.12.26 (or later)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**  
- Auto-configuration user guide (EN) [Download](application-notes/auto-configuration-V1.10.18/How-to-use-auto-configuration-feature-application-note-002A_en.pdf){.auth-downloads}
- Auto-configuration user guide (FR) [Download](application-notes/auto-configuration-V1.10.18/Utilisation-de-la-fonction-d'auto-configuration-Note-d'application-002A_fr.pdf){.auth-downloads}
#### **NOTE FOR COLOR AJUSTMENT**
- Using wrongly the function setColorAdjustment may result in black screen forever (example when opacity max = 60 and opacity = 90) 
#### **INSTALLATION ERROR MESSAGE WHEN INJECTING SCRIPT JS WITH GEKKOTA 3.12.20 (and above)**  
- *Installation error* message can pop with Gekkota 3.12.20 (and above) in case script installation because legacy script JS is containing obsolete command line making it not compatible with this version. 
- 2 possible ways permit to solve the issue     
	- Either make compatible your own configuration script js (ex: *000000000000.js*) by opening it    
		- replacing ```var logger = logService.getLogger("autoconf");``` by ```var logger = new Logger("autoconf");```
		- replacing ```log("Autoconf start");``` by ```logger.debug("Autoconf start");```
	- Or download the script JS 1.10.17 at the top of this page and configure it again for your needs  
		
#OLD VERSIONS HISTORY
***********************************************************************

##`2016-01-11` V1.10.19 [Download](application-notes/auto-configuration-V1.10.19/example_000000000000-V1.10.19.js){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- NTP
	- *setClockSyncEnableNtp*
		- enables the clock synchronization with a NTP server 
			- NTP need to be configured properly first
	- *setClockSyncDisable*
		- disables the clock synchronization of the player
- Set color adjusment over HDMI
	- *setColorAdjustment* 
		- player HDMI display index 
		- brightness
		- brightness max
		- contrast
		- contrast max
		- opacity 
		- opacity max
		- gamma
		- gamma max
		- color temperature
		- grey filter inactivate/activate 
		- grey filter ITURBT
			- "BT.601-7"
			- "BT.709-6"
- AVcmd 
	- *AvCmdGetProfile*
		- uart
		- tcp/ip
	- *AvCmdInstallProtocol*
		- TVDeviceName
		- TVDeviceProtocol 
	- *AvCmdActivateProfile*
	 	- uart
		- tcp/ip
	- Note: add custom protocol example (TVDeviceName, TVDeviceProtocol)

##`2016-01-06` V1.10.18 [Download](application-notes/auto-configuration-V1.10.18/example_000000000000-V1.10.18.js){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add functions
	- *setStatusServer* (and *disableStatusServer*)
		- permits to set WebUI server parameters for software and configuration file http download
	- *setAddonServer* (and *disableAddonServer*)
		- permits to set WebUI server parameters for device status http download

##`2015-06-30` V1.10.17 [Download](technical-notes/auto-configuration-V1.10.17/example_000000000000.js){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change new logger API to match Gekkota 3.12.20 (and above)   

##`2015-03-03` V1.10.16 [Download](technical-notes/auto-configuration-V1.10.16/example_000000000000.js){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add function
	- *setOverscan*   

##`2014-11-11` V1.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Update documentation (002A) 
- Add english version

##`2014-01-11` V1.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add hostname
- Add functions linked to 
	- audio 
	- proxy


