# Addons: Content models packs for Screen Composer G4
*RELEASE NOTE*

To ensure that a widget has properly been upgraded, install the content model in your `Screen Composer G4`, edit the form of each appropriate widget and press on the **Save** button.

##`2023-02-17` Content models packs
- `Education` 001F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001F.zip)
- `General` 001L [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001L.zip)
- `Signage` 002H [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002H.zip)
- `Tourism information` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_tourism_information-screen_composer_g4-setup-001C.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom Summarization - Landscape"
	- Fix: the meeting from 00h00 to 01h00 was displayed 9h00 to 1h00 when 9h00 is the start time of the working day
 	- Fix: with the working range from 00h00 to 23h00, the event from 23h00 to 23hXX was displayed twice: once with 00h00-23h00 and once with 23h00-23h00
- "MeetingRoom Summarization - Portrait"
	- Fix: the meeting from 00h00 to 01h00 was displayed 9h00 to 1h00 when 9h00 is the start time of the working day
 	- Fix: with the working range from 00h00 to 23h00, the event from 23h00 to 23hXX was displayed twice: once with 00h00-23h00 and once with 23h00-23h00
- "MeetingRoom Mono - Landscape"
	- Fix: the meeting from 00h00 to 01h00 was displayed 9h00 to 1h00 when 9h00 is the start time of the working day
 	- Fix: with the working range from 00h00 to 23h00, the event from 23h00 to 23hXX was displayed twice: once with 00h00-23h00 and once with 23h00-23h00
>##### **MAFF MODELS VERSUS OS TYPE**
| Model name                                    | Model ID                    | Category             | Version  | gekkota-5   | gekkota-4   | gekkota-3 | aosp-9
| :--------------------------------------       | :---                        | :------------------- | :------- | :--         | :--         | :--       | :--
| Education - Exams                             | education_exams             | Education            | 1.20.14  | yes         | yes         | yes       | yes
| Education - Information                       | education_information       | Education            | 1.20.14  | yes         | yes         | yes       | yes
| Education - Teachers Absence                  | education_absences          | Education            | 1.20.13  | yes         | yes         | yes       | yes
| Calendar countdown                            | calendar_countdown          | General              | 1.20.13  | yes         | yes         | yes       | yes
| Digital clock                                 | digital_clock-landscape     | General              | 1.20.10  | yes         | yes         | yes       | yes
| News feeds - 16-9                             | rss_wide                    | General              | 1.20.13  | yes         | yes         | yes       | yes
| News feeds - Horizontal banner                | news_feed_horizontal_banner | General              | 1.20.13  | yes         | yes         | yes       | yes&sup1;
| Number of days without accident               | number-of-days-without-accident-landscape |General | 1.20.14  | yes         | yes         | yes       | yes
| Scrolling text from file                      | txt-file-hscroller          | General              | 1.20.15  | yes         | yes         | yes       | yes&sup1;
| Weather - Horizontal banner                   | meteored_weather            | General              | 1.20.15  | yes         | yes         | yes       | yes&sup1;
| World clock                                   | worldclock                  | General              | 1.20.12  | yes         | yes         | yes       | yes
| Real Estate AC3                               | real_estate_ads_ac3         | General              | 1.20.10  | yes         | yes         | no        | yes
| ESII - Vertical banner                        | esii_banner_vertical        | Signage              | 1.20.11  | yes         | yes         | yes       | no
| MeetingRoom Summarization - Landscape         | landscape.multi.mr          | Signage              | 1.20.15  | yes         | yes         | yes       | yes
| MeetingRoom Summarization - Portrait          | portrait.multi.mr           | Signage              | 1.20.15  | yes         | yes         | yes       | yes
| MeetingRoom Mono - Landscape                  | landscape.mono.mr           | Signage              | 1.20.15  | yes         | yes         | yes       | yes
| Festivals and events - tourinsoft - Landscape | tourinsoft_feeds-landscape  | Tourism information  | 1.20.14  | yes         | yes&sup2;   | no        | yes
| Festivals and events - tourinsoft - Portrait  | tourinsoft_feeds-portrait   | Tourism information  | 1.20.14  | yes         | yes&sup2;   | no		| yes
| Traffic Info Sytadin                          | traffic_info_sytadin        | Traffic Info France  | 1.20.12  | yes         | yes         | yes       | yes

&sup1; hardware acceleration not supported

&sup2; not supported by SMT210 devices

>##### **PACK COMPATIBILITY**
- Screen Composer 4.11.10 (or above)
    - SignCom 1.12.11
- Gekkota OS V4.14.14 (or above)
    - for DMB400 devices
	- for SMA300 devices
- Gekkota OS V4.13.10 (or above)
    - for DME204 devices
- Gekkota OS V4.13.13 (or above)
    - for SMT210 devices
- Gekkota RT V4.14.10 (or above)
    - for MS-Windows PC
- Gekkota OS V5.10.10 (or above)
	- for DMB300 devices
	- for DMB400 devices
- Gekkota OS V3.12.57 (or above)
	- for DMB300 devices
    - for DMC200 devices
    - for SMP200 devices
    - for SMA200 devices
- Gekkota RT V3.12.59 (or above)
    - for MS-Windows PC
- AQS 9.10.12 (or above)
    - for TAB10s devices
    - for AMP300 devices

#INFORMATION
***********************************************************************
#### **EXAMPLES AND DOCUMENTATION**
| Model name         |      Type             |    Download      |
| :---------------   | :-------------------- | :--------------- |
| MeetingRoom (all)            | User manual 1.20.11_001A_en  | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/meetingroom-usermanual-1.20.11-001A_en.pdf) |
| MeetingRoom Summarization    | Orientation pictograms 001B | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/MeetingRoom_signalization_pictograms~001B.zip) |
| ESII - vertical banner       | User manual 1.20.10~002B_fr  | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/esii-vertical-banner-usermanual-1.20.10~002B_fr.pdf) |
| ESII - vertical banner       | User manual 1.20.10~002B_en  | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/esii-vertical-banner-usermanual-1.20.10~002B_en.pdf) |
| ESII - vertical banner       | User manual 1.20.10~002B_de  | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/esii-vertical-banner-usermanual-1.20.10~002B_de.pdf) |
#### **REGIONALITY**
Some content models may requires to set the appropriate regionality in the device Web user interface so that:

- some labels are translated automatically in the regionality language and
- the date and time values are displayed in the country format
#### TXTFILE HSCROLLER
The *summary* and/or the *description* field of the event can be also displayed for events that have not yet started only when the .ics file has appropriate alarm

After an App publication, the first line of the first run of the scrolling text may be not rendered with the right font on Gekkota 3 and Gekkota 4 middleware
#### **CONTENT-MODELS INSTALLATION OR UPGRADING**
For further information about content model pack installation or content model upgrade, refer to the Screen Composer user manual.
#### RSS
Setting a wrong charset in the form may prevent the mask to display the news. If not sure, uncheck the charset checkbox, and try again
#### AC3 REAL ESTATE
On UHD monitors, the images of the real estate advertisings may be not displayed with the right size
#### WEATHER
The logger for this mask is *widget.meteored_weather*.<br>
For a weather forecast off-line demo:

- set the Identifier field to 0000,
- add the appropriate <town_name_in_lower_case>.xml file in a `/weather` directory located at the root of the weather widget,
- change the couple of the date values and of the week days values inside each .xml file according to the day today. For example:

```<day value="20220502" name="Lundi">
../..
<day value="20220503" name="Mardi">```

- add the `/weather` directory as linked medias of the widget
- to get the weather xml file for a specific town, connect to the meteored portal with your account, select a town (called localization). Copy-paste the URL below the title `XML file with 5-day forecasts (information at 3-hour intervals)` (e.g. `http://api.tameteo.com/index.php?api_lang=fr&localidad=1200&affiliate_id=55ruwdqubp34&v=2.0`) in your Web browser and press enter. Download the xml file.

| Model name         |      Type             |    Download      |
| :---------------   | :-------------------- | :--------------- |
| Weather | `weather.zip` example  | [download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/weather.zip) |

#### CALENDAR COUNTDOWN
The *Calendar countdown* displays a time countdown value, with one second accuracy, when the next event occurrence is in less than 365 days in the future.
An option allows to define the time countdown value *accuracy*:

- *Second* (default), i.e.: *1 day 25 hours 56 minutes 10 seconds*
- *Minute*, i.e.: *1 day 25 hours 56 minutes*
    - if the *Calendar countdown* value is less than 1 minute, the next event is considered as imminent
- *Hour*, i.e.: *1 day 25 hours*
    - if the *Calendar countdown* value is less than 1 hour, the next event is considered as imminent
- *Day*: i.e. *1 day*
    - if the *Calendar countdown* is running the D-day, the next event is considered as imminent

There is 2 main modes:

- *Date and time* mode: the *Calendar countdown* displays a time countdown until the programmed *Date and time* value. Depending on whether the *Date and time* is imminent (depends on the selected accuracy) or just reached (*[00] days [00] hour [00] minute [00] second*), the *Calendar countdown* can display an optional specific content for a while before quitting. Once done, the *Calendar countdown* quits automatically. When over, if the *Calendar countdown* is played again, the *Calendar countdown* displays nothing and quit.
- *Calendar variable* mode: (check that the variable manager is supported by your Screen Composer G4 version) when using a *calendar variable* allowing to define a slots start-time/end time, slots validity date and slots recurrency, the *Calendar countdown* displays the time countdown until the next occurrence. When the start time of the next slot occurrence is reached, the *Calendar countdown* reaches *[00] days [00] hour [00] minute [00] second* and quit. Depending on whether the start time of the next occurrence is imminent (depends on the selected accuracy) or just reached, the *Calendar countdown* can display an optional specific content for a while before quitting. If the *Calendar countdown* is played again, the *Calendar countdown* evaluates whether there is a new next slot occurrence. If yes, the *Calendar countdown* displays the time countdown until the next occurrence again and so on. If not, the *Calendar countdown* displays nothing and quit.

It is advised that the device is on time, with its system clock synchronized through a NTP time server.<br>The form is not translated for Spanish and Russian languages.

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2023-02-01` Content models packs
- `Education` 001F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001F.zip)
- `General` 001L [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001L.zip)
- `Signage` 002G [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002G.zip)
- `Tourism information` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_tourism_information-screen_composer_g4-setup-001C.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Education - Exams"
	- In some case, after a migration from the version 1.10.12 (or below) to the version 1.10.13, the widget could not run anymore on Gekkota 3 middleware

##`2023-01-25` Content models packs
- `Education` 001E [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001E.zip)
- `General` 001L [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001L.zip)
- `Signage` 002G [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002G.zip)
- `Tourism information` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_tourism_information-screen_composer_g4-setup-001C.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Festivals and events - tourinsoft - Landscape"
	- Initial version supporting tourism information for the fourteen next days for these departments of France: 33, 40, 64
- "Festivals and events - tourinsoft - Portrait"
    - Initial version supporting tourism information for the fourteen next days for these departments of France: 33, 40, 64

##`2022-12-20` Content models packs
- `Education` 001E [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001E.zip)
- `General` 001L [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001L.zip)
- `Signage` 002G [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002G.zip)

- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "ESII - Vertical banner"
	- Add support for *Gekkota 5* middleware
- "Education - Exams"
	- Add support for .svg image as embedded image or linked image
	- Change: the colour picker button was too thin
	- Fix: the file with upper case extension could not be dropped in the form
	- Fix: the image could not be dropped and the linked image/embedded image radio was not selected automatically
- "Education - Information"
	- Add support for .svg image as embedded image or linked image
	- Change: the colour picker button was too thin
	- Fix: the file with upper case extension could not be dropped in the form
- "Education - Teachers Absence"
	- Add support for .svg image as embedded image or linked image
	- Change: the colour picker button was too thin
	- Fix: the file with upper case extension could not be dropped in the form

##`2022-09-05` Content models packs
- `Education` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001D.zip)
- `General` 001L [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001L.zip)
- `Signage` 002F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002F.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Scrolling text from file"
    - Add support for .ics file allowing to display the summary and/or the description for events happening now
	    - the summary and/or the description can be also displayed for events that have not started yet when the .ics file has appropriate alarms
    - Add support for Spanish language for the form
    - Change: the option *If possible use an overlay* is now activated by default
    - Change: the *[Medias]/* scheme is now added in the file URL when a file is dropped in it
    - Change: the colour picker button was too thin
    - Fix: it was not possible to drop an text file with an extension containing caps in the widget form
    - Fix: when dropped into a file input, the variable value was dropped and shifted of one character on the left in the form
- "News feeds - 16-9"
    - Change: the colour picker button was too thin
    - Fix: the RSS news was not displayed when some specific fonts was chosen for the *Display text* fieldset of the *Heading* field set
    - Fix: it was not possible to drop an image with an extension containing caps in the widget form
    - Fix: the button to watch the password was not working
    - Fix: the input password was not greyed when the password checkbox option was unchecked
- "News feeds - Horizontal banner"
    - Change: the colour picker button was too thin
    - Fix: the widget was not displaying the RSS news when the *display the header* option was activated
    - Fix: the input password was not greyed when the password checkbox option was unchecked
    - Fix: it was not possible to drop an xml file to the URL input
    - Fix: the tail of the letter was hidden for the URL input
    - Fix: when using a base URI with a xml file having a relative path, the xml file was not added automatically as linked file
    - Fix: when *scroll from the right* or *scroll from the left* was selected, a code 4 was returned when the *Display the news description* option was checked and no description was available in the news
- World clock
	- Add support for .svg image as embedded image or linked image
	- Fix: the *browse* and the *sweep* button was activated even when the image checkbox was not selected
	- Fix: it was not possible to drop an image with an extension containing caps in the widget form
	- Fix: the widget was not displaying the right time value in the calendar time range preview
- Weather
	- Fix: the tail of the letter was hidden for the *identifier* input
	- Fix: change the log function to match the logs name *widget.meteored_weather*

##`2022-08-19` Content models packs
- `Education` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001D.zip)
- `General` 001K [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001K.zip)
- `Signage` 002F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002F.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Number of days without accident"
    - Fix: when dropped into a text input, the variable value was dropped and shifted of one character on the left in the form
    - Fix: it was not possible to drop an image with an extension containing caps in the widget form
    - Fix: it was not possible to drop an image with .svg extension
    - Fix: it was not possible to drop an image as embedded image

##`2022-06-30` Content models packs
- `Education` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001D.zip)
- `General` 001J [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001J.zip)
- `Signage` 002F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002F.zip)
- `Tourism information` 001B [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_tourism_information-screen_composer_g4-setup-001B.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "MeetingRoom Summarization - Landscape" and "MeetingRoom Summarization - Portrait"
    - Add support for alarm to be able to anticipate the display for events that have not yet started or to extend the display of events that are over
    - Change: displays a code 4 error message when no .ics file is available after several download attempts
    - Change: displays a code 4 error message when a wrong .ics file is given in the file input
    - Fix: the meetings could be not displayed when the URL was containing a & character
    - Fix: some form elements was wrongly displayed when the form width was shortened with the vertical splitter
    - Fix: when dropped into a text input, the variable value was dropped and shifted of one character on the left in the form
    - Fix: the *Save* button is now activated only when:
        - a modification has been brought in the form
        - the content model version has been upgraded
        - the uri basis has been changed
    - Fix: the form opening duration could be twenty seconds when using some specific orientation JSON variable
    - Fix: the meeting across several day could be displayed only for the current day
- "MeetingRoom Mono - Landscape"
    - Fix: the *Save* button is now activated only when:
        - a modification has been brought in the form
        - the content model version has been upgraded
        - the uri basis has been changed

##`2022-06-17` Content models packs
- `Education` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001D.zip)
- `General` 001J [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001J.zip)
- `Signage` 002E [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002E.zip)
- `Traffic Info France` 001D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "AC3 - Real Estate"
    - Initial version
- "MeetingRoom Mono - Landscape"
    - Add support for Qeedji system AOSP devices
    - Add support for alarm to be able to anticipate the display for not started events or to extend the display for over events
    - Add support for deviceInfo and date variable type in http URL
    - Add support for deviceInfo, date and custom variable type in text input
    - Change: remove support for calendar variable in file input
    - Change: remove support for embedded image coming from localized folder
    - Change: when using a JSON variable with a calendar id and rooms name, only the events taking place in these room can be displayed
    - Change: when drop into the form, the root of absolute file in the repository is now *[Medias]/*
    - Change: displays a code 4 error message when no .ics file is available after several download attempts
    - Change: displays a code 4 error message when a wrong .ics file is given in the file input
    - Fix: the time and date was stuck to the publication time and date values when a logo was displayed in the banner
    - Fix: the meetings was not displayed when the URI basis was containing a # character
    - Fix: the meetings could be not displayed when the URL was containing a & character
    - Fix: the meeting taking place all day long in the *daily planner* ICS file was not displayed
    - Fix: a space character was missing after the organizer prefix
    - Fix: the value of the Briva calendar connector type set by the user was reset in case the http server input or the file input was selected
    - Fix: the widget was quitting when both, the *Quit* value for *Behaviour when there is no event* and the *Loops* value for *Behaviour when there are events* were selected
    - Fix: the tail of characters was not displayed properly in the form input
    - Fix: some form elements was wrongly displayed when the form width was shortened with the vertical splitter
    - Fix: the file with upper case extension could not be dropped in the form
    - Fix: the widget was returning a code 4 error when trying to load a .ics file located in a folder containing special characters
    - Fix: when dropped into a text input, the variable value was dropped and shifted of one character on the left in the form
    - Fix: add support for .svg image as linked image in the form
    - Fix: some old linked file was present in the linked files metadata of the widget
    - Fix: the meeting could not be displayed when only the date without the time was displayed in the banner

##`2022-03-15` Content models packs
- `Education` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001C.zip)
- `General` 001H [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001H.zip)
- `Signage` 002D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002D.zip)
- `Traffic Info France` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001C.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- "Calendar countdown"
	- Fix: since the 31th of October 2021 (winter daylight saving time change), the widget could not work with the hours, minutes or seconds accuracy if the deadline was set between the 27th march 2022 (summer daylight saving time change) and the 30th Oct. 2022 (winter daylight saving time change)
	- Fix: when a variable was dropped in a form input, the text *{$custom:variable_name}* was not pasted at the right place in the character string

##`2022-03-04` Content models packs
- `Education` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001C.zip)
- `General` 001G [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001G.zip)
- `Traffic Info France` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001C.zip)
- `Signage` 002D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `Digital clock`
	- Initial version

##`2022-01-18` Content models packs
- `Education` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001C.zip)
- `General` 001G [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001G.zip)
- `Traffic Info France` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001C.zip)
- `Signage` 002D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `ESII - Vertical banner`
	- Initial version

##`2022-01-18` Content models packs
- `Education` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001C.zip)
- `General` 001F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001F.zip)
- `Traffic Info France` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001C.zip)
- `Signage` 002D [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002D.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- `ESII - Vertical banner`
	- Initial version

##`2021-12-01` Content models packs
- `Education` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_education-screen_composer_g4-setup-001C.zip)
- `General` 001F [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_general-screen_composer_g4-setup-001F.zip)
- `Traffic Info France` 001C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_traffic_info_france-screen_composer_g4-setup-001C.zip)
- `Signage` 002C [Download](https://github.com/Qeedji/archives/blob/master/downloads/addons/content_models_packs/content_models_signage-screen_composer_g4-setup-002C.zip)

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version

