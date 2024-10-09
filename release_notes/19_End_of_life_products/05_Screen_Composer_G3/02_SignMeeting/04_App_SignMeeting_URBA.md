# SignMeeting URBA
*RELEASE NOTE*


##`2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.12.19.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add ```Attribute 1``` and ```Attribute 2``` research option in interface *Datasource* / *Advanced* permitting to get additional information coming from LDAP directory (which can be inserted in the meeting title afterwards)
	- Attribute 1 and Attribute 2 can have any attributes of LDAP attribute editor. It is advised to use string or integer format
	- Even if this option is activated, in case the Attribute value is empty, that does not prevent from successful badge authentication
- Add a tooltip to display *Attribute(s)* values
- Change hourglass rendering (gif displayed when navigating in SignMeeting menu)
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
- Change: in case once the meeting has been created with SignMeeting and if variable ```calendar-event:<>``` is used, the meeting tilte is not modified anymore according to the calendar event new start time (or new end time)
- Fix: connection error was not well raised to the user when LDAP server was not responding
- Fix: In console mode, check LDAP filter matching for each RFID badging
>##### **WILL BE CORRECTED IN NEXT VERSION**
- Fix: In order to be able to display background content, general theme need to be activated first. (by contrary, in order to be able to display Playzilla background, general theme need to be inactivated)
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated
	- Book now is not available
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated & display room names *all* is activated
	- Book now is not available
	- Room name is not displayed on header
>##### **COMPATIBILITIES**
- Screen Composer V3.11.11 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.25 (or above) (for the last features regarding SignMeeting, especially for modulation display capability)
- SMT210 platform (touch screen & RFID badge detection)
- DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms (for summary screen)
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (006A_EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting-urba-calendar-user-manual-006A_en.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic-V1.10.12.css)
#### **UPGRADE VERSION**
- Version upgrading is only possible since 1.10.51
- In order to upgrade:
	- open Screen Composer,
		- click on SignMeeting link to configure the app
		- make a modification (ex Title) and
		- click on "finish" button
		- click again on SignMeeting link (version modification should be noticed)
#### **DATASOURCE HOSTED ON DISTANT SERVER**
- Some slowness could be noticed when booking (or cancelling) a meeting in case datasource is referring to distant server with poor reaction capability
#### **NOTE WHEN FORMULAR CAN NOT BE OPENED IN SCREEN COMPOSER**
- In some rare case (seen most of the time after version upgrading), the SignMeeting formular could not be opened in Screen Composer, and a message is displaying: *An error occured while opening the interface*. To solve the issue close and open again Screen Composer
#### **NOTE FOR ATTACHMENTS**
- URBA calendar does not support attachment
#### **NOTE WHEN PLAYER IS FACING ISSUE TO CONNECT URBA SYSTEM**
- In case the player INNES does not manage to resolve domain (for example https://societedugrandparis-formation.urbaonline.com/), SignMeeting raises a message *A problem occured during the initial server connection / Details: xhr.status 0*. To solve the issue, in the player WebUI, configure server DNS with Google DNS server and try again
	- Prefered primary DNS server: 8.8.8.8
	- Prefered secondary DNS server: 8.8.8.4
#### **NEXT MEEETING TO CURRENT MEETING**
- In some rare cases, event pass from next meeting to current meeting in late. If the occurence of this problem is annoying, decrease datasource/refresh time to workaround
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

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2016-04-26` V1.12.18 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.12.18.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: optimize data bandwidth required by SignMeeting at each polling (for each resource and each player) (average bandwidth divided by 4)
- Change: calendar system connection trial design
	- Add hourglass while SignMeeting is facing issue to connect the calendar system at the first SignMeeting start-up
- Change: *room is empty* by *report as empty*

##`2016-03-10` V1.12.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.12.16.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)
- Fix: in some rare case, on some players, could not be able to collect the meeting immediately after player reboot
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)

##`2016-02-26` V1.12.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.12.15.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of display of these URBA meeting attributes (Room screen/Menu/meeting edition)
	-  number of attendees (at the right of attendees)
	-  phone number*
	-  entity (description)*
		- *mapping inside URBA for the room categories has to be configured properly
- Add support of option "automatic meeting cancel in case the user has not confirmed its presence after a timeout (15, 30, 45, 60 min)
	- if the current duration is less than the minimum duration, the meeting is deleted
	- else it is shortened
- Add support of different automatic meeting naming
	- fixed: ```Meeting from HH:MM to HH:MM - room name``` or
	- custom: free text with random number suffix
- Fix: in case there is no attachments, allow display of big location name on two lines (room screen/current meeting)
- Fix: description could overlap on *confirm my presence* button (room screen/current meeting)
- Fix: sometimes *new event adding* pop-up was prompted instead of *delete meeting* pop-up (when trying to remove a meeting)
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some case, when current meeting is finished and this meeting is the last one, the meeting could remain inconsistently in next meeting

##`2015-12-04` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.12.13.appi)
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
- Change: swap organizer and attendeess first name and last name to follow implementation done specifically in server URBA
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
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

##`2015-06-10` V1.11.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.11.17.appi)
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

##`2015-01-16` V1.11.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-urba/signmeeting_urba-screen_composer-setup-1.11.15.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change default value (to false) of parameter 'return to the background when no meeting'
- Fix date/time format display issue when upgrading from an older version
- Fix in case not available server at SignMeeting start-up and become available afterwards

##`2014-12-24` V1.11.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change split the date and time display in two lines with different formats
- Change sending of the status parameter is not done anymore (in order to let unchanged the status of meeting in URBA WebUI)

##`2014-12-22` V1.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change way of datasource validation

##`2014-12-08` V1.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add shortcut button to make a express booking with fixed duration
- Add confirmation button
- Change design of the mono view (in order to display current meeting and next meeting)

##`2014-10-08` V1.10.52
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Use "ressource id" instead of "ressource label"
- Add an automatically final '/' character in case the url doesn't have one

##`2014-09-29` V1.10.50
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add two missing files of previous release

##`2014-09-23` V1.10.49
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
