# SignMeeting Google Calendar
*RELEASE NOTE*

SignMeeting Google Calendar is suitable for **Google Workspace** calendar. SignMeeting Google Calendar does not support for **Google Gmail** calendar anymore.

Since October 2020, due to some changes in **Google Workspace** calendar, the legacy SignMeeting could not support the adding for any new resource in SignMeeting Google Calendar. To fix the issue, you have to upgrade to the SignMeeting V1.13.11.

##`2021-01-13` V1.13.11
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.12.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.XX`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form:
        - The label version **V1.13.XX** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.11.jpg)
        - In case the version is still 1.12.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: any new calendar resource was not supported anymore
- Add support for Gekkota 4 devices
- Add support for *Room label* display profil to support SMH300 hub paired to SLATE devices
- Add support for an option to display each label (*Room Screen* display profil)
- Add support for NFC badging with *Room label* display profil as well as for *Room Screen* display profil
- Add support of SMTP tab (email sender configuration)
    - To know the supported authentications, please refer Gekkota application note *Email and supported authentication*
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to check in or checkout meetings with an *EnOcean* presence sensor
- Add support for screen saver feature
    - `Room screen` display profil profilyout:
        - `Background content when there is no current meeting nor near future meeting`
            - `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
                - note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
    - `Summary screen by event` & `Summary screen by resource` display profil:
        - `Background content when there is no current or future meeting`
            - `Label to display when no screen saver`
            - `Show the screen saver after <x> min`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
- Add support for a background image in each *Main page* tab of each display profil
    - `Summary screen by event`
    - `Summary screen by resource`
    - `Room screen`
- Add support in the `Main page` tab of the `Room screen` display profil for a default message to display when there is no meeting
    - `Text when there is no current meeting`
    - `Text when there is no next meeting`
- Add support for an optional background image in the notification screen (`notificationpage_background` value in custom CSS)
- Add support for modifying the *Menu* button title of the main screen (*Room Screen* display profil)
- Add support for modifying the *Notification* button title of the main screen (*Room Screen* display profil)
- Add support for a new variable to manage meeting organiser depending on the calendar type, whose value is retrieved from the LDAP after badging
- Add support for new version of custom CSS supporting
    - splitter between current meeting and next meeting (adding and configuration)
    - colour configuration for the buttons: *book now*, *confirm my presence*, *report as empty*
    - a new default background
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
- Add support for an optional background image for the screen sending the email thanks to custom CSS
- Add support for an option for each text label to permit to activate or inactivate its display (*RoomScreen* display profil)
- Add support for a free text *label* in the *RoomScreen display profil* (Menu > Notification page) allowing to display a text on the button sending a email notification
- Add support of new *Summary screen by resource* display profil type
    - landscape
    - portrait
- Add *badgeID* as default value for *cross reference attribute* field for LDAP filtering
- Add support for a notification page in *RoomScreen* tab allowing to notify people by email in case issue or specific request
- Add support of optional duration before displaying *report as empty* button
- Add new date formats
    - ddd mm yyyy
    - ddd d mmmm yyyy
    - dddd mmmm yyyy
    - dddd d mmmm yyyy
    - dd mmmm yy
- Add support of *German* language
- Add support of custom Javascript file permitting to control SignMeeting buttons (JavaScript provided only for some specific customers)
- Fix: in some case, some page containing meetings could not be displayed
- Fix: SignMeeting could not start when the display name was not supported for a room
- Fix: an unexpected title label with missing suffix for *Book a meeting* panel was displayed when the user was not authenticated
- Fix: the meeting update was stopped in standby
- Fix: an unexpected scroll bar could be displayed when the banner was displayed at the bottom of the screen
- Fix: when the meeting description was too long, the meeting was displayed too much on the right
- Fix: when the banner was displayed at the bottom of the screen, a scroll bar could be displayed on the right of the banner
- Fix: the current windows value was one day too much
- Fix: sometimes, the second next meeting was not displayed
- Fix: in some case, a registered player could not appear in the SignMeeting form
- Fix: in some case, a SLATE106 could have a wrong index
- Fix: the label of the email notification button was too large
- Fix: add possibility to several SLATE106 device to display the information of a same room
- Fix: time zone management
- Fix: in some case some meetings could pass from next meeting to current meeting in late of few minutes (maximum: until refresh time)
- Fix: Meeting was not displayed over the background for all rooms in case one all day long meeting was present in the day for one room
>##### **KNOWN LIMITATIONS**
The checkout feature with meeting shortening only works when the meeting has been done with the *Book Now* button
>##### **COMPATIBILITIES**
- Connectors :
	- Google Calendar V3 (Google G Suite / Google Workspace)
	- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
- Host Software :
	- Screen Composer 3.20.15 (or above)
- Platform targets :
	-  Gekkota  4.13.14 (or above)
		- Room Label: available for SMH300
	-  Gekkota  4.13.13 (or above)
		- Room Screen: available for SMT210
	- Gekkota 4.13.12 (or above)
		- Summary screen by event: DMB400, SMA300, WINDOWS platforms
		- Summary screen by resource: DMB400, SMA300, WINDOWS platforms
	- Gekkota 3.12.57 (or above)
		- Summary screen by event: DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
		- Summary screen by resource: DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
		- Room Screen: SMT210
		- Room Label: SMH300
- Custom Style Sheets (CSS Styles) : 1.13.10 (or above)
- Custom Scripts : 1.13.XX (or above)


#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual 1.13.11-001F/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-google/signmeeting-google-calendar-user-manual-1.13.11-001F_en.pdf)
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.11 for *Room Screen* display profil  [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.11.css)
- CSS File V1.13.10 for *Room Label* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
- meetingControlSM V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlSM_1.13.10.js)
#### **CUSTOM SCRIPTS TO SUPPORT E500 638 ENOCEAN MOTION SENSOR**
- meetingControlEnOceanMotionSensor V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_1.13.11.js)
	- the script is suitable for *RoomLabel* display profil (SMH300) and is not suitable for tablet and media players.
	- when meeting confirmation is supported your calendar system, it allows to check in automatically a meeting when people are detected in the room.
	- the check in by script can work only when the meeting is really pending (does not work inside the anticipated display period)
	- the *pendingFreeDelay* variable at the beginning of the script allows to define the timeout (by default, 15 minutes) before checking out (declaring that the room is empty and has to be shortened)
#### **NOTE WHEN USING PRIVATE NAVIGATION**
- Open Web brower in private navigation mode prevent meeting creator account to access to room calendar
#### **DATASOURCE HOSTED ON DISTANT SERVER**
- Some slowness could be noticed when booking (or cancelling) a meeting in case datasource is referring to distant server with poor reaction capability

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-google/signmeeting_google-screen_composer-setup-1.12.19.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of vizualization of meeting scheduled accross several days, or all day long
	- Note: In this case, SignMeeting is splitting the meeting accross several days as much as there is day to display the meeting from *working day start time* to *working day end time*.
	- For example, a meeting from Monday 2:00PM to Wednesday 12:00, with working day 7:00 21:00, is splitted into 3 meetings:
		- Monday   : 1st meeting from 2:00 to 21:00
		- Tuesday  : 2th meeting from 7:00 to 21:00
		- Wednesday: 3rd meeting from 7:00 to 12:00
	- It is not possible to modify or delete meeting scheduled accross several days
- Add ```Attribute 1``` and ```Attribute 2``` research option in interface *Datasource* / *Advanced* permitting to get additional information coming from LDAP directory (which can be inserted in the meeting title afterwards)
	- Attribute 1 and Attribute 2 can have any attributes of LDAP attribute editor. It is advised to use string or integer format
	- Even if this option is activated, in case the Attribute value is empty, that does not prevent from successful badge authentication
- Add a tooltip to display *Attribute(s)* values
- Add meeting title automatical labelling (option) based on variable (*Datasource*/*Advanced*)
	- RFID
		- ```ldap:rfid-tag:attribute1```
		- ```ldap:rfid-tag:attribute2```
	- USER
		- ```ldap:user:attribute1```
		- ```ldap:user:attribute2```
	- PIN CODE (RFU)
	 	- ```ldap:pin-code:attribute1```
		- ```ldap:pin-code:attribute2```
	- Calendar event time range
		- ```calendar-event:time:start```
		- ```calendar-event:time:end```
		- ```calendar-event:time:interval```
		- ```calendar-event:location```
	- Random number
		- ```math:random:2digit-number```
- Add support of new attributes in interface Room screen/Menu/meeting edition
	-  number of attendees (at the right of attendees)
	-  phone number*
	-  entity (description)*
		- *mapping inside Google for the room categories has to be configured properly
- Add support of option "automatic meeting cancel in case the user has not confirmed its presence after a timeout (15, 30, 45, 60 min)
	- if the current duration is less than the minimum duration, the meeting is deleted
	- else it is shortened
- Change: Add prefix "app" for the log in console mode
- Change hourglass rendering (gif displayed when navigating in SignMeeting menu)
- Change: pictures are not downloaded anymore from server when not requested in SignMeeting
- Change: calendar system connection trial design
- Change: *room is empty* by *report as empty*
- Change: in case once the meeting has been created with SignMeeting and if variable ```calendar-event:<>``` is used, the meeting tilte is not modified anymore according to the calendar event new start time (or new end time)
- Fix: connection error was not well raised to the user when LDAP server was not responding
- Fix: In console mode, check LDAP filter matching for each RFID badging
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)
- Fix: in some rare case, on some players, could not be able to collect the meeting immediately after player reboot
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)
- Fix: in case there is no attachments, allow display of big location name on two lines (room screen/current meeting)
- Fix: description could overlap on *confirm my presence* button (room screen/current meeting)
- Fix: sometimes *new event adding* pop-up was prompted instead of *delete meeting* pop-up (when trying to remove a meeting)
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some case, when current meeting is finished and this meeting is the last one, the meeting could remain inconsistently in next meeting
>##### **COMPATIBILITIES**
- Screen Composer V3.20.14 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.57
	- *Summary screen by event*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *Summary screen by resource*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *RoomScreen*: SMT210
	- *RoomLabel*: SMH300
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP

##`2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-google/signmeeting_google-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add attendees list display with scrolling
- Add support of a signs library (72 icons) or signs importation (for resources in summary screen)
- Add configurable timeout to return to main page in case no user activity has been detected
- Add support of RFID badge
	- authentication (with and without LDAP)
	- modulation type selection (permitting to focus only on some RFID badge modulation and improve RFID badge detection efficiency as well)
	- display modulation and baudrate when badging is detected (diagnostic mode activated) (requires Gekkota 3.12.25)
	- timeout deconnexion when no activity for a duration (60 sec by default)
	- automatic deconnexion when RFID badge is detected and user was previously connected
- Add support of LDAP
	- with (or without) authentication by Distinguish Name (DN) and password (admin or any other user)
		- in case authentication anonymous, connexion as anonymous needs to be activated inside LDAP system as well
		- support error message in case LDAP connexion failure
	- RFID badge authentication by [DN + attribute]
		- support filtering by entity type in order to decrease LDAP answer time
		- support error message in case search failure
		- support optional research of LDAP user owning RFID badge in another DN
	- attribute validity (and/or)
		- activation
			- with supported format
				- vrai, yes, on, 1 (for for valid status)
				- faux, no, off, 0 (for invalid status)
		- start date / end date with supported format
			- d/m/yy
			- dd/mm/yyyy
			- Account expires timestamp (number of ns since 1st Jan 1601)
			- Active directory generalized time (ex: 20151009225600.0Z)
- Add support of creation of several instances of different screen composition types (until 10 at all)
	- room screen
	- summary screen
		- landscape
		- portrait
- Add possibility to remove reservation and consultation button (summary screen)
- Add support diagnostic console mode
- Add support new API CSS class in device edition permitting to display, when there is a meeting in room screen, to give possibility to have a CSS theme different for each player
	- require theme_css_generic-V1.10.12.css (available for download)
- Change: implemement memory garbage collector between each page display (internal INNES)
- Change: support new Google calendar JSON API (modification made by Google by September 2015)
	- note: does not support anymore old Google calendar API
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
- Change: display meeting creator as organizer instead of room account mail
- Change: all error messages are now handled in pop-up
- Change: *room is emptied* and *confirm my presence* capability
- Change SignMeeting view
	- Default horizontal tab: *server*, *room screen*
	- Default vertical tab: *Datasource*, *LDAP*, *RFID*
	- Parameter button to add new instance of the different screen composition types
- Change: reservation and consultation page is inactivated by default in summary screen
- Change default color for *return to the main page after being idle for* black (instead grey)
- Change: add automatically the scheme *ldap://* when missing
- Fix unexpected error message title *Error lost translation: this.thisStr is undefined* when resource is missing or when using button *room is emptied* and/or button *confirm my presence*
- Fix: reservation and consultation page date was dynamically become SignMeeting current date (room screen)
- Fix: theme is not displayed when background content is not checked
- Fix: in mode 11 lignes, page was not entirely filled on all the height (only 85 %)
- Fix: bottom of attendees text was grumbled by description in next meeting (Room screen)
- Fix: 2th pictogram size was 10% smaller than 1st pictogram size when using pictogram from directory
- Fix: pressing "room is emptied" the second time was doing nothing (in case reccurent meeting)
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

##`2015-06-09` V1.11.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-google/signmeeting_google-screen_composer-setup-1.11.17.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add confirmation screen when pressing "Room is empty" button
- Add support "book now"
- Add option to come back to background screen when no alarm is present ("book now" button stays available)
- Add more debug traces for debug (try/catch especially when meeting is finished)
- Add: return to main  screen when timeout "no user activity" of screen "book a meeting" has expired (based on IDLE api)
- Change show errors only when initializing server connection
- Change: alarms for multi are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" button availability issue when playing with navigation menu
- Add possibility to set position of the banner at the top (or at the bottom) of the screen.

##`2014-10-17` V1.10.51 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-google/signmeeting_google-screen_composer-setup-1.10.51.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Compatibility with Screen Composer 3.11.x

##`2014-06-03` V1.10.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add protection to prevent user from adding a meeting outside the current time range
- Add protection to prevent free time calculation to go outside the current time range
- Add customization of banner (mono display)
- Add warning message in case facing configuration failure
- Add french language
- Add undefined resource check
- Add new tab “Navigation” for the application parameters (for Mono and Multi)
- Add a parameter to display (or not) the action shortcut buttons
- Add display of app version in the Form.
- Add scrolling for the attendees (in edit/consult meeting)
- Add room description and room capacity
- Improve initial loading time (in case background image displayed)
- Change for multi display in case no meeting: do same as for mono
- Change mono header display (two columns)
- Change remove popup message when clicking on utility button
- Change picto shortcuts to be light gray
- Change enlarge and align columns (multi)
- Fix in banner: when facing error state, the error message was not display correctly
- Fix incorrect view in spanish and dutch player language
- Fix scrolling error on time scale
- Fix incorrect date format when HH:MM mmm dd yyyy was selected DapePi4e was displayed
- Fix exception handling on DHCP when IP isn't defined yet (black screen is DHCP server is slow)
- Fix meeting not updated
- Fix the time range displayed as defined in the form
- Fix font size taken into account when displaying event
- Fix attendees list now displays the full names.
- Fix incorrect initialization of scrolling when normally not active.
- Fix incorrect error message on startup ('Object - Object')
- Fix in Mono : 'Show attendees' was not kept

##`2014-03-10` V1.10.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
