# SignMeeting JOOXTER
*RELEASE NOTE*

## `2021-06-11` V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-setup-1.13.11.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Book now* button for *Room label* display profile
- Add support for NFC badging with *Room label* display profile as well as for *Room Screen* display profile
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to check in or check out meetings with an *EnOcean* presence sensor
- Add support for Gekkota 4 devices
- Add support in the `Room Label` display profile for ```Check In``` button to confirm a meeting, and ```Check Out``` button to free the room resource
- Add support for screen saver feature
    - `Room screen` display profile:
        - `Background content when there is no current meeting nor near future meeting`
            - `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
                - note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
    - `Summary screen by event` & `Summary screen by resource` display profiles:
        - `Background content when there is no current or future meeting`
            - `Label to display when no screen saver`
            - `Show the screen saver after <x> min`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
- Add support for a background image in each Main page tab of each display profile
    - `Summary screen by event`
    - `Summary screen by resource`
    - `Room screen`
- Add support in the `Main page` tab of the `Room screen` display profile for a default message to display when there is no meeting
    - `Text when there is no current meeting`
    - `Text when there is no next meeting`
- Add support for an optional background image in the notification screen (`notificationpage_background` value in custom CSS)
- Add support for an option to display each label (*Room Screen* display profile)
- Add support for capability to modify the *Menu* button title of the main screen (*Room Screen* display profile)
- Add support for capability to modify the *Notification* button title of the main screen (*Room Screen* display profile)
- Add *badgeID* as the default value for the LDAP filtering *cross reference attribute* field
- Add new date formats:
    - *ddd d mm yyyy* (ex: Thu 23/12/2019)
    - *dddd d mmmm yyyy* (ex: Thursday, December 23, 2019)
    - *dd mmmm yy* (ex: May 23, 19)
- Add support new version of custom CSS supporting
    - a new default background
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
- Change: the *Check in* and *Check out* button is not activated by default for *Room label* display profile
- Change: for *Room screen* display profile, the default text color in the banner is now *black* instead of *blue*
- Change: for *Summary screen by event* display profile, the default text color in the banner is now *white* instead of *orange*
- Change: for *Summary screen by resource* display profile, the default text color in the banner is now *white* instead of *orange* and the default background color in the banner is now *grey*
- Change: in German regionality, the date format containing slash characters (ex: `dd/mm/yyyy`) is displayed in a date format containing dots (ex: `dd.mm.yyyy`)
- Change: the default CSS colour for the current meeting of the room screen display profile is now dark grey (instead of black)
- Change:
    - the `Scenario` tab permitting to set a default media to play has been deleted from App SignMeeting letting taking place a screen saver feature
    - the default message when there is no meeting has been removed from the individual device configuration and added in the `Main page` tab of the `Summary screen by event` and `Summary screen by resource` display profil. The user has to enter a new label if required.
    - the `background content` has been removed from the individual device configuration and added in the `Main page` of each display profile
- Fix: in some case, some page containing meetings could not be displayed
- Fix: SignMeeting could not start when the display name was not supported for a room
- Fix: an unexpected title label with missing suffix for *Book a meeting* panel was displayed when the user was not authenticated
- Fix: the meeting update was stopped in standby
- Fix: an unexpected scroll bar could be displayed when the banner was displayed at the bottom of the screen
- Fix: when the meeting description was too long, the meeting was displayed too much on the right
- Fix: when the banner was displayed at the bottom of the screen, a scroll bar could be displayed on the right of the banner
- Fix: the request windows (in days) used for data cache was one day too much
- Fix: sometimes, the second next meeting was not displayed in *Room Label* display profile
- Fix: in some cases, a registered player could not appear in the SignMeeting form
- Fix; in some cases, a SLATE106 device could have a wrong index
- Fix: the label of the *Notification* button could be too large
- Fix: it was not possible for several SLATE106 device to display the information of a same room
- Fix: in some cases, the organizer and the title could not be displayed for one or several resource (*summary screen by resource* display profile)
>##### **COMPATIBILITIES**
- Screen Composer V3.11.11 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.25 (or above) (for the last features regarding SignMeeting, especially for modulation display capability)
- SMT210 platform (for *Room screen* layout, touch screen, RFID badge detection)
- SMH300 (for *Room label* layout)
- DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms (for *Summary screen by event* or *Summary screen by resources* layouts)
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP


#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (002A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-jooxter/signmeeting-jooxter-user-manual-002A_en.pdf)

#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.11 for *Room Screen* display profile  [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.11.css)
- CSS File V1.13.10 for *Room Label* display profile [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* display profile [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
- meetingControlSM V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlSM_1.13.10.js)
#### **CUSTOM SCRIPTS TO SUPPORT E500 638 ENOCEAN MOTION SENSOR**
- meetingControlEnOceanMotionSensor V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_1.13.11.js)
	- the script is suitable for *RoomLabel* display profile (SMH300) and is not suitable for tablet and media players.
	- when meeting confirmation is supported your calendar system, it allows to check in automatically a meeting when people are detected in the room.
	- the check in by script can work only when the meeting is really pending (does not work inside the anticipated display period)
	- the *pendingFreeDelay* variable at the beginning of the script allows to define the timeout (by default, 15 minutes) before checking out (declaring that the room is empty and has to be shortened)

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2017-07-12` V1.12.27 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-setup-1.12.27.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: improve resource drag'n drop accuracy to support properly SMH300/SLATE106 devices
- Change: when a new device is newly registered, a screen is prompted to enter the appropriate layout for this new device (default: *Room screen* or *Room label*)
- Change: some JOOXTER meeting could be not displayed if some optional fields was not filled in JOOXTER calendar
>##### **COMPATIBILITIES**
- Screen Composer V3.11.11 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.25 (or above) (for the last features regarding SignMeeting, especially for modulation display capability)
- SMT210 platform (for *Room screen* layout, touch screen, RFID badge detection)
- SMH300 (for *Room label* layout)
- DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms (for *Summary screen by event* or *Summary screen by resources* layouts)
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP

## `2017-05-22` V1.12.26 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-setup-1.12.26.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial release
