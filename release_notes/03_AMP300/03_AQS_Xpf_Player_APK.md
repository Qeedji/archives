# Xpf Player APK   

Once installed and configured on the **Qeedji System AOSP 9** device, The *Xpf Player* APK allows the device to work with PlugnCast Server G2.

## `2024-09-28` V1.10.16 [download](app-xpf_player/xpf_player-qeedjisystem_aosp-setup-1.10.16.apk){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: remove support for license input in the App form  
>##### **COMPATIBILITIES**
- PlugnCast Server 2.50.32
- PlugnCast Studio 2.51.11
- AQS V9.10.20 (or above) for devices 
    - AMP300 
    - TAB10s

#INFORMATION
***********************************************************************
Once downloaded, follow the user manual to install and configure once the `Xpf Player` APK on the device to initiate the communication with `PlugnCast Server G2`:

- `Xpf Player` APK user manual 1.10.16~001A [download](app-xpf_player/xpf_player-qeedjisystem_aosp-user-manual-1.10.16~001A_en.pdf){.auth-downloads}

A configuration script allows to configure the `Xpf Player` APK:

- configuration script 001A for `Xpf Player` APK  [download](app-xpf_player/000000000000.js){.auth-downloads}

It is possible to install and configure the `Xpf Player` APK on a device by inserting a USB storage device containing the APK and a suitable configuration script: 

- *xpf_player-qeedjisystem_aosp-setup-1.10.15.apk*
- *000000000000.js*

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2024-06-06` V1.10.15 [download](app-xpf_player/xpf_player-qeedjisystem_aosp-setup-1.10.15.apk){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: a device reboot is now issued in case the App is stopped with an unexpected way. These prerequisites must be filled to support this feature
	- the *kiosk* mode must be activated 
	- the *Start the App after boot completed* option must be checked  

## `2023-05-10` V1.10.14 [download](app-xpf_player/xpf_player-qeedjisystem_aosp-setup-1.10.14.apk){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, the App could stop. To work around, the App needed then to be restarted with the device Web user interface or with a new publication with PlugnCast Studio
- Fix: in some cases, after a scene transition in a visual channel, the content of the previous scene was not stopped right immediately, so more than one media could be played at the same time, resulting in a jerky effect on the played medias 
- Fix: in some cases, after a scene transition in an audio channel, the content of the previous scene was not stopped properly, so more than one audio media could be played at the same time
- Fix: when two same scenes was played the one after the other, the second scene could be not played
- Fix: when a scene was over and no scene was scheduled just after, the App was still displaying the background content of the scene instead of displaying the default colour when no content is played
- Fix: in some case, immediately after the standby task is over, the content could be frozen with the audio track of the audio-visual channel played in background. The content could be unfrozen itself with the starting of a new scene
 
## `2023-02-28` V1.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, the content was not played anymore

## `2023-02-21` V1.10.12 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: do not accept downloader task if variables resolution fails 

## `2023-02-10` V1.10.11 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for some xpath personalisation script to support interactivity  

## `2022-12-02` V1.10.10 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
