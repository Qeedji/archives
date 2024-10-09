# SignMeeting REQUEA
*RELEASE NOTE*

## `2023-08-02` V1.13.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-requea/signmeeting_requea-screen_composer-setup-1.13.13.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` pro
- jects in the previous version `SignMeeting 1.11.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.14`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form.
        - The label version **V1.13.14** on the top right corner of the form indicates that the migration has been completed
        - In case the version is still 1.11.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Book now* button for *Room label* display profil
- Add support for NFC badging with *Room label* display profil as well as for *Room Screen* display profil
- Add support for *meetingControlEnOceanMotionSensor_1.13.11.js* custom script allowing to check out meetings with an *EnOcean* presence sensor
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
- Add support for a background image in each *Main page* tab of each display profil
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
>##### **LIMITATIONS**
- The list of attendees cannot be displayed
- In some case, the events taking place all day long or across several days are not displayed
>##### **COMPATIBILITIES**
- Connectors :
	- Requea 4.1
	- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
- Host Software :
	- Screen Composer 3.20.15 (or above)
- Platform targets :
	-  Gekkota OS 4.13.14 (or above)
		- for SMH300 devices
	-  Gekkota OS 4.13.13 (or above)
		- for SMT210 devices
	- Gekkota OS 4.14.15 (or above)
		- for DMB400 and SMA300 devices
	- Gekkota OS 3.12.57 (or above)
		- for DMC200, SMT210, SMA200, SMP200, DMB300, WINDOWS platforms

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual 1.13.13~001A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-requea/signmeeting-requea-user-manual-1.13.13~001A_en.pdf)
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILS**
- CSS File V1.13.11 for *Room Screen* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.11.css)
- CSS File V1.13.10 for *Room Label* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* display profil [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLES**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
- meetingControlGIDE V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlGIDE_1.13.11.js)
#### **CUSTOM SCRIPTS TO SUPPORT BLE PERIPHERALS**
- meetingControlEnOceanMotionSensor V1.13.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_1.13.11.js)
#### **UPGRADE VERSION**
- In order to upgrade:
	- open Screen Composer,
		- click on SignMeeting link to configure the app
		- make a modification (ex Title) and
		- click on "finish" button
		- click again on SignMeeting link (version modification should be noticed)
#### **NOTE WHEN FORMULAR CAN NOT BE OPENED IN SCREEN COMPOSER**
- In some rare case (seen most of the time after version upgrading), the SignMeeting formular could not be opened in Screen Composer, and a message is displaying: *An error occured while opening the interface*. To solve the issue close and open again Screen Composer
#### **NOTE WHEN PLAYER IS FACING ISSUE TO CONNECT CALENDAR SYSTEM**
- In case the player INNES does not manage to resolve domain (for example https://<domain>.com/), SignMeeting can raise a message *A problem occured during the initial server connection / Details: xhr.status 0*. To solve the issue, in the player WebUI, configure server DNS with Google DNS server and try again
	- Prefered primary DNS server: 8.8.8.8
	- Prefered secondary DNS server: 8.8.8.4
#### **NEXT MEEETING TO CURRENT MEETING**
- In some rare cases, event pass from next meeting to current meeting in late. If the occurence of this problem becomes to be annoying, decrease datasource/refresh time to work around
#### **NOTE FOR CSS CLASS**
- CSS file need to be configure to suport CSS class
	- (if required double check relative path of picture in theme_css_generic-V1.10.12.css)
	- rename if required the .cusClass1 into the name you want
	- choose API inside
		- background-image or background-color
		- Note: CSS is compliant with Mozilla CSS background API (W3C)
			- https://developer.mozilla.org/en-US/docs/Web/CSS/background
				- background-image
				- background-position
				- background-size
				- background-repeat
				- background-origin
				- background-clip
				- background-attachment
				- background-color
	- for example:
     	- The file theme_css_generic-V1.10.12.css is situated in a sub-directory *css* (./css/theme_sm.css)
     	- The file background picture is situated in a sub-directory *images* (./images/diagonal3.png)
      	- Relative path has to be in this case
	      	- ```background-image: url("../images/diagonal3.png");```
	      	   (go up to CSS file parent directory and then go to *images* directory
- Match SignMeeting *device/edit/CSS class* value with a value of your theme_css_generic-V1.10.12.css
	- for example, when ```.cusClass1``` is present on theme_css_generic-V1.10.12.css
		- enter ```cusClass1``` in *device/edit/CSS class* field
- Add the required media *./images/diagonal3.png* in Screen Composer manifest (*medias* tab)

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2018-09-11` V1.12.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version

