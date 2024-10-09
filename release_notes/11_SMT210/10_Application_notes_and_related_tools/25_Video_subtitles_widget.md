# Video subtitles widget

#### **SUMMARY**
- This widget allows to play a video with subtitle vtt (or srt)

#### **COMPATIBILITIES**
- DMB400/SMA300 device
- Gekkota V4.11.10 (or above)
- PlugnCast 3.10.50 (or above) / Playzilla 4.11.11

##`2019-09-12` (last update)
- Add support for German language
- Fix: default duration property was 00:00:00 (instead 00:00:10)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
| Description                  | Version |                                                                                                  |
| :----------------------------| :-------| :----------------------------------------------------------------------------------------------- |
| video_subtitle.wgt | 1.10.11 | [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/Video_subtitle_widget/video_subtitle-V1.10.11.wgt) |
| subtitle.css (example)       | 1.10.10 | [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/Video_subtitle_widget/subtitle-V1.10.10.css)       |

### How to
- Download the media ```video_subtitle.wgt``` and import it in your PlugnCast G3 library
- Download the file  ```subtitle.css``` (example) and import it in your PlugnCast G3 library
- In your PlugnCast library, select the media ```video_subtitle.wgt```, add to it a *linked files* metadata, in which you drop from your library
	- your video media
		- supported video containers:
			- *.mp4,
			- *.mp2,
			- *.mov,
			- *.mpg,
			- *.mpeg,
			- *.mkv,
			- *.m4v,
			- *.wmv
		- your subtitle file with the supported formats:
			- *.srt,
			- *.vtt (viewable in PlugnCast)
		- your optional custom ```subtitle.css``` file in case subtitles style customization is required
			- by default the attribute "font-size" is calculated by an algorithm to adapt layout changes; but if you want, you can set a fixed value
- Add the widget  ```video_subtitle.wgt``` to your playout and publish

### Content temporarily unvailable
- In case a message content temporarily unavailable is displayed,
	- check that your video media is properly played alone in a new playout by the DMB400 device
	- in case your need to alternate standard video medias with this widget ```video_subtitle.wgt```
		- set the user preference ```innes.video.decoding-group.enabled``` to true
	- in case another video is already played in another zone,
		- set also the user preference ```innes.video.decoding-group.enabled``` to true

### Subtitles not displayed
- In case subtitles are not displayed, check that the timestamp value for the first subtitle is lower than the video duration or widget duration
- Only the Web VTT subtitle (*.vtt) can be previewed in PlugnCast 3.10.42 (or above)

### Compatibility
| Subtitles | Gekkota 3 | Gekkota 4	| LG WebOS 3.0 | LG WebOS 3.2 | LG WebOS 4.0 | SAMSUNG Tizen SSSP 4 | SAMSUNG Tizen SSSP 5 | SAMSUNG Tizen SSSP 6
|:--|:--|:--|:--|:--|:--|:--|:--
| VTT |	KO | OK |	OK	|KO	|OK	|KO	|OK	|OK
| SRT |	KO | OK |	KO	|KO	|KO	|KO	|KO	|KO

The widget models is tested with the last available Smart monitors OS versions.

#OLD VERSIONS HISTORY
*********************************************************************************************************
| Description                  | Version |                                                                                                  |
| :----------------------------| :-------| :----------------------------------------------------------------------------------------------- |
| video_subtitle.wgt (example) | 1.10.10 | [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/Video_subtitle_widget/video_subtitle-V1.10.10.wgt) |
