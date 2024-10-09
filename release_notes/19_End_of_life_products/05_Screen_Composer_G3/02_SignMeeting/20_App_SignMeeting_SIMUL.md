# SignMeeting SIMULATOR
*RELEASE NOTE*

## `2020-01-13` V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.13.11.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.12.XX`,
	- Install `Screen Composer V3.20.15`
	- Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.11`
	- To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
	- Edit the SignMeeting's form once again to check the version shown in the form.
		- The label version **V1.13.10** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.11.jpg)
		- In case the version is still 1.12.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
	- Warning: some legacy custom-script V1.12.XX which are allowing for some customer to create some custom button may be not compatible with the SignMeeting V1.13.10 because some of them are using some deprecated xpf function. The customers which are using custom scripts are invited to use the new ones in the version 1.13.10 available for download below in the part **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**. In case your script is not available here, contact support@innes.pro to get the custom script in the new version 1.13.10.
    	- Custom buttons examples :
        	- ```Maintain/Resume```,
        	- ```Open/Close the door```,
        	- ```Open/Resume```
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Book now* button for *Room label* display profil
- Add support for NFC badging with *Room label* display profil as well as for *Room Screen* display profil
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to checkin or checkout meetings with an *EnOcean* presence sensor
- Change: the *Check in* and *Check out* button is not activated by default for *Room label* display profil
- Change: for *Room screen* display profil, the default text color in the banner is now *black* instead of *blue*
- Change: for *Summary screen by event* display profil, the default text color in the banner is now *white* instead of *orange*
- Change: for *Summary screen by resource* display profil, the default text color in the banner is now *white* instead of *orange* and the default background color in the banner is now *grey*
- Fix: in some case, some page containing meetings could not be displayed
- Fix: SignMeeting could not start when the display name was not supported for a room
- Fix: an unexpected title label with missing suffix for *Book a meeting* panel was displayed when the user was not authenticated
- Fix: the meeting update was stopped in standby
- Fix: an unexpected scroll bar could be displayed when the banner was displayed at the bottom of the screen
- Fix: when the meeting description was too long, the meeting was displayed too much on the right
- Fix: when the banner was displayed at the bottom of the screen, a scroll bar could be displayed on the right of the banner
>##### **COMPATIBILITIES**
- Connectors :
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
- User manual 1.13.11-001E/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting-simul-user-manual-1.13.11-001E_en.pdf)
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.10 for *Room Screen* display profil  [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.10.css)
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

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2019-06-17` V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.13.10.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.12.XX`,
	- Install `Screen Composer V3.20.15`
	- Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.10`
	- To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
	- Edit the SignMeeting's form once again to check the version shown in the form.
		- The label version **V1.13.10** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.10.jpg)
		- In case the version is still 1.12.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
	- Warning: some legacy custom-script V1.12.XX which are allowing for some customer to create some custom button may be not compatible with the SignMeeting V1.13.10 because some of them are using some deprecated xpf function. The customers which are using custom scripts are invited to use the new ones in the version 1.13.10 available for download below in the part **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**. In case your script is not available here, contact support@innes.pro to get the custom script in the new version 1.13.10.
    	- Custom buttons examples :
        	- ```Maintain/Resume```,
        	- ```Open/Close the door```,
        	- ```Open/Resume```
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Gekkota 4 devices
- Add support in the `Room Label` display profil for ```Check In``` button to confirm a meeting, and ```Check Out``` button to free the room resource
- Add support for screen saver feature
	- `Room screen` display profil:
		- `Background content when there is no current meeting nor near future meeting`
			- `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
				- `Image or video media to display`
					- *file selection*
				- `Use an interactiv marker`
					- Label to display <free text>
				- note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
	- `Summary screen by event` & `Summary screen by resource` display profil:
		- `Background content when there is no current or future meeting`
			- `Label to display when no screen saver`
			- `Show the screen saver after <x> min`
				- `Image or video media to display`
					- *file selection*
				- `Use an interactiv marker`
					- Label to display <free text>
- Add support for a background image in each Main page tab of each display profil
	- `Summary screen by event`
	- `Summary screen by resource`
	- `Room screen`
- Add support in the `Main page` tab of the `Room screen` display profil for a default message to be displayed when there is no meeting
	- `Text when there is no current meeting`
	- `Text when there is no next meeting`
- Add support for an optional background image in the notification screen (`notificationpage_background` value in custom CSS)
- Add support for an option to display or not each label (*Room Screen* display profil)
- Add support for modifying the *Menu* button title of the main screen (*Room Screen* display profil)
- Add support for modifying the *Notification* button title of the main screen (*Room Screen* display profil)
- Add *badgeID* value as the default value for the LDAP filtering *cross reference attribute* field
- Add new date formats
	- *ddd d mm yyyy* (ex: Thu 23/12/2019)
    - *dddd d mmmm yyyy* (ex: Thursday, December 23, 2019)
    - *dd mmmm yy* (ex: May 23, 19)
- Add support new version of custom CSS supporting
    - a new default background
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
- Change: in german regionality, the date format containing slash characters (ex: `dd/mm/yyyy`) is displayed in a date format containing dots (ex: `dd.mm.yyyy`)
- Change: the default CSS color for the current meeting of the room screen display profil is now dark grey (instead of black)
- Change:
	- The `Scenario` tab permitting to set a default media to play has been deleted from App SignMeeting letting taking place a screen saver feature
	- The default message when there is no meeting has been removed from the individual device configuration and added in the `Main page` tab of the `Summary screen by event` and `Summary screen by resource` display profil. The user has to enter a new label if required.
	- The `background content` has been removed from the individual device configuration and added in the `Main page` of each display profil
- Fix: the request windows value used for data cache was one day too much
- Fix: sometimes, the second next meeting was not displayed in *RoomLabel* display profil
- Fix: in some cases, a registered player could not apppear in the SignMeeting form
- Fix; in some cases, a SLATE106 device could have a wrong index
- Fix: the label of the *Notification* button could be too large
- Fix: add possibility for several SLATE106 device to display the meeting information of a same room

## `2017-08-04` V1.12.27 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.27.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Room label* display profil for SMH300 device (connected with SLATE106 devices)
- Fix: time zone management
- Add new date format
	- ddd d mmmm yyyy (ex: Fri 4 August 2017)
	- dddd d mmmm yyyy (ex: Friday 4 August 2017)
>##### **COMPATIBILITIES**
- Screen Composer V3.20.14 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.57
	- *Summary screen by event*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *Summary screen by resource*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *Room Screen*: SMT210
	- *Room Label*: SMH300
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP
>#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File for *Room Screen* display profil V1.12.20 (for SignMeeting version V1.12.20 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/theme_css_generic_V1.12.20.css)
- CSS File for *Room Screen* display profil V1.12.12 (for SignMeeting version V1.12.19 or below) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/theme_css_generic_V1.12.12.css)
- CSS File for *Summary screen by resource* display profil V1.12.22 (for SignMeeting version V1.10.22 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/theme_roomgrid_sm_1.12.22.css)
- CSS File for *Room Label* display profil V1.12.27B (for SignMeeting version V1.12.27 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/label_default_sm_1.12.27B.css)

## `2017-05-22` V1.12.26 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.26.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *German* language
- Fix: it was not possible to program a meeting the day after with SignMeeting (german language only)

## `2017-01-12` V1.12.23 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.23.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new day format (Summary screen by resource)
	- *ddd mm yyyy*
	- *dddd mmmm yyyy*
- Add orange colour (status bar and side led) when meeting is not confirmed
- Add support for SMTP tab (email sender configuration)
	- To know the supported authentications, please refer Gekkota application note *Email and supported authentication*
- Add notification page in Room Screen tab permitting to enter new item. Each item is corresponding to a new button which is added automatically in email interface
	- label, subject, recipient address, pictogram
- Add email pictogram permitting to send email with predefined
	- label,
	- subject
		- Note: in case LDAP is defined, LDAP variable (by example: RFID badge number) can be inserted dynamically in the subject
	- recipient address
	- pictogram
	- Note: email pictogram appears only when recipient list of *Notification page* is not empty (Room Screen tab/Menu)
	- Note: when RFID badging required, email pictogram is only active when a user is authenticated
- Add support new version of CSS (theme_css_generic_V1.12.20.css) supporting
	- splitter between current meeting and next meeting (adding and configuration)
	- colour configuration for the buttons: *book now*, *confirm my presence*, *report as empty*
- Add support for *confirm my presence* button
	- Once meeting is confirmed, *confirm my presence* button becomes inactive (greyed)
- Add support for optional duration before displaying *report as empty* button
- Change: menu pictogram by calendar pictogram (on main page of Room Screen tab)
- Change: default backgrouns colour for line to green to grey (like Room Screen) (Summary screen by resource)
- Change: red colour for the meeting (dark red instead of deep red) (Summary screen by resource)- Add option "stay on the current page" (do not alternate with other timeslots) (Summary screen by resource)
- Change: the option *back to the main page  after the inactivity timeout expired* is inactivated when no interactive menu is selected (Summary screen by resource)
- Fix: meeting was not automatically shortened properly (in the minute) when meeting is not confirmed after the timeout
- Fix: in some cases, some meetings could pass from next meeting to current meeting in late of few minutes (maximum: until refresh time)
- Fix: Meeting was not displayed over the background for all rooms in case one all_day long meeting was present in the day for one room
- Fix: all day meeting accross several day with no recurrence was not supported
	- ex: ```start```: *Monday 9th*, ```all day``` long (no recurrence) until ```end:``` *Friday 13th*
- Fix: In order to be able to display background content, general theme needed to be activated first. By contrary, in order to be able to display Playzilla background, general theme needed to be inactivated

## `2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.19.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add ```Attribute 1``` and ```Attribute 2``` research option in interface *Datasource* / *Advanced* permitting to get additional information coming from LDAP directory (which can be inserted in the meeting title afterwards)
	- Attribute 1 and Attribute 2 can have any attributes of LDAP attribute editor. It is advised to use string or integer format
	- Even if this option is activated, in case the Attribute value is empty, that does not prevent from successful badge authentication
- Add a tooltip to display *Attribute(s)* values
- Change: remove *Preferences* tab in *Datasource* tab
- Change: meeting title automatical labelling (option) is now based on variable
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
- Change: Add prefix "app" for the log in console mode
- Change hourglass rendering (gif displayed when navigating in SignMeeting menu)
- Change: *room is empty* by *report as empty*
- Change: in case once the meeting has been created with SignMeeting and if variable ```calendar-event:<>``` is used, the meeting tilte is not modified anymore according to the calendar event new start time (or new end time)
- Fix: connection error was not well raised to the user when LDAP server was not responding
- Fix: In console mode, check LDAP filter matching for each RFID badging

## `2016-03-10` V1.12.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.16.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)

## `2016-02-26` V1.12.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.15.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new items in event detail
	-  number of attendees (at the right of attendees)
	-  phone number
- Add support for option "automatic meeting cancel in case the user has not confirmed its presence after a timeout (15, 30, 45, 60 min)
	- if the current duration is less than the minimum duration, the meeting is deleted
	- else it is shortened
- Add support for different automatic meeting naming
	- fixed: ```Meeting from HH:MM to HH:MM - room name``` or
	- custom: free text with random number suffix
- Change: minimum granularity for meeting duration of simulator is 30 minutes (instead of 15)
- Fix: in case there is no attachments, allow display of big location name on two lines (room screen/current meeting)
- Fix: *new event adding* pop-up was prompt sometimes instead of *delete meeting* pop-up when trying to remove a meeting
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some cases, when current meeting is finished and this meeting is the last one, the meeting could remain inconsistently in next meeting
- Fix: sometimes after a publishing, event was not displayed before refresh timeout (specific to SIMUL where access time to server is close to 0 sec)

## `2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support new API CSS class in device edition permitting to display, when there is a meeting in room screen, to give possibility to have a CSS theme different for each player
	- require theme_css_generic-V1.10.12.css (available for download)
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
- Fix: in mode 11 lignes, page was not entirely filling all the height (only 85 %)
- Fix: theme is not displayed when background content is not checked
- Fix: tipo error in console (diagnostics)
- Fix: bottom of attendees text was grumbled by description in next meeting (Room screen)
- Fix: 2th sign was 10% smaller than 1st pictogram when using pictogram from directory
- Fix: pressing "room is emptied" the second time was doing nothing (in case reccurent meeting)
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

## `2015-10-12` V1.12.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-simulator/signmeeting_simul-screen_composer-setup-1.12.12.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add attendees list display with scrolling
- Add support for a signs library (72 icons) or signs importation (for resources in summary screen)
- Add configurable timeout to return to main page in case no user activity has been detected
- Add support for RFID badge
	- authentication (with and without LDAP)
	- modulation type selection (permitting to focus only on some RFID badge modulation and improve RFID badge detection efficiency as well)
	- display modulation and baudrate when badging is detected (diagnostic mode activated) (requires Gekkota 3.12.25)
	- timeout deconnexion when no activity for a duration (60 sec by default)
	- automatic deconnexion when RFID badge is detected and user was previously connected
- Add support for LDAP
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
- Add support for creation of several instances of different screen composition types (until 10 at all)
	- room screen
	- summary screen
		- landscape
		- portrait
- Add possibility to remove reservation and consultation button (summary screen)
- Add support diagnostic console mode
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

## `2015-06-09` V1.11.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a confirmation screen when pressing "Room is empty" button
- Add: return to main  screen when timeout "no user activity" of screen "book a meeting" has expired (based on IDLE api)
- Change: alarms for multi are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix blocking events collecting when selecting the last day of the range
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" and "confirm my presence" button availability issue when playing with navigation menu

## `2015-01-16` V1.11.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add shortcut button to make a express booking with fixed duration
- Add a confirmation button
- Change design of the mono view to display current and next meeting

## `2014-10-17` V1.10.51
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix version was not display correctly (Form)
- Set the color of the app icons black color
- Compatibility with Screen Composer 3.11.x

## `2014-02-15` V1.10.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add multi landscape and portrait functionnality
- Improve touch screen response on scroll buttons
- Change design
- Change align pictograms on multi
- Change remove the button "Add", "Del", "Modify" & "View" when not active
- Change separate the datasource and the resource into two separate lists

## `2013-11-21` V1.10.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initital version
