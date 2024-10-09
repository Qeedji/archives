# Content models package for Screen Composer G3
*RELEASE NOTE*

*To update your content model pack, download the archive models-V3.5X.zip available just below, open Screen Composer G3, click on menu ```Import templates or app```, then select the archive downloaded. For more information about the content model pack installation, refer to the Screen-composer user manual.*

## `2021-05-11` V3.65 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/content-models-ontologies-and-uris.models-screen_composer_g3-setup-3.65.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom Mono - Landscape"
	- Add support for `Playzilla` 4.XX.YY when running on `Gekkota OS 3.XX.YY` or `Gekkota RT 3.XX.YY`
    - Add support for new connectors
	    - *Agora*,
	    - *Gesroom*
    - Change: when using *Briva calendar* connectors, remove systematically the `/PlugnCast` suffix from the URL as soon as the form is edited
    - Fix: start time or end time could be wrong for meeting across several days
	- Fix: the image attached to the meeting was not displayed properly in the UHD resolution
>##### **MAFF MODELS**
| Model name                                            |      Version        |
| :---------------------------------------------------- | :------------------ |
| Agenda			                                    |      1.10.10        |
| Education - Exams                                     |      1.10.11        |
| Education - Information                               |      1.10.11        |
| Education - Teachers Absence	                        |      1.10.13        |
| ESII vertical banner                                  |      1.10.15		  |
| Information bloc                                      |      1.10.12        |
| MeetingRoom - Mono - Landscape                        |      1.20.10		  |
| MeetingRoom - Summarization - Landscape               |      1.20.10		  |
| MeetingRoom - Summarization - Portrait                |      1.20.10		  |
| NoVNC                                                 |      1.10.12		  |
| News feeds 16-9						                |      1.20.11		  |
| News feeds horizontal banner           	            |      1.20.10		  |
| QLite-Banner                                          |      1.10.13		  |
| Real Estate Ads - AC3                                 |      1.10.12		  |
| Scrolling text from file                              |      1.20.11		  |
| Slideshow - Image and text                            |      1.10.12		  |
| Text area from file                                   |      1.10.15		  |
| Traffic News Sytadin									|      1.10.12        |
>##### **PERIPHERALS URI MODELS**
| URI model name                                        |      Version        |
| :---------------------------------------------------- | :------------------ |
| Audio/Video input                                     |      1.10.12		  |
>##### **FRANCE DVB-T DEMODULATOR URI MODELS**
| URI model name                                        |      Version        |
| :---------------------------------------------------- | :------------------ |
| 6ter                                                  |      1.10.13		  |
| Arte                                                  |      1.10.13		  |
| BFM TV                                                |      1.10.13		  |
| C8                                                    |      1.10.13		  |
| CANAL +                                               |      1.10.13		  |
| Chérie 25                                             |      1.10.13		  |
| CNews                                                 |      1.10.13		  |
| CStar                                                 |      1.10.13		  |
| F3 Bretagne                                           |      1.10.13		  |
| France 2 HD                                           |      1.10.13		  |
| France 4 HD                                           |      1.10.13		  |
| France O HD                                           |      1.10.13		  |
| France 5                                              |      1.10.13		  |
| France Info                                           |      1.10.13		  |
| Gulli                                                 |      1.10.13		  |
| L'Equipe 21                                           |      1.10.13		  |
| LCP                                                   |      1.10.13		  |
| M6                                                    |      1.10.13		  |
| NRJ12                                                 |      1.10.13		  |
| Numéro 23                                             |      1.10.13		  |
| RMC Découverte                                        |      1.10.13		  |
| TF1                                                   |      1.10.13		  |
| TF1 series film                                       |      1.10.13		  |
| TFX                                                   |      1.10.13		  |
| TMC                                                   |      1.10.13		  |
| W9                                                    |      1.10.13		  |
>##### **WEB TV URI MODELS**
| URI model name                                        |      Version        |
| :---------------------------------------------------- | :------------------ |
| ABC7 - EN                                             |      1.10.11		  |
| France24 - ARA                                        |      1.10.11		  |
| France24 - EN                                         |      1.10.11		  |
| France24 - FR                                         |      1.10.11		  |
| NASA - EN                                             |      1.10.11		  |
| RT France - FR                                        |      1.10.11		  |
| SkyNews - EN                                          |      1.10.11		  |
>##### **ONTHOLOGIES URI MODELS**
| Ontology model name                                   |      Version        |
| :---------------------------------------------------- | :------------------ |
| AppColorLed                                           |      1.10.13		  |
| AVCommand                                             |      1.10.12		  |
| Datamodel                                             |      1.10.12		  |
| DetectionHID                                          |      1.10.16		  |
| Display                                               |      1.10.16		  |
| FileMonitor                                           |      1.10.11		  |
| Jack35 (for presence sensor or brightness sensor)     |      1.10.15		  |
| Keypad                                                |      1.10.13		  |
| Phoenix                                               |      1.10.15		  |
| Power Supply                                          |      1.10.11		  |
| RemoteControl                                         |      1.10.14		  |
| Shell                                                 |      1.10.11		  |
| Sound                                                 |      1.10.10		  |
| Timer                                                 |      1.10.13		  |
>##### **COMPATIBILITY**
- Gekkota V3.12.57 (or above)
- Gekkota V4.13.10 (or above)
- Screen Composer 3.20.15 (or above)
	- Playzilla 3.10.10
	- Playzilla 4.13.11 (or above)
>##### **KNOWN LIMITATIONS**
- "Real Estate Ads - AC3"
	- Works only on Gekkota 4 devices
	- The unitary preview in not suported in Screen Composer and PlugnCast G2
- "Information block"
	- When played inside not full screen zone, the font size is not resized according
- "Slide show image and text"
	- When played inside not full screen zone, the font size is not resized according
	- When played on a LG WebOS3 platform, with the behaviour 1X, the media cannot pass to the next media. To work around play it with a fix duration
- "MeetingRoom"
	- Fix: splash screen *MeetingRoom preview is not available* is displayed on DMB400 devices
	- When Meeting Room is used with a connector in playback mode 1X (or fixed duration), and when the number of meeting is important (for example 10 meeting a day for 3 day), the delay for Meeting room to be able to display all the meetings can be quite long (1 to 2 minutes)
	- does not work on LG WebOS 3 platforms
- "QLite banner"
	- With the behaviour 1X, the media cannot pass to the next media. To work around play it with a fix duration
- "Scrolling text from file"
	- The text height value is in percentage of the max text height (from 10% to 100%)
	- The max text height 100% is representing roughly 50% of the grid height
	- In SMA300/Gekkota 4, the scrolling text from file has to be played inside a horizontal banner whose height is maximum 20% of the grid height

#INFORMATION
***********************************************************************
#### **EXAMPLES AND DOCUMENTATION**
| Model name                                            |      Description/version          |    Download      |
| :---------------------------------------------------- | :-------------------- | :--------------- |
| Agenda                                              | User manual (001A/EN)      | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/Agenda-1.10.10-001A-fr.pdf) |
| Facebook                                              | User manual (001B/FR)      | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/ManuelUtilisateur-001B_fr.pdf) |
| Facebook                                              | User manual (001B/EN)      | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/Facebook-001B_en.pdf) |
| ESII Vertical banner                                  | User manual (003A/EN)      | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/ESII-Vertical-Banner-user-guide-003A.pdf) |
| ESII Vertical banner                                  | EGESTAT EDS UDP Installation Guide (001A/EN) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/egestat-eds-upd-http-server-001A_en.pdf) |
| ESII Vertical banner                                  | EGESTAT EDS UDP V1.10.10 exe | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/egestat_eds_udp-setup-1.10.10.exe) |
| Meeting Room       | User manual 1.20.10_001C_en  | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/meetingroom-usermanual-1.20.10-001C_en.pdf) |
| Meeting Room       | White and brown signalization pictograms  | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/MeetingRoom_signalization_pictograms.zip) |
| Menu de la semaine                                    | Linked medias example | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/menu_semaine_11.xls) |
| Menu du jour - Large                                  | Linked medias example | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/excel97Date.xls)
| Menu du jour - Large	                                | Menu picture examples (photo n°1) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/photo1.jpg) |
| Menu du jour - Large	                                | Menu picture examples (photo n°2) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/photo2.jpg) |
| Menu du jour - Large	                                | Menu picture examples (photo n°3) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/photo3.jpg) |
| Menu du jour - Large	                                | Menu picture examples (photo n°4) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/photo4.jpg) |
| Nombre de jours sans accident - Fonctionnement des compteurs | User manual (001B/FR) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/Masque-Nombre-de-jours-sans-accident-Fonctionnement-des-compteurs-001B_fr.pdf) |
| Nos engagements                                       | Linked medias example | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/nos_engagements.xls) |
| No VNC                                                | NoVNC Server V1.10.10          |[download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/DemoVNC-V1.10.11.zip) |
| No VNC                                                | NoVNC Server User Guide (001A/EN) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/NoVNC-Server-User-Guide-001A_en.pdf) |
| QLite - Banner                                        | QLite - Banner User Guide (003A/EN) | [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/QLite-User-Guide-003A_en.pdf) |
| HID interactivity detection                           | HID application note (001A/EN) | [Download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/Configuring-HID-interactivity-SCG3_001A_en.pdf) |
#### **HOW TO INSTALL MODELS WITH SCREEN COMPOSER**
- Screen Composer >= V3.10.16: open Screen Composer and import zip models package with "import models and app" button
- Screen Composer < V3.10.16: Unzip zip models package and copy-paste on your PC under:
	- XP: ```C:\Documents and Settings\[USER_NAME]\Documents\Innes Screen Composer\Workspace```
	- Vista (or later):  ```C:\Users\[USER_NAME]\Documents\Innes Screen Composer\Workspace```
#### **HOW TO INSTALL MODELS WITH PLUGNCAST G2**
- Unzip zip models package and copy-paste on your PlugnCast server under:
	- XP: ```C:\Documents and Settings\All Users\Documents\Innes PlugnCast\Server\.accounts\«your domain»```
	- Vista (or later): ```C:\Users\Public\Documents publics\Innes PlugnCast\Server\.accounts\«your domain»```
#### **NOTE FOR MODEL PACKAGE UPGRADING**
- Model package upgrading operation takes care to not remove the old models (which are not maintained anymore)
- In order to take benefit of new model version (in case model version has changed),
	- With Screen Composer or PlugnCast,
		- Edit the mask corresponding to .swf instance of the model then
		- Save it back
#### **NOTE FOR MASK FIL D'ACTUALITE**
- Image types supported
	- RSS standard
		- rubric logo
		- rubric image (tag ```<enclosure>```)
		- inline thumbnail
#### **NOTE FOR MASK FIL D'ACTUALITE 16/9**
- Image types supported
	- RSS standard
		- rubric logo
		- rubric image (tag ```<enclosure>```)
	- RSS custom
		- tag for image (in case rubric image)
#### **LINKED MEDIAS DIRECTORY NAME LIMITATION**
- Linked medias directory whose name is containing special characters complex combination could not be seen in file manager (when choosing a linked media). To workaround (if possible) remove some special character in directory name until file can be seen by PlugnCast or Screen Composer
#### **SAAS SERVER MODELS**
- For customer working with SAAS server, specific models should be delivered directly on SAAS server. Contact **support@innes.fr** for more information

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2021-02-10` V3.64 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/content-models-ontologies-and-uris.models-screen_composer_g3-setup-3.64.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "News feeds 16-9"
- "News feeds horizontal banner"

## `2020-03-09` V3.63 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/content-models-ontologies-and-uris.models-screen_composer_g3-setup-3.63.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom - Mono - Landscape"
 	- Add support multiple calendar

## `2020-03-09` V3.62 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/content-models-ontologies-and-uris.models-screen_composer_g3-setup-3.62.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom - Summarization - Landscape" and "MeetingRoom - Summarization - Portrait"
	- Add support for `Playzilla` 4.XX.YY when running on `Gekkota OS 3.XX.YY` or `Gekkota RT 3.XX.YY`
    - Add support for file picker in the form
    - Add support for *Agora* and *Gesroom* connector in the form
    - Add support for automatic scrolling for the items of all the columns except for signalization pictograms and attachments
    - Add support for displaying additional custom column id based on ICS extended  properties or standard properties
        - requires working with an appropriate *CSV Calendar* applet. For further information, contact support@innes.fr
    - Add support for multiple calendar
    - Add support for these new fields to be able to configure the layout
        - In the *Page header* field set
            - *Left margin*
            - *Right margin*
            - *Height* (in percent %)
        - In the *Column header* field set
            - *Height* (in percent %)
        - In the *Events Sections* field set
            - *Height* (in percent %) (optional)
        - For further information, read the MeetingRoom User Manual
    - Add support for these new fields to be able to define the meeting start time and meeting end time displayed when the meeting is taking place all day long
        - In the *Events Sections* field set
            - *Start day time*
            - *Stop day time*
    - Change *line* notion into *section* notion in the form
    - Change: when using *Briva calendar* connectors, remove systematically the `/PlugnCast` suffix from the URL as soon as the form is edited
    - Fix: the right number of pages could be not displayed sometimes
    - Fix: start time or end time could be wrong for meeting across several days
- "Facebook"
	- Removed

## `2018-10-23` V3.61 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.61.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Remove these WebTV URI:
	- EuroNews - FR
	- EuroNews - EN
	- EuroNews - DE

## `2018-10-09` V3.60 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.60.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Real Estate Ads AC3 - France
	- Initial version
- Facebook
	- Fix: only one post could be displayed on LG WebOS 3 device
- Scrolling text from file
	- Change: when a variable was used in the text input, all the files situated on the parent directory situated just before the variable was wrongly loaded in the mask. Now it is required to add manually the resource in the playout manifest

## `2018-10-08` V3.59 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.59.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the Web TV channels
    - France24 - EN
    - France24 - ARA
    - EuroNews - FR
    - EuroNews - EN
    - EuroNews - DE
    - RT France - FR
    - Nasa - EN
    - ABC7 - EN
- Change the Web TV channels names
	- France24 - FR (instead of France24)
	- SkyNews - EN (instead of SkyNews)
- Fix: the Web TV channels URI was not working except after having changed its URI type from *video* to *iframe*

## `2018-10-03` V3.58 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.58.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add the Web TV channels
    - France24
    - SkyNews
- Change: the France TV channels thumbnails have now a watermark *TNT*

## `2018-08-10` V3.57 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.57.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- News feeds horizontal banner
	- Variables with the format ```{$custom:<varname>}``` was not supported in the form input
- `Audio/video input` URI
	- Change URI format to ```urn:innes:av-input```

## `2018-04-09` V3.55 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.55.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthology
	- "Sound"
		- Initial release

## `2018-02-05` V3.54 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.54.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthology
	- "DetectionHID"
		- Fix: was not working on DMB400

## `2018-02-02` V3.53 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.53.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Agenda"
    - Initial release
- "Education - Exams"
    - Add support for English and German language
    - Fix: a sub-title whose size length was long could be displayed over the column header
    - Fix: typo error (FR)
- "Education - Information"
    - Add support for English and German language
    - Fix: the *font 2* colour picker was not taken into account
    - Fix: the foot note was overlapping the image on the right
- "Education - Absences"
    - Add support for English and German language
- "News feeds 16-9"
       - Fix: on LG WebOS 3 platforms, only the first news was played
       - Fix: in some case, *petit* was displayed instead of *klein* (German language)
- "News feeds horizontal banner"
    - Fix: when using right or left scrolling with overlay, the news was not displayed on DMB400 devices. Now, the overlay is not used when played on DMB400. A new mask version will be required to support overlay on DMB400 devices when the news are scrolled horizontally.
- "Scrolling text from file"
    - Fix: the message "content temporarily unavailable" was displayed when the text file to play was 0 KB
    - Change default duration property to 00:00:10
- "Text area from file"
    - Add support for English and German language
    - Fix: preview was not possible when using some of characters of ASCII 7 bits
    - Change default duration property to 00:00:10
- "RichText Area"
    - *Model has been removed*

## `2018-01-17` V3.52 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.52.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Audio-video input"
	- Change value to ```urn:innes:av-input```
	- Add a logo A/V input
	- Add support for German language
- "Education - Teachers Absence"
	- Thursday content and Tuesday content could be wrong
    - School building name could be shortened sometimes

## `2017-08-30` V3.51 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.51.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: removed SWF models

## `2017-08-02` V3.50 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.50.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Scrolling text"
	- Removed (deprecated)
- "Scrolling text from file"
	- Add support for overlay on DMB400 device
	- Add support for variable management with the format ```{$custom:<var_name>}```
	- Change: font size 10% to 100% (size 100% is meaning 60% of the screen height)
		- in Ultra HD resolution,
			- supported max. font size is 30% when string length to display is upper than roughly 80 characters or text is containing several lines
			- supported max. font size is 85 % when string length to display is lower than roughly 80 characters
		- in Full HD resolution,
			- supported max. font size is 60% when string length to display is upper than roughly 80 characters or text is containing several lines
			- supported max. font size is 100% when string length to display is lower than roughly 80 characters
		- warning: in case using custom variable, the whole parent directory is embedded in the player (as linked media) at the publication
- "ESII"
	- Blinking message was not rendered properly on DMB400 device
- "MeetingRoom - Summarization - Portrait"
	- Add support for DMB400 device
- "MeetingRoom - Summarization - Landscape"
	- Add support for DMB400 device
- "Display"
	- Device could keep device awoken when a standby task was programmed around the current time

## `2017-07-07` V3.49 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.49.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Education - Exams"
	- Initial release, based on HTML5
	- Remove: SWF model
- "Education - Information"
	- Initial release, based on HTML5
	- Remove: SWF model
- "Education - Teachers Absence"
	- Initial release, based on HTML5
	- Remove: SWF model
- "Facebook"
	- Initial release, based on HTML5
- "Information bloc"
	- Change: metadata
- "Info traffic sytadin"
	- Change: metadata
	- Support for UHD
- "News feeds horizontal banner"
	- Change: metadata
	- Support for German language
- "QLite-Banner"
	- Change: metadata
- "Slideshow - Image and text"
	- Initial release, based on HTML5

## `2017-05-04` V3.48 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.48.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthologies: add support for German language
	- "AppColorLed"
	- "AVCommand"
	- "Datamodel"
	- "DetectionHID"
	- "Display"
	- "FileMonitor"
	- "Jack35"
	- "Keypad"
	- "Phoenix"
	- "Power Supply"
	- "RemoteControl"
	- "Shell"
	- "Timer"
- Onthologies:
	- "AVCommand"
		- Renamed XpfAVCommand.rdf to AVCommand.rdf
	- "FileMonitor"
		- Renamed XpfFileMonitor.rdf to FileMonitor.rdf
	- "Power Supply"
		- Renamed XpfPowerSupply.rdf to PowerSupply.rdf
	- "Shell"
		- Renamed XpfShell.rdf to AVCommand.rdf
	- Note: after installing the model pack, please remove the 4 obsolete onthologies below (else you could not take benefit of these new versions (default path: C:\Users\...\Innes Screen Composer G3\Workspace\.models\.ontologies))
		- XpfShell.rdf,
		- XpfPowerSupply.rdf,
		- XpfFileMonitor.rdf,
		- XpfAVCommand.rdf

## `2017-04-24` V3.47 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.47.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Scrolling text"
	- Add support for German language
- "News feeds horizontal banner"
	- Add support for German language

## `2017-04-14` V3.46 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.46.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Information bloc"
	- Add support for German language
- "News feeds 16-9"
	- Add support for German language-
- "Richtext area"
	- Add support for German language

## `2017-04-10` V3.45 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.45.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Info Trafic Sytadin"
	- Fix: map overlap at the right of the screen in time slot preview (PlugnCast G3 configuration)
	- Fix: was not working properly with DMB400 (Gekkota 4)

## `2017-03-15` V3.44 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.44.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Texte défilant horizontal par fichier"
	- Removed

## `2017-02-08` V3.43 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.43.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "ESII Banner vertical"
	- Add an option to display only the popup (hiding of the information for services and lines)
- Onthologies
	- "Jack35"
		- Fix: was not supported on Gekkota 4
	- "Phoenix"
		- Fix: was not supported on Gekkota 4

## `2017-01-09` V3.42 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.42.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthologies
	- "AVCommand"
		- Fix: was not supported on Gekkota 4

## `2017-01-03` V3.41 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.41.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthologies
	- Restore publication functionnality on Screen Composer with Playzilla4/DMB400
	- Add support of Playzilla4 for the onthologies below:
		- "AppColorLed"
		- "AVCommand"
		- "Datamodel"
		- "DetectionHID"
		- "Display"
		- "FileMonitor"
		- "Jack35"
		- "Keypad"
		- "Phoenix"
		- "Power Supply"
		- "RemoteControl"
		- "Shell"
		- "Timer"
- SWF models
	-  "Nombre de jours sans accident ou l'absence - Paysage"
		-  Add possibility to fill "number of accidents"
		-  Add button radio to choose
			-  last accident occuring date
			-  number of accident
		-  Add possibility to change text format
	-  "Nombre de jours sans accident ou l'absence - Portrait"
		-  Add possibility to fill "number of accidents"
		-  Add button radio to choose
			-  last accident occuring date
			-  number of accident
		-  Add possibility to change text format

## `2016-12-29` V3.40 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.40.zip)
>##### **IMPORTANT**
- When imported with Screen Composer 3.20.XX, the ontologies are rewritten implying publication issue on DMB400. To restore the publication, install the next model pack
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Info Trafic Sytadin"
	- Initial version
- "Texte défilant horizontal"
	- Fix: Arial font was not loaded properly
- "Free feeds Sytadin"
	- Deletion

## `2016-10-17` V3.39 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.39.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Fil d'actualités bandeau horizontal"
	- Change: spinner place (displayed when loading the RSS)
	- Change: display dash character between title and description only when the news is scrolled
	- Change: add line break between title and description when the news is not scrolled (fading, transition by the top/bottom/left/right)
	- Change: in/out fading duration from 1.5 second to 3 seconds
	- Fix: unexpected flickering when fading news when the media in played amongs several zones
	- Fix: base URI was not working (local RSS)
	- Fix: when RSS name can be found, display usual error message *content temporarily unavailable (code 0)*

## `2016-10-14` V3.38 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.38.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom - Mono - Landscape"
    - Add optional room prefix (in the banner)
    - Add support of font size for
        - room prefix
        - time (& date)
    - Add support of prefixes formatting: bold, italic, underline
    - Change: font size estimation in floating zone or in preview
    - Change: separator character is automatically changed when pressing a key
    - Change: decrease no event message size
    - Fix: line break was not supported properly
        - consecutive line breaks are replaced by one line break
        - note : EWS calendar replace itself [line break + space] into line break
    - Fix: when "File URL" is selected in server configuration (ex: local outlook ICS with base URI)
        - not possible to display date & time
        - not possible to not display header & location
    - Fix: Meeting could be not displayed (blocked on loading screen) due to wrong management of meeting room variable (in some rare case)
    - Fix: in some case MeetingRoom could not displayed properly in a zone whose resolution is lower than maximal layout resolution (seen on Gekkota RT especially)
    - Fix: preview rendering was not the same as the player rendering
- "MeetingRoom - Summarization - Landscape"
- "MeetingRoom - Summarization - Portrait"
    - Add: colour option for default message
    - Add: optional separator between date and time in the banner
    - Add: fonts formatting for column headers and events: bold, italic, underline
    - Add: colour panel to change colour of event lines (odd/even): text, background, border
    - Change: caps character to lower case character for combo box choices
    - Fix: attendees was not scrolled sometimes
    - Fix: title was not scrolled properly sometimes
    - Fix: logo size was too small
    - Fix: default message fonts size could change with the number of meeting per page (transition between 1 to 8 lines per pages and 9 to 15 lines per page)
    - Fix: time per page was not taken into account after a while
    - Fix: in some case MeetingRoom could not displayed properly in a zone whose resolution is lower than maximal layout resolution (seen on Gekkota RT especially)
    - Fix: could not be able to display meetings on the second page (without publishing or rebooting the player) in case all the meetings could be displayed earlier in the day
    - Fix: when changing the column title centring, the width of several columns could change unexpectedly
    - Fix: could stop getting properly the meetings properly when played n times after having displayed no meeting

## `2016-10-10` V3.37 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.37.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "ESII Banner vertical"
	- Fix: in some case, the media ESII was not displaying all the information contained in the UDP message
	- Change: error message for the avaiable space for the service title
	- Change: prevent touch screen selection (SMT210)

## `2016-09-28` V3.36 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.36.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Fil d'actualités 16-9"
	- Modification due to source code review
- "Meetingroom - Mono - Landscape"
	- Add support of external fonts loading
	- Add support of attachment display in alternance with the meeting (iCalendar only)
	- Add support of new variable types introduced in PlugnCast 3.10.32 (and above)
		- json (ixs:json),
		- localized variable (ixs:restricted_string)
	- Add radio button
		- Quit
		- Display a message (free text) with configurable duration
	- Fix base URI management (for local ICS)
	- Fix black screen when trying to view the MeetingRoom in console mode (PlugnCast G2 configuration)
	- Fix form validation of edit box each time a option is selected
	- Fix: in some case MeetingRoom could be stuck when loading optional screen (when fetching meetings) when several MeetingRoom instance was played (different calendar systems)
- "Meetingroom - Summarization - Landscape"
- "Meetingroom - Summarization - Portrait"
 	- Add support of external fonts loading
	- Add support of new variable types introduced in PlugnCast 3.10.32 (and above)
		- json (ixs:json),
		- localized variable (ixs:restricted_string)
	- Add radio button
		- Quit
		- Display a message (free text) with configurable duration
	- Add support of new field *Other* in calendar gateway interface permitting to configure MeetingRoom with new applet not yet present in the applet list
         - The following text area *Identifiant* need to be filled according to with the applet name
             - ex: for applet name Gesroom installed on ```C:\Users\Public\Documents\Innes Briva\Server\.accounts\innes_domaine\.applets\.gesroom-calendar```, the name to enter is ```gesroom-calendar```
    - Add support of option to display or not a mesage (for a configurable duration) when there is no meeting
    - Add error message when preview is not supported (ex: PlugnCast G3)
    - Add support of option to force to not stop playing again MeetingRoom (1X) until there there is no more meeting to display
    - Change: When MeetingRoom is 1X, in mode console, meeting don't play the next media anymore
    - Change: show full path of ICS in console mode
    - Change: formatted text in console mode to display all the lines
    - Change: Add support of optional picture display while MeetingRoom is waiting meeting list to display
    - Fix: base URI management was not working (local ICS)
	- Fix black screen when trying to view the MeetingRoom in console mode (PlugnCast G2 configuration)
	- Fix: it was possible to enter empty URLs or empty variable
    - Fix: sometimes the attendees could not be displayed
    - Fix: restore support of attachment (working with CalendarUI applet only)
    - Fix: HTTP server (type Briva) was not working on Gekkota G2
    - Fix: no event message could be displayed sometimes after a while when displaying meeting on several pages

## `2016-09-19` V3.35 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.35.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meetingroom - Mono - Landscape"
	- Add support of format option for Time an Date
	- Add support of text alignment for description
	- Add support of attendees display in a table (option)
	- Add support of new field *Other* in calendar gateway interface permitting to configure MeetingRoom with new applet not yet present in the applet list
         - The following text area *Identifiant* need to be filled according to with the applet name
             - ex: for applet name Gesroom installed on ```C:\Users\Public\Documents\Innes Briva\Server\.accounts\innes_domaine\.applets\.gesroom-calendar```, the name to enter is ```gesroom-calendar```
    - Add support of option to display or not a mesage (for a configurable duration) when there is no meeting
    - Add error message when preview is not supported (ex: PlugnCast G3)
    - Add support of option to force to not stop playing again MeetingRoom (1X) until there there is no more meeting to display
    - Change: When MeetingRoom is 1X, in mode console, meeting don't play the next media anymore
    - Change: show full path of ICS in console mode
    - Change: formatted text in console mode to display all the lines
    - Change: Add support of optional picture display while MeetingRoom is waiting meeting list to display
        - Note: inside a playzilla calendar, the image is not displayed
    - Change: show entire pathfile name in console mode
	- Change: console display line format
    - Fix: it was possible to enter empty URLs or empty variable
    - Fix: sometimes the attendees could not be displayed
    - Fix: restore support of attachment (working with CalendarUI applet only)
    - Fix: HTTP server (type Briva) was not working on Gekkota G2
    - Fix: no event message could be displayed sometimes after a while when displaying meeting on several pages
- "Meetingroom - Summarization - Landscape"
- "Meetingroom - Summarization - Portrait"
	- Add support of new field *Other* in calendar gateway interface permitting to configure MeetingRoom with new applet not yet present in the applet list
         - The following text area *Identifiant* need to be filled according to with the applet name
             - ex: for applet name Gesroom installed on ```C:\Users\Public\Documents\Innes Briva\Server\.accounts\innes_domaine\.applets\.gesroom-calendar```, the name to enter is ```gesroom-calendar```
    - Fix: restore support of attachment (working with CalendarUI applet only)

## `2016-09-08` V3.34 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.34.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Fil d'actualités 16/9"
    - Initial version (HTML technology in MAFF container)
    	- Support of RSS preview in PlugnCast G3 / Screen Composer G3 / PlugnCast G2
    	- Support of external font (ttf) loading
        	- default font is *Time New Roman*
    	- Support of variable custom in URL and free text
        	- string format:
            	- ```{$custom:<myVariableName>}```
	    - Support font size small/average/big (instead percentage of area height)
    	- Support display *content temporarily unavailable (code 0)* and pass to next media when RSS stream is not available
	    	- note: with behaviour 1X, pass to next media afterwards
    	- Support base URI (rss file has to be inserted as linked media)

## `2016-09-07` V3.33 [download](https://github.com/Qeedji/archives/blob/master/downloads/models-package/models-V3.33.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Fil d'actualités bandeau horizontal"
	- Add: dash character between title and description
	- Add: scrolling with overlay options left/right
	- Change: title and description are optional
	- Change: removed horizontal scroll bar in form
	- Change: background images are now centered
	- Change: convert HTML format to text format

## `2016-09-05` V3.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Texte défilant horizontal"
	- Add support of Playzilla 4.0
- Add support of URI models
	- "C8"
	- "CStar"
	- "France Info"
	- "CNews"

## `2016-04-05` V3.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add URI models
	- "LCI"
- Change URI models
	- "France 2 HD"
	- "France 4 HD"
	- "France O HD"
	- "F3 Bretagne"

## `2016-03-08` V3.30
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Onthologie
	- "DetectionHID"
		- Change: ontology variable name
			- "Time to inactivity before returning to standby"
		- Change: handle only 2 states
			- "Detecting an interactivity" or
			- "Standby mode"
		- Fix: in some case, HID interactivity detection could fail

## `2016-03-02` V3.29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add URI models
	- "6ter"
		- Initial version
	- "Cherie 25"
		- Initial version
	- "HD1"
		- Initial version
	- "L'Equipe 21"
		- Initial version
	- "Numero 23"
		- Initial version
	- "RMC Decouverte"
		- Initial version
- Remove URI models
	- "DirectStar"
	- "Direct8"

## `2016-03-01` V3.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Diaporama with rich text"
 	- Initial version (generic)

## `2016-02-26` V3.27
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Diaporama image et texte"
	- Initial version (custom)
- "Fil d'actualités 16/9"
	- Initial version (custom)

## `2015-12-15` V3.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meetingroom - Summarization - Landscape"
    - Fix playback issue with player G2 by removing support of duration 1X (played one time) and  fixed duration) for Playzilla G2
- "Meetingroom - Summarization - Portrait"
    - Fix playback issue with player G2 by removing support of duration 1X (played one time) and  fixed duration) for Playzilla G2
- "Meetingroom - Mono - Landscape"
	- Fix playback issue with player G2 by removing support of duration 1X (played one time) and  fixed duration) for Playzilla G2

## `2015-12-01` V3.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "DetectionHID"
	- Inital version

## `2015-11-25` V3.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meetingroom - Summarization - Landscape"
	- Add support Adesoft connector
	- Add support duration 1X (played one time), fixed duration
	- Add version and type in formular
	- Add: date&time format d/m/yy, d/m/yyyy, d mmm yyyy, d mmmm yyyy
	- Fix: sign size was not properly modifed according to configured number of events by page
	- Change: adjust font size dynamically according to configured number of events by page
	- Change: the display on 2 lines is working only when *small* font is selected
- "Meetingroom - Summarization - Portrait"
  	- Add support Adesoft connector
 	- Add support duration 1X (played one time), fixed duration
 	- Add version and type in formular
 	- Add: date&time format d/m/yy, d/m/yyyy, d mmm yyyy, d mmmm yyyy
 	- Change: adjust font size dynamically according to configured number of events by page
	- Change: the display on 2 lines is working only when *small* font is selected
 	- Fix: page was not entirely filled with the meetings with Full HD screen (depending on chosen number of lines by page)
 	- Fix: sign size was not properly modified according to configured number of events by page
- "Meetingroom - Mono - Landscape"
	- Add support Adesoft connector
	- Add support duration 1X (played one time), fixed duration
- "AppColorLed"
	- Inital version
- "Datamodel"
	- Inital version
- "Display"
	- Inital version
- "Jack35"
	- Inital version
- "Keypad"
	- Inital version
- "Phoenix"
	- Inital version
- "RemoteControl"
	- Inital version
- "Timer"
	- Inital version

## `2015-11-05` V3.23
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meetingroom - Summarization - Landscape"
	- Add title scrolling when the title is too large
	- Add a new field *start time*
	- Add a separator between the date and the time in the banner
	- Add a new default connector "CSV"
	- Fix: column headers was displayed when default message "no event" was displayed
	- Change: possibility to display 1 to 15 lines maximum
	- Fix: in case height is resized (displayed not in full screen), Meeting Room displays the meeting in the total height	(8/11 lines)
	- Change: maximum number of alarm is 8 now
- "Meetingroom - Summarization - Portrait"
 	- Add title scrolling when the title is too large
	- Add a new field *start time*
	- Add a separator between the date and the time in the banner
	- Add a new default connector "CSV"
	- Fix: column headers was displayed when default message "no event" was displayed
	- Change: maximum number of alarm is 8 now
	- Fix: max number of lines could not be defined (portrait )
	- Fix: in case height is resized (displayed not in full screen), Meeting Room displays the meeting in the total height	(15 lines)
- "Meetingroom - Mono - Landscape"
	- Add a new field *start time*
	- Add support date&time in header
	- Add font size selection for the room name
	- Change: header display is now optional

## `2015-10-22` V3.22
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Bloc d'information"
	- Add background color for image1 et image2
	- Add font and police size for title
	- Change: title is now displayed on 2 lines when one line is not sufficient
	- Change: previsualization resolution to 1920x1080 (instead of 100x100)
	- Change: decrease number of police size to 7 (instead of 18)
	- Change: default police size is now 24 (instead of 12)
	- Fix: police could not be loaded properly
	- Fix: italic and bold preview did not work
 	- Fix: display background checkerboard when png with transparence is selected

## `2015-10-22` V3.21
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Bloc d'information"
	- Initial version
- "Nombre de jours sans accident ou l'absence - Paysage"
	- Add possibility to choose working days and exception
- "Nombre de jours sans accident ou l'absence - Portrait"
	- Add possibility to choose working days and exception

## `2015-09-29` V3.20
>##### **IMPORTANT**
- For customer delivered with "Texte défilant horizontal par fichier" v1.10.14, installing this package will remove the overlay feature in case the model instance is edited (automatical return to "Texte défilant horizontal par fichier" v1.10.13). Indeed, the mask product name supporting overlay has changed and is called now "Texte défilant horizontal". The default version of this new mask is 1.10.10. Consequently all the instances of this mask requiring overlay need to be made again
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- New mask "Texte défilant horizontal"
	- support overlay feature permitting to support fluid text scrolling
>##### **COMPATIBILITY**
- "Texte défilant horizontal"
	- Studio 2.51.X (or above)
	- Gekkota 3.12.24 (overlay supported on DMB300) (or above)
	- Playzilla G2 not supported

## `2015-07-17` V3.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Removing of obsolete flash RSS and flash RSS 16-9

## `2015-06-17` V3.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "QLite-Banner"
    - Initial version

## `2015-05-29` V3.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meeting room - Summarization - Landscape", "Meeting room - Summarization - Portrait"
    - Add support HTTP ICS by [path+file name] or [path + variable] as well
    - Add support three new duration for partial pages (1 to 3 lines, 4 to 6 lines, 7 to 10 lines)
    - Change: removed the attachment column
    - Fix recurring meetings for Zimbra (specific recurring computation needed for Zimbra)
    - Fix mask flickering when using multiple ICS files as source data
    - Fix issue when centering title
    - Fix publication issue from PNC G3 to players G3
    - Fix preview Screen Composer G3 (3.11.12)
- "Meeting room - Mono - Landscape"
    - Add support HTTP ICS by [path+file name] or [path + variable] as well
    - Fix mask flickering when using multiple ICS files as source data.
    - Fix publication issue from PNC G3 to players G3
    - Fix preview Screen Composer G3 (3.11.12)
    - Fix recurring meetings for Zimbra (specific recurring computation needed for Zimbra)
    - Removed the possibility to display the attachments

## `2015-05-26` V3.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Fil d'actualité bandeau horizontal"
	- Initial version (HTML technology in MAFF container)
- "ESII - Banner vertical"
	- Initial version
- "Texte fondu bandeau"
	- Fix SWF was played twice
	- Fix bad intrinsic media duration when played alternatively with other media

## `2014-03-16` V3.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Meeting room - Mono - Landscape"
	- Add red cross diplay when media resource is not available (PlugnCast G3 environment)
	- Fix huge memory leak when meeting room is played alternatively with other medias (causing instability of player)
	- Fix media plaback is stopped automatically after a timeout of 5 minutes when resource is not available (PlugnCast G2 environment)

## `2014-03-10` V3.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Zone de texte par fichier"
	- Fix (in file manager) unvisibility of some directory containing some special characters

## `2014-03-02` V3.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Zone riche texte"
	- Fix PlugnCast compliancy
- "Zone de texte par fichier"
	- Fix PlugnCast compliancy
	- Fix text truncature when text is centered
	- Fix random linked media issue
- "Meeting Room Multi (Landscape or portrait)"
	- Add support of transparency for background
	- Add support Web Server (ex: Zimbra Calendar)
	- Add 5 minutes timeout in G2 download manager to get ICS
	- Change form for the definition of source media, HTTP (applet or ICS) or PlugnCast applet
	- Fix huge memory leak when meeting room is played alternatively with other medias (causing instability of player)
	- Fix download error management

## `2014-01-30` V3.10.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Menu du jour - Large"
 	- Add check box for default titles
	- Fix image blobs not working in form (background and logo)
	- Fix In Mask Font: not linked to AS code
	- Fix Extra font in graphic element issue causing display issue in PlugnCast Studio
