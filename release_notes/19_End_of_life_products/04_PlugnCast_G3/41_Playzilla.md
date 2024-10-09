# App Playzilla for PlugnCast

## `2021-12-21` V4.13.13 (.appi) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.13.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the publication on `Gekkota 5` devices was not working
- Fix: the publication on `AQS` devices was not working
>##### **COMPATIBILITIES**
- PlugnCast 3.12.18
- Gekkota G4 for device
	- Gekkota OS V4.14.13 (or above)
    	- for DMB400
    	- for SMA300
	- Gekkota OS V4.13.10 (or above)
    	- for DME204
	- Gekkota OS V4.13.13 (or above)
    	- for SMT210
    - Gekkota RT V4.14.13 (or above)
- Gekkota G5 for device
	- Gekkota OS V5.10.10 (or above)
    	- for DMB300
- Gekkota G3 for device
	- Gekkota OS V3.12.57 (or above)
    	- for DMB300
    	- for DMC200
    	- for SMP200
    	- for SMA200
    	- for SMA300
	- Gekkota RT V3.12.59 (or above)
- LG smart monitors
    - WebOS 3.0
    - WebOS 3.2
    - WebOS 4.0
    - WebOS 4.1
- SAMSUNG smart monitors
    - Tizen SSSP 4
    - Tizen SSSP 5
    - Tizen SSSP 6
- AQS V9.10.11 (or above) for devices
    - AMP300
    - TAB10s

#INFORMATION
***********************************************************************
#### **PLAYZILLA FOR QEEDJI SYSTEM AOSP 9**
- *Playzilla* V4.13.13 (.apk) [Download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-qeedjisystem_aosp-setup-4.13.13.apk)<br>
- configuration script 001A for the *Playzilla* APK  [Download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/configuration-script-aosp/000000000000.js)<br>
- It is required to install once, for each `Qeedji System AOSP 9` device, the *Playzilla APK* (4.13.13 or above) to make the initial connection to the `PlugnCast Server 3.12.18` (and above). Once installed, the form of the *Playzilla* APK allows to:
	- set the *PlugnCast* frontal URL
	- set the *PlugnCast* frontal credential login
	- set the heartbeat for the connection to the *PlugnCast* frontal URL
- These are the limitations for the *Playzilla* APK:
	- the time and date of the device cannot be updated automatically with the PlugnCast server
	- the remote file and remote folder are not supported
#### **LG WebOS Signage 3.0 / LG WebOS Signage 3.2 / LG WebOS Signage 4.0 / LG WebOS Signage 4.1**
- For any rendering issue or
-  decoding issue with LG WebOS Signage smart monitors, it is advised to read first the monitor user manual and check your smart monitor capabilities
- About MS-PowerPoint or PDF
    - If ever your smart monitor could support PDF and MS-PowerPoint medias with a recent firmware version, the message *content temporarily unavailable* is displayed when trying to play these kinds of medias anyway
- About video
    - in some rare cases, after having played a interlaced video, the video viewport can be split into 2 parts horizontally. One of the 2 parts is displaying the last decoded video picture
- Dual video decoding
    - on `LG WebOS Signage 3.0` and `LG WebOS Signage 4.0` smart monitors, the dual video decoding may be not supported properly leading to a black screen in one of the two zones. The following medias in this zone cannot be played anymore. To work around, do only play one video media at a time.
- About software upgrade
    - on `LG WebOS Signage 3.0` smart monitors, in case OS upgrade through `PlugnCast Server`, in some rare case, the `Playzilla` App could be stuck on a specific media. Consequently the smart monitor cannot finalize the software upgrade. To work around, press on the `Exit` key of the monitor remote control to close the `Playzilla` App. Then press on the `URL launcher` menu to launch again the `Playzilla` App
- About SlideMaker
    - In case issue to play an old SlideMaker media on `LG WebOS Signage` smart monitor, edit the SlideMaker media again to upgrade it and publish again
- Automatic update for remote file or remote directory is not supported
- `smb://` scheme is not supported and may prevent publication to work properly
- Some script to execute may not work because some of them require some feature not supported by the OS
#### **SAMSUNG Tizen SSSP 4 / SAMSUNG Tizen SSSP 5 / SAMSUNG Tizen SSSP 6**
- For any rendering issues or video decoding issue with `SAMSUNG Tizen SSSP4/SSSP5/SSSP6` smart monitors, it is advised to read first your `SAMSUNG Tizen SSSP` user manual
    - [Example of SAMSUNG Tizen SSSP 5 release note](https://displaysolutions.samsung.com/pdf/manual/3336/DBJ_QBH_QHH_QMH_EU_WebManual_Eng_for_Europe-03_20180801.0.pdf)
- About MS-PowerPoint or PDF
   - Due to issues noticed regarding the duration per page on SAMSUNG Tizen SSSP smart monitors when playing PDF or MS-PowerPoint medias, the message *content temporarily unavailable* is now displayed when trying to play these kinds of medias
- About SlideMaker
    - In case issue to play an old SlideMaker media on `SAMSUNG Tizen SSSP` smart monitor, edit the SlideMaker media again to upgrade it and publish again
- About video
   - Video container
      - To support the video media, the `Playzilla` App uses the W3C ```HTML5 <video> element``` implemented by SAMSUNG. Consequently, if the implementation is not completed on the `SSSP` Tizen smart monitors for all the container types, some of them may be not supported
         - examples of container which could be not supported: ```.mpg, .m2v, .mov, .mkv, .asf, .vob, .avi, .wmv``` on `SAMSUNG Tizen SSSP 4` and `SAMSUNG Tizen SSSP 5`
         - examples of container which could be not supported: ```.m2v, .mov, .mkv, .asf, .avi, .wmv``` on `SAMSUNG Tizen SSSP 6`
   - On the `SAMSUNG Tizen SSSP 5` smart monitors, playing two video medias at a same time may leads to unexpected behaviour; for example video which is stopping forever with a black screen displayed. To work around, do only play one video media at a time
   - Playing one audio channel and one audio-video channel at a same time may lead to unexpected behaviour (video which is stopping forever). To work around, do not play an audio channel at the same time. These limitation occurs even when the video media has no audio track.
   - Video media inside a Web page
       - On the `SAMSUNG Tizen SSSP 4` smart monitors, the video media inside a Web page, could not start or lead to a video decoder dead lock ending by displaying forever the last decoded picture of the video media. No more video can be played afterwards. The `Playzilla` information message *content temporarily unavailable* is not displayed in this case.
     - On the `SAMSUNG Tizen SSSP 4` smart monitors, it is possible that the video is started and played properly only one time of two when alternated with an image. To work around it is possible to play the video inside a Web page using the widget `video_subtitle.wgt`. For further information on this widget, contact support@innes.pro
     - A secondary video played inside a hidden zone at the same time as another video may appear jerky as it should not appear at all
- About Web page
    - Some Web page supported on Gekkota devices may be not supported on SSSP smart monitors
    - Some Web pages requiring a lot of memory resource could lead to the `Playzilla` App closing. To work around, remove from the content the Web page causing the App failure and publish. Launch again the `Playzilla` App
- About Display orientation
       - The `Display orientation` menu may be greyed (available from the menu `onScreen display`) when the `Playzilla` App is running. To access again to this `Display orientation` menu, close the `Playzilla` App by pressing on the `EXIT` key of the monitor remote control. Change the `Display orientation` to *Portrait* or *Landscape*. Once done, launch again the `Playzilla` App with the menu `URL launcher`.
- About UDP streaming
    - On `SAMSUNG Tizen SSSP` smart monitors, the video playback through UDP is not supported
- About firmware upgrade/downgrade
    - The software downgrade is not supported on `SAMSUNG Tizen SSSP` smart monitors.
    - on  `SAMSUNG Tizen SSSP 4` smart monitors, in case the firmware is upgraded with PlugnCast server, in some rare case, the `Playzilla` App could stay stuck on a specific media. Consequently the smart monitor cannot finalize the software upgrade. To work around, press on the `Exit` key of the monitor remote control to close the `Playzilla` App. Once done, launch again the `Playzilla` App with the menu `URL launcher`
- Automatic update for remote file or remote directory is not supported
- `smb://` scheme is not supported and may prevent publication to work properly
- Some script to execute may not work because some of them require some feature not supported by the OS
#### **GEKKOTA 3 DEVICES**
When running Playzilla 4.XX.YY on Gekkota 3 devices:
- The `PlugnCast Server` option ```Enforce on media with pagination a page progression with a default page duration``` is not working
- These content model are not compatible:
    - *MeetingRoom - Mono* 1.10.52 (and below)
        - A new *MeetingRoom - Mono* 1.20.10 compatible should be available by Q4/2020
    - *Custom product developed from a MeetingRoom 1.10.XX software basis*
    - *ESII - banner* 1.10.15 (and below)
- `smb://` scheme is not supported and may prevent publication to work properly
#### **AUDIO**
- Audio volume control is not supported for these media
    - PDF,
    - PowerPoint,
    - HTML page (HTML video element)
    - Widget
#### **INFORMATION MESSAGE**
Playzilla displays an error message: ```Content temporarily unavailable *path filename* (code <n>)```
| `code <n>` | Information
|:----------|:----------
| code 404 (HTTP error code 404 = file not found) | Re-publish the content on the device, taking care to check that the media actually exists in your library or your playlist does not refer to media that no longer exists
| code 403 (HTTP error code 403 = cannot be accessed) | remote file is no longer available
| code 401 (HTTP error code 401 = authorization required) | access to this media requires authentication that is not resolved by the login and password entered
| code 0 (unsupported media) | this media type is not supported at all by this device type. &sup2;
| code 1 (an error occurred with your media when inserting into *dom*) | an error occurred with your media when playing it &sup1;
| code 2 (error when activating the viewer) | An error occurred with your media when playing it &sup1;
| code 3 (media repeat error) | An error occurred with your media when playing it&sup1;
| code 4 | Media not supported by your device. Remove this media from your content and re-publish.
| code 5 (Control XHR error event) | Change media behaviour (once, fixed duration, or infinite) and re-publish
| code 6 (Event stop or timeout on XHR of control) | Modify media behaviour (once, fixed duration, or infinite) and re-publish

Playzilla displays an error message: ```This content *path filename* is not compatible with this device```

To solve the problem, remove this media not supported by your device from your content and publish again your App.
For further information, see the list of supported media on your device in the *qeedji-supported-medias-and-performances.pdf* file.

&sup1; For further information, check the medias supported by your device

&sup2; For further information, contact *support@innes.fr*

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2021-03-03` V4.13.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.13.12.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for .playlist media
- Fix: when using date and time variable, the estimated *week-in-year* value  was wrong for some year

## `2020-10-06` V4.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.13.11.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the content of a remote playfolder was updated only after a new publication

## `2020-07-01` V4.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.13.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a `{$custom:<calendar>}` variable type
- Add support for `validity variable` metadata
- Add support for fallback media for playfolder when the directory is empty
- Add support for media filtering in playfolder based on keywords list
- Add support for play occurrence customization in playfolder based on keywords or rating
- Change: a keyword value can now support the ```{$custom:<variable_name>}``` or ```{deviceInfo:<>}``` formats
- Change: validity period metadata without validity end date is now supported

## `2020-01-28` V4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.12.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for medias filtering based on *rating* or *keywords* for the playfolder
- Add support for smart monitor:
	- `SAMSUNG Tizen SSSP 6`
- Add support for volume behaviour per media
	- video medias,
	- audio medias,
	- playfolder,
		- volume behaviour can be applied to only audio and video medias
	- playlist,
		- volume behaviour can be applied to only audio and video medias
	- uri
		- volume behaviour can be applied to only audio and video medias
- Change: the message below is displayed for the smart monitors when their system date & time is more than one year older than the server date:
	- *Error: can not launch the App. The device does not seem to have a correct date & time*
	- To work around, set a appropriate date & time for your smart monitor
- Fix: in some case, the video media could stop on `SAMSUNG Tizen SSSP` without raising a message *content temporarily unavailable*

## `2019-06-06` V4.11.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.11.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the `SAMSUNG Tizen SSSP 6` smart monitors
- Change: the support of PDF and MS-PowerPoint medias has been inactivated for `SAMSUNG Tizen SSSP` smart monitors
- Fix: the rotation 90° was not working for the smart monitors below:
    - `SAMSUNG Tizen SSSP 4`,
    - `SAMSUNG Tizen SSSP 5`,
    - `LG WebOS Signage 3.0`,
    - `LG WebOS Signage 3.2`.

## `2019-03-07` V4.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.11.11.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: some unexpected validity behaviour could be noticed for the Gekkota 3 devices and SAMSUNG SSSP 4 monitors when the media validity was changing inside a same day

## `2019-01-08` V4.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.11.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new Smart Monitors:
    - `LG WebOS Signage 4.0`,
    - `SAMSUNG Tizen SSSP 4`,
    - `SAMSUNG Tizen SSSP 5`.
- Change: is now supporting Gekkota 3 devices
- Fix: on the LG WebOS 3 Smart Monitors, a playfolder could not work when the playfolder name was the same as the name of the referenced directory
- Fix: when only the WLAN was connected to the network, a wrong MAC identification method was returned for LG WebOS Smart Monitors
- Fix: some playout scripts could not work anymore

## `2018-08-09` V4.10.20 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.10.20.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: some unexpected playout behaviour could be noticed on the playout when another media was played alone in a zone and outside its validity range (by example, inside a playfolder, only the 1st media could be played instead of all the medias)
- Fix: the playout could not start properly by displaying the message *the execution of a script blocks Gekkota, rebooting* when the date of the device was more than 23 days before the date of the first event in the calendar

## `2018-04-23` V4.10.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.10.19.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: playing streamed video medias was not working anymore
- Fix: sometimes immediately after a publication, and when several video medias had to start at the same time, all the video medias could not start and the error message *content temporarily unavailable* was not displayed

## `2018-04-05` V4.10.18 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.10.18.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for media metadatas (duration, validity, autoloop, different type of media with pagination)
- Change: in alphabetical order, the file are now sorted first in the list when the filename has some number characters (for example in playfolder)
- Change: a message *This version of Playzilla is not supported on this device* is now raised when playzilla 4 is played on a device out of scope or from a Web browser
- Fix: could imply a device crash when playing a playfolder refering to its parent directory
- Fix: a message *this app will now restart to free up more memory* could be displayed sometimes on LG WebOS devices
- Fix: animated images could not be played when played alone in a calendar slot
- Fix: sometimes a video media could be played with a wrong ratio on LG WebOS devices
- Fix: calendar event recurrence was not working for the day *Saturday*
- Fix: memory leak when repeating URI media (Web page with video especially)
- Fix: sometimes nothing was played after having played a emptied playfolder

## `2017-10-27` V4.10.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.10.17.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PPSX and PPTX playback
    - refer to the documentation *Gekkota supported media and performances* to know whether MS-PowerPoint medias are supported by your device
- Add support for interactivity (next, previous, go to a page number) (PDF, MS-PowerPoint)
- Add support of HTMLMediaElement API (*play()*, *pause()*, *currentTime()*, ...)
- Fix: opt-out with non-alphabetic character was not played
- Fix: playing of medias using a variable could failed in case the path file name is containing character ```{``` or ```}```

## `2017-06-30` V4.10.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-playzilla/playzilla-plugncast-setup-4.10.16.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version

