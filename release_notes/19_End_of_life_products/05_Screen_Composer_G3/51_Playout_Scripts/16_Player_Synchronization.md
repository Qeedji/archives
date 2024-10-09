# Player synchronization
*RELEASE NOTE*

- The goal of this application note is to explain how to configure the SMA300 players to synchronize eachother, so that they can play the same video content exactly at the same time even when
	- one of the player reboots or
	- one of the player content is updated

## `2016-08-09` V1.10.13 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/player-synchronization/xpfSyncManager-V1.10.13.js)
>##### **IMPORTANT**
- Previous script may be not compatible so please take care to update all the synchronized players with the same version of the script
- Never use this script for other topic than screen wall (with only one video played by player) else unexpected bad side effects should be noticed
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: in case publication or player reboot, the player starts with black screen (avoiding video cut at the resynchronization)
>##### **COMPATIBILITIES**
- Player SMA300
- Gekkota V3.12.31 (or above)
- Screen Composer 3.11.12
- PlugnCast server 3.10.24 (or above)
- Support multimedia sequence with
	- Either only one playfile variable (of video media) (played infinitely)
	- Or only one video media (played infinitely)
- All the video medias played by each player of the screen wall have the same intrinsic features

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- Player synchronization - User guide (006C/EN) [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/player-synchronization/player-synchronization-application-note-006C_en.pdf)

# OLD VERSIONS HISTORY
***********************************************************************

## `2016-06-01` V1.10.12 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/player-synchronization/xpfSyncManager-V1.10.12.js)
>##### **IMPORTANT**
- Previous script may be not compatible so please take care to update all the synchronized players with the same version of the script
- Never use this script for other topic than screen wall (with only one video played by player) else unexpected bad side effects should be noticed
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: do not support playfolder/container anymore (because not accurate enough at video loopback)
- Fix: At loopback, the video media could restart with an random unexpected delay (now when played infinitely, video end/restart event management is completely bypassed)

## `2016-03-17` V1.10.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/player-synchronization/xpfSyncManager-V1.10.11.js)
>##### **IMPORTANT**
- Previous script may be not compatible so please take care to update all the synchronized players with the same version of script
- Never use this script for other topic else important unexpected side effects should be noticed
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the script was not supporting the restart of
	- one video media (played infinitely) inside a container
		- playfolder
			- with variable
		- playfile
			- with variable
- Note: PlugnCast G2 opt-out is not supported (unexpected black screen side effect noticed when using several multimedia sequences)
- Note: In case several medias exist in a playfolder, the script is able to restart the media currently played but the player synchronization is not warrantied

## `2016-02-03` V1.10.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/player-synchronization/xpfSyncManager-V1.10.10.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
	- the script is able to restart a video media (played infinitely)
