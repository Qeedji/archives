# SignMeeting MS-EXCHANGE
*RELEASE NOTE*

**After October 2020, any new or inactive tenants of MS-Exchange Online will have Basic Authentication disabled by default. In the second half of 2021, active MS-Exchange Online users will have Basic Authentication disabled. In both cases, the authentication will be replaced by the OAuth authentication. That implies to create an Azure Active Directory (Azure AD) application for your SignMeeting Appi then enter the three required values resulting from the application creation in the SignMeeting form (V1.13.11 or above) meaning: the application (client) ID value, the client secret value and the tenant ID value. For further information, refer to the SignMeeting user manual.**

## `2021-01-13` V1.13.11
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.12.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.XX`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form:
        - The label version **V1.13.XX** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.11.jpg)
        - In case the version is still 1.12.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
    - Warning: some legacy custom-script V1.12.XX which are allowing for some customer to create some custom button may be not compatible with the SignMeeting V1.13.10 because some of them are using some deprecated xpf function. The customers which are using custom scripts are invited to use the new ones in the version 1.13.10 available for download below in the part **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**. In case your script is not available here, contact support@innes.pro to get the custom script in the new version 1.13.XX.
        - Custom buttons examples :
            - ```Maintain/Resume```,
            - ```Open/Close the door```,
            - ```Open/Resume```
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new fields to support OAuth authentication with MS-Exchange Online
    - *Use authentication from Azure Application* option
        - *Application (client) ID*
        - *Directory (tenant) ID*
        - *Client secret*
    - when the *Use authentication from Azure Application* option is not checked, the used authentication is Basic
- Add support for *Book now* button for *Room label* display profil
- Add support for NFC badging with *Room label* display profil as well as for *Room Screen* display profil
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to check in or check out meetings with an *EnOcean* presence sensor
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
	- MS-Exchange 2007/2010/2013/2016/2019/o365
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
- User manual 1.13.11-001H/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting-ews-user-manual-1.13.11-001H_en.pdf)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/Powershell_Innes_AAD-1.10.12.zip)
- PowerShell script for Azure Active Directory Application user manual 1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/innes_appi_azure_ad-powershell_module-user_manual-001B_en.pdf)
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.11 for *Room Screen* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.11.css)
- CSS File V1.13.10 for *Room Label* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS EXAMPLE WITH DISTECH CONTROL DEVICES EXAMPLE**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
#### **CUSTOM SCRIPTS EXAmPLE WITH GPIO**
- meetingControlSM V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlSM_1.13.10.js)
#### **CUSTOM SCRIPTS TO SUPPORT E500 638 ENOCEAN MOTION SENSOR**
- meetingControlEnOceanMotionSensor V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_1.13.11.js)
	- the script is suitable for *RoomLabel* display profil (SMH300) and is not suitable for tablet and media players.
	- when meeting confirmation is supported your calendar system, it allows to check in automatically a meeting when people are detected in the room.
	- the check in by script can work only when the meeting is really pending (does not work inside the anticipated display period)
	- the *pendingFreeDelay* variable at the beginning of the script allows to define the timeout (by default, 15 minutes) before checking out (declaring that the room is empty and has to be shortened)

# OLD VERSIONS HISTORY
*********************************************************************************************************
## `2019-06-17` V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.13.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Gekkota 4 devices
- Add support for an option ```Hide the meeting content for privacy level``` in the menu ```Datasource > Advanced``` allowing to completely hide the meeting *Organizer*, *Description*, *Title* and *Attendees* when the sensitivity of the meeting is either
    - ```personal```,
    - ```private``` or
    - ```confidential```:
    - Note: As option, it is possible to set a *Title* substitution value
        - Default value: *occupied*
- Add support in the `Room Label` display profil for ```Check In``` button to confirm a meeting, and ```Check Out``` button to free the room resource
- Add support for screen saver feature
    - `Room screen` display profil:
        - `Background content when there is no current meeting nor near future meeting`
            - `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
                - note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
    - `Summary screen by event` & `Summary screen by resource` display profils:
        - `Background content when there is no current or future meeting`
            - `Label to display when no screen saver`
            - `Show the screen saver after <x> min`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
- Add support for a new field ```Use a different identifier for the authentication```, option allowing to specify a different user account identifier for the authentication
- Add support for a background image in each Main page tab of each display profil
    - `Summary screen by event`
    - `Summary screen by resource`
    - `Room screen`
- Add support in the `Main page` tab of the `Room screen` display profil for a default message to display when there is no meeting
    - `Text when there is no current meeting`
    - `Text when there is no next meeting`
- Add support for an optional background image in the notification screen (`notificationpage_background` value in custom CSS)
- Add support for an option to display each label (*Room Screen* display profil)
- Add support for modifying the *Menu* button title of the main screen (*Room Screen* display profil)
- Add support for modifying the *Notification* button title of the main screen (*Room Screen* display profil)
- Add *badgeID* as the default value for the LDAP filtering *cross reference attribute* field
- Add support for a new variable to manage meeting organiser depending on the calendar type, whose the value is retrieved from the LDAP after badging [EWS]
- Add new date formats:
    - *ddd d mm yyyy* (ex: Thu 23/12/2019)
    - *dddd d mmmm yyyy* (ex: Thursday, December 23, 2019)
    - *dd mmmm yy* (ex: May 23, 19)
- Add support new version of custom CSS supporting
    - a new default background
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
- Change: in German regionality, the date format containing slash characters (ex: `dd/mm/yyyy`) is displayed in a date format containing dots (ex: `dd.mm.yyyy`)
- Change: the default CSS colour for the current meeting of the room screen display profil is now dark grey (instead of black)
- Change:
    - The `Scenario` tab permitting to set a default media to play has been deleted from App SignMeeting letting taking place a screen saver feature
    - The default message when there is no meeting has been removed from the individual device configuration and added in the `Main page` tab of the `Summary screen by event` and `Summary screen by resource` display profil. The user has to enter a new label if required.
    - The `background content` has been removed from the individual device configuration and added in the `Main page` of each display profil
- Fix: SignMeeting was not running properly when an `Out of office` automatic reply was programmed for the delegate account
- Fix: the request windows (in days) used for data cache was one day too much
- Fix: sometimes, the second next meeting was not displayed in *Room Label* display profil
- Fix: in some cases, a registered player could not appear in the SignMeeting form
- Fix; in some cases, a SLATE106 device could have a wrong index
- Fix: the label of the *Notification* button could be too large
- Fix: add possibility to several SLATE106 device to display the information of a same room
- Fix: in some cases, the organizer and the title could not display for one or several resource (*summary screen by resource* display profil)

## `2017-08-04` V1.12.27 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.27.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Room label* display profil for SMH300 device (connected to SLATE106 devices)
- Fix: time zone management
- Add new date format
	- ddd d mmmm yyyy (ex: Fri 4 August 2017)
	- dddd d mmmm yyyy (ex: Friday 4 August 2017)
>##### **WILL BE CORRECTED IN NEXT VERSIONS**
- Fix: When using until 20 SLATE106 devices, setting the polling period below 10 minutes could prevent slate106 devices to be updated properly
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen tab) & return to background if no meeting is activated
	- Book now is not available
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen tab) & return to background if no meeting is activated & display room names *all* is activated
	- Book now is not available
	- Room name is not displayed on header
- Fix: When Next Meeting is cancelled directly in MS-Exchange calendar, it is advised to go in menu to request a SignMeeting refresh and be able to book "now a meeting"
- Fix: when confirmed, an all_day long meeting (with recurrence) should appear in current meeting AND in next meeting
>##### **COMPATIBILITIES**
- Screen Composer V3.20.14 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.57
	- *Summary screen by event*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *Summary screen by resource*: DMC200, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
	- *Room Screen*: SMT210
	- *Room Label*: SMH300
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP
>#### **CSS FILE FOR SIGNMEETING 1.12.XX**
- CSS File for *Room Screen* display profil V1.12.20 (for SignMeeting version V1.12.20 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/theme_css_generic_V1.12.20.css)
- CSS File for *Room Screen* display profil V1.12.12 (for SignMeeting version V1.12.19 or below) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/theme_css_generic_V1.12.12.css)
- CSS File for *Summary screen by resource* display profil V1.12.22 (for SignMeeting version V1.10.22 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/theme_roomgrid_sm_1.12.22.css)
- CSS File for *Room Label* display profil V1.12.27B (for SignMeeting version V1.12.27 or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/label_default_sm_1.12.27B.css)

## `2017-05-22` V1.12.26 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.26.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: translating issue from *french* language to *german* language
- Fix: it was not possible to program a meeting the day after with SignMeeting (german language only)

## `2017-04-12` V1.12.25 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.25.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *German* language
- Add support for custom Javascript file permitting to control SignMeeting buttons (JavaScript provided only for some specific customers)
- Fix: scrolling attendees overlap on button “Room screen”
- Fix: timezone was not taken into account properly

## `2017-01-12` V1.12.23 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.23.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Summary screen by resource
	- Change: default backgrouns colour for line to green to grey (like Room Screen)
	- Change: red colour for the meeting (dark red instead of deep red)
	- Add option "stay on the current page" (do not alternate with other timeslots)
	- Add new day format:
		- *ddd mm yyyy*
		- *dddd mmmm yyyy*
	- Change: the option *back to the main page  after the inactivity timeout expired* is inactivated when no interactive menu is selected

## `2016-11-09` V1.12.22 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.22.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new display profil type: "Summary screen by resource"
	- landscape
	- portrait

## `2016-10-05` V1.12.21 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.21.appi)
>##### **IMPORTANT**
- In order to use SignMeeting EWS V1.12.21, a previous version SignMeeting EWS need to be installed before (else SignMeeting could never manage to collect the meeting)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: meeting was not automatically shortened properly (in the minute) when meeting is not confirmed after the timeout
- Fix: in some cases, some meetings could pass from next meeting to current meeting in late of few minutes (maximum: until refresh time)
- Fix: (to workaround a Microsoft EWS365 issue) delete unuseful timezone management making that all the meetings for a room for the request windows could not be displayed in case one of meeting of the request windows has a inconsistent value for timezone ```&#x0```
- Fix: Meeting was not displayed over the background for all rooms in case one all_day long meeting was present in the day for one room
- Fix: all day meeting accross several day with no recurrence was not supported
	- ex: ```start```: *Monday 9th*, ```all day``` long (no recurrence) until ```end:``` *Friday 13th*

## `2016-08-05` V1.12.20 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.20.appi)
>##### **IMPORTANT**
- In case the CSS file version 1.10.12 (or below) is used in your SignMeeting, when migrating to SignMeeting 1.10.20, the default colour of buttons will be transparent (no colour). To solve the issue, you have to upgrade your CSS to version 1.10.20 and define the button colour inside
- SMTP tab need to be validated before being able to activate notification page (Room Screen tab)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add orange colour (status bar and side led) when meeting is not confirmed
- Add support for SMTP tab (email sender configuration)
	- Note for Exchange 365: given the SSL negotiation is done afterwards, the URL has to follow the scheme smtp:// (and not smtps://) (ex: smtp://smtp.office365.com:587)
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
- Fix: In order to be able to display background content, general theme needed to be activated first. By contrary, in order to be able to display Playzilla background, general theme needed to be inactivated

## `2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.19.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for vizualization of meeting scheduled accross several days, or all day long
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
- Change: pictures are not downloaded anymore from server when not requested in SignMeeting
- Change: calendar system connection trial design
- Change: *room is empty* by *report as empty*
- Change: in case once the meeting has been created with SignMeeting and if variable ```calendar-event:<>``` is used, the meeting tilte is not modified anymore according to the calendar event new start time (or new end time)
- Fix: connection error was not well raised to the user when LDAP server was not responding
- Fix: In console mode, check LDAP filter matching for each RFID badging

## `2016-03-10` V1.12.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.16.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new items in event detail
	-  number of attendees (at the right of attendees)
	-  phone number
- Add support for different automatic meeting naming
	- fixed: ```Meeting from HH:MM to HH:MM - room name``` or
	- custom: free text with random number suffix
- Fix: *new event adding* pop-up was prompted sometimes instead of *delete meeting* pop-up when trying to remove a meeting
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some cases, when current meeting is finished and this meeting is the last one, and *return to background content when non meeting is activated*,
	- the meeting could remain inconsistently in *next meeting* or
	- attached image could stay stucked over background content
- Fix: in some rare case, on some players, could not be able to collect the meeting immediately after player reboot
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)

## `2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support new API CSS class in device edition permitting to display, when there is a meeting in room screen, to give possibility to have a CSS theme different for each player
	- require theme_css_generic-V1.10.12.css (available for download)
- Change: implemement memory garbage collector between each page display (internal INNES)
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
- Fix: in mode 11 lignes, page was not entirely filling all the height (only 85 %)
- Fix: theme is not displayed when background content is not checked
- Fix: tipo error in console (diagnostics)
- Fix: bottom of attendees text was grumbled by description in next meeting (Room screen)
- Fix: 2th pictogram size was 10% smaller than 1st pictogram size when using pictogram from directory
- Fix: pressing "room is emptied" the second time was doing nothing (in case reccurent meeting)
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

## `2015-10-12` V1.12.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ews/signmeeting_ews-screen_composer-setup-1.12.12.appi)
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
- Add support for diagnostic console mode
- Change: all error messages are now handled in pop-up
- Change: *room is emptied* capability is supported
- Change SignMeeting view
	- Default horizontal tab: *server*, *room screen*
	- Default vertical tab: *Datasource*, *LDAP*, *RFID*
	- Parameter button to add new instance of the different screen composition types
- Change: reservation and consultation page is inactivated by default in summary screen
- Change default colour for *return to the main page after being idle for* black (instead grey)
- Change: add automatically the scheme *ldap://* when missing
- Fix unexpected error message title *Error lost translation: this.thisStr is undefined* when resource is missing or when using button *room is emptied* and/or button *confirm my presence*
- Fix: delete unexpected text at the beginning of the description with EWS2007 (ex: ```Quand : mercredi 16 septembre 2015 14:00-15:30. Paris, Madrid Où : Room 1 *~*~*~*~*~*~*~*~*~*```)
- Fix: reservation and consultation page date was dynamically become SignMeeting current date (room screen)

## `2015-06-09` V1.11.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add: return to main screen when timeout "no user activity" of screen "book a meeting" has expired
- Change: alarms for mono are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" button availability issue when playing with navigation menu

## `2015-02-09` V1.11.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to set position of the banner at the top (or at the bottom) of the screen.
- Add alarm management & alarm display (architecture 1.11X)
- Add new button “book now” (architecture 1.11X)

## `2015-02-05` V1.10.58
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change banner design (shows the colour of side leds)
- Fix issue on date/time display on the banner

## `2015-01-07` V1.10.57
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix shift between text and border (landscape & portrait)

## `2014-12-19` V1.10.55
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add picture from attachement

## `2014-10-17` V1.10.51
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix recurrent meeting calculations

## `2014-09-29` V1.10.50
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix compatibility with Screen Composer 3.11.x
- Fix 2 files not present

## `2014-09-18` V1.10.49
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support new app format : .appi
- Add management user account primary SMTP address
- Change mono form design
- Change error messages accuracy
- Change data conversion for All Day events fix
- Fix Panel LEDs behavior with SMT210 players

## `2014-07-02` V1.10.47
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: huge rework (and fix)

## `2013-11-29` V1.10.27
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix infinite loop when looking for recurring events (VIEW)

## `2013-10-22` V1.10.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add set LED to display red when busy, blue when idle
- Add compatibility with MS-Exchange server SP1 and SP2
- Add view button to just to view a meeting
- Add server check when adding a new item (modify, delete). If the item is declined, it is removed
- Add protection to ensure that the edit/text fields do not shrink when there is no content
- Add display the name of the resource defined in the MS-Exchange server
- Add the possibility to select which toolbar button will be present
- Add toolbar options, check box for Add, Edit, Del and View
- Add an example URL text and made the text boxes wider in datasource definition
- Improve error reporting for all MS-Exchange server communication. On authentication error the app will not retry and connect. Add a message when the configured player mac address is incorrect
- Change display the application version when click on "MENU"
- Change menus to improve touch screen performance
- Change display the defined background (colour and image) when the Idle message is defined
- Change delete event display a message when the delete fails
- Change move the mono background and field parameters from events tab to style tab
- Change alarm related minutes to start at 1
- Change in alarm configuration, if choose day start/end then disable the definition of minutes
- Fix background images that contain characters % ; € (or the like) which didn’t work
- Fix troubles with not bookable rooms
- Fix calculation for the meeting width and position to be accurate, leave a small space between each. Display correctly on 800x600 screen

## `2013-10-01` V1.10.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
