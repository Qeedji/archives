# SignMeeting GRR
*RELEASE NOTE*

##`2021-01-19` V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-grr/signmeeting_grr-screen_composer-setup-1.13.11.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.11.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.10`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form.
        - The label version **V1.13.10** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.11.jpg)
        - In case the version is still 1.11.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Book now* button for *Room label* display profil
- Add support for NFC badging with *Room label* display profil as well as for *Room Screen* ladisplay profil
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to check out meetings with an *EnOcean* presence sensor
- Change: the *Check out* button is not activated by default for *Room label* display profil
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
	- GRR V1.9, V3.4
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
- User manual 1.13.11-001E/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-grr/signmeeting-grr-user-manual-1.13.11-001E_en.pdf)
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.11 for *Room Screen* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.11.css)
- CSS File V1.13.10 for *Room Label* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLES**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
- meetingControlSM V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlSM_1.13.10.js)
#### **CUSTOM SCRIPTS TO SUPPORT E500 638 ENOCEAN MOTION SENSOR**
- meetingControlEnOceanMotionSensor V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_1.13.11.js)
	- the script is suitable for *RoomLabel* display profil (SMH300) and is not suitable for tablet and media players.
	- the *pendingFreeDelay* variable at the beginning of the script allows to define the timeout (by default, 15 minutes) before checking out (declaring that the room is empty and has to be shortened)

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2019-06-17` V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-grr/signmeeting_grr-screen_composer-setup-1.13.10.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.11.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.10`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form.
        - The label version **V1.13.10** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.10.jpg)
        - In case the version is still 1.11.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Gekkota 4 devices
- Add support in the `Room Label` display profil for ```Check Out``` button to free the room resource
- Add support for screen saver feature
    - `Room screen` display profil:
        - `Background content when there is no current meeting nor near future meeting`
            - `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
                    - Label to display <free text>
                - note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
    - `Summary screen by event` display profil & `Summary screen by resource` display profils:
        - `Background content when there is no current or future meeting`
            - `Label to display when no screen saver`
            - `Show the screen saver after <x> min`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactive marker`
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
    - *ddd d mmmm yyyy* (ex: Fri 4 August 2017)
    - *dddd d mmmm yyyy* (ex: Friday 4 August 2017)
- Add support new version of custom CSS supporting
    - a default background
    - a splitter between current meeting and next meeting (adding and configuration)
    - a colour configuration for the buttons
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
- Add attendees list display with scrolling
- Add support for a signs library (72 icons) or signs importation (for resources in summary screen)
- Add configurable timeout to return to main page in case no user activity has been detected
- Add support for RFID badge
    - authentication (with and without LDAP)
    - modulation type selection (permitting to focus only on some RFID badge modulation and improve RFID badge detection efficiency as well)
    - display modulation and baud rate when badging is detected (diagnostic mode activated) (requires Gekkota 3.12.25)
    - timeout disconnection when no activity for a duration (60 sec by default)
    - automatic disconnection when RFID badge is detected and user was previously connected
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
- Add support for creation of several instances of different display profil (until 10 at all)
    - room screen
    - summary screen by event
        - landscape
        - portrait
    - Summary screen by resource
        - landscape
        - portrait
    - Room label (for SMH300/SLATE106 solution)
- Add possibility to remove reservation and consultation button (summary screen)
- Add support for diagnostic console mode
- Add new items in event detail
    -  number of attendees (at the right of attendees)
    -  phone number
- Add support for viewing of meeting scheduled across several days, or all day long
    - Note: In this case, SignMeeting is splitting the meeting across several days as much as there is day to display the meeting from *working day start time* to *working day end time*.
    - For example, a meeting from Monday 2:00PM to Wednesday 12:00, with working day 7:00 21:00, is split into 3 meetings:
        - Monday   : 1st meeting from 2:00 to 21:00
        - Tuesday  : 2th meeting from 7:00 to 21:00
        - Wednesday: 3rd meeting from 7:00 to 12:00
    - It is not possible to modify or delete meeting scheduled across several days
- Add ```Attribute 1``` and ```Attribute 2``` research option in interface *Datasource* / *Advanced* permitting to get additional information coming from LDAP directory (which can be inserted in the meeting title afterwards)
    - Attribute 1 and Attribute 2 can have any attributes of LDAP attribute editor. It is advised to use string or integer format
    - Even if this option is activated, in case the Attribute value is empty, that does not prevent from successful badge authentication
- Add a tooltip to display *Attribute(s)* values
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
- Add support for optional duration before displaying *report as empty* button
- Add support for *German* language
- Add support for custom Javascript file permitting to control SignMeeting buttons (JavaScript provided only for some specific customers)

##`2015-06-10` V1.11.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-grr/signmeeting_grr-screen_composer-setup-1.11.17.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add confirmation screen when pressing "Room is empty" button
- Add: return to main screen when timeout "no user activity" of screen "book a meeting" has expired (based on IDLE api)
- Change: alarms for multi are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" button availability issue when playing with navigation menu

##`2015-01-16` V1.11.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-grr/signmeeting_grr-screen_composer-setup-1.11.15.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change split the date and time display in two lines with different formats
- Change default value to false for parameter 'return to the background when no meeting'
- Fix date/time format not properly shown when upgrading from an older version
- Fix in case server not available at SignMeeting start-up and becomes available afterwards

##`2014-12-16` V1.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
