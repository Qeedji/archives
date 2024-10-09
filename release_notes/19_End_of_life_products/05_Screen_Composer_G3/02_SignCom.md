# App SignCom for Screen Composer

*The SignCom App is not part of Screen Composer delivery. It needs to be imported in Screen Composer to work with any Gekkota 4 projects types.*

## `2019-09-25` V4.11.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: is now supporting Gekkota 3 devices
>##### **COMPATIBILITIES**
- Screen Composer 3.20.15 (and above)
- Gekkota RT V3.12.59 (or above)
- Gekkota OS V3.12.58 (or above)
	- for SMA300
- Gekkota OS V3.12.57 (or above)
	- for DMB300
	- for DMC200
	- for SMP200
	- for SMA200
- Gekkota OS V4.12.13 (or above)
	- for DMB400
- Gekkota OS V4.12.11 (or above)
	- for SMA300
- Gekkota OS V4.12.10 (or above)
	- for DME204
- Gekkota OS V4.11.12 (or above)
	- for SMT210
- Gekkota RT
   - V3.12.57 (or above)

#INFORMATION
***********************************************************************

#### **INFORMATION MESSAGE**
```Content temporarily unavailable *path filename* (code <n>)``` error message display:

| ```code <n>``` | Information
|:----------|:----------
| code 404 (HTTP error code 404 = file not found) | Re-publish the content on the device, taking care to check that the media actually exists in your library or your playlist does not refer to media that no longer exists
| code 403 (HTTP error code 403 = cannot be accessed) | remote file is no longer available
| code 401 (HTTP error code 401 = authorization required) | access to this media requires authentication that is not resolved by the login and password entered
| code 0 (unsupported media) | this media type is not supported at all by this device type. &sup2;
| code 1 (an error occurred with your media when inserting into *dom*) | an error occurred with your media when playing it &sup1;
| code 2 (error when activating the viewer) | An error occurred with your media when playing it&sup1;
| code 3 (media repeat error) | An error occurred with your media when playing it&sup1;
| code 4 | Media not supported by your device. Remove this media from your content and re-publish.
| code 5 (Control xhr error event) | Change media behavior (once, fixed duration, or infinite) and re-publish
| code 6 (Event stop or timeout on xhr of control) | Modify media behavior (once, fixed duration, or infinite) and re-publish

```This content *path filename* is not compatible with this device``` error message display:

To solve the problem, remove this media not supported by your device from your content and publish again your App.
For further information, see the list of supported media on your device in the *qeedji-supported-medias-and-performances.pdf* file.

&sup1; For further information, check the medias supported by your device

&sup2; For further information, contact *support@innes.fr*

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2018-08-09` V4.10.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the playout could not start properly by displaying the message *the execution of a script blocks Gekkota, rebooting* when the date of the device was more than 23 days before the date of the first event in the calendar

## `2018-04-23` V4.10.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: playing streamed video medias was not working anymore
- Fix: sometimes immediately after a publication, and when several video medias had to start at the same time, all the video medias could not start and the error message *content temporarily unavailable* was not displayed

## `2018-04-05` V4.10.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: in alphabetical order, the file are now sorted first in the list when the filename has some number characters (for example in playfolder)
- Change: a message *This version is not supported on this device* is now raised when the App is played on a device out of scope or from a Web browser
- Fix: could imply a device crash when playing a playfolder referring to its parent directory
- Fix: animated images could not be played when played alone in a calendar event
- Fix: calendar event recurrence was not working for the day *Saturday*
- Fix: memory leak when repeating URI media (Web page with video especially)
- Fix: sometimes nothing was played after having played a emptied playfolder

## `2017-10-27` V4.10.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for PPSX and PPTX playback
    - refer to the documentation *Gekkota supported media and performances* to know whether MS-PowerPoint medias are supported by your device
- Add support for interactivity (next, previous, go to a page number) (PDF, MS-PowerPoint)
	- increase the time per page so that the user can have the time to press on *next page* key
- Add support of HTMLMediaElement API (*play()*, *pause()*, *currentTime()*, ...)
- Fix: opt-out with non-alphabetic character was not played
- Fix: playing of medias using a variable could failed in case the path file name is containing character ```{``` or ```}```

## `2017-06-30` V4.10.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for extensions webp, sdp, ismc and mpd
- Fix: could stop to play the next medias after a while
- Fix: media duration could be more than the expected one (ex: URI Web page)
- Fix: language translation was not done properly in HTML media (or MAFF, WGT)
- Fix: memory leak in Gekkota when using the App
- Fix: book interactivity was not working (PDF)
- Change: when variable can not be resolved, replace by empty string (instead raising a error)

## `2017-04-04` V4.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: once publication was done, the device could stop to play the content the month after the start date of a recurring content

## `2017-03-24` V4.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of *Webp* image
- Fix: playback was stuck when a playfolder pointing on a not existing directory (no fall back) was played alone in a time slot
- Fix: playback was stuck when playing a playfolder pointing on a directory having only one media, and playfolder behaviour was  *play only one media*

## `2017-03-01` V4.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: sometimes it was not possible to update a media being played
- Change error message: *this content is not compatible with this platform* by *content temporarily unavailable (code 0)*
- Fix: the model *Scrolling text from file* (V1.10.13) could not start
- Fix: background image could appear between pictures when playing playfolder of HD pictures (DMB400)

## `2017-01-25` V4.10.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: a scrolling bar was displayed when playing Web page in resized zone
- Fix: in some case, the background image was not be displayed when playing media with transparency (ex: Trafic Info Sytadin)
- Fix: the publication could be not the expected one in case using an empty zone
- Fix: in case unexpected error was raised when playing a only one media in a zone, the App was not trying to play it again (staying on error message: *content temporarily unavailable*)
- Fix: the password could be displayed in the Web page in case authentication error when playing URI playfile

## `2017-01-10` V4.10.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: content temporarily unavailable when some medias are played inside playlist
- Fix: vob media was not supported
-
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.11 (and above)

## `2017-01-03` V4.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- Screen Composer G3 V3.20.10 (only)

