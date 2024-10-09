# SignMeeting ACROPOLIS
*RELEASE NOTE*

##`2016-03-10` V1.12.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-acropolis/signmeeting_acropolis-screen_composer-setup-1.12.16.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add: option to activate/inactivate button *close the door*
- Add new items in event detail
	-  number of attendees (at the right of attendees)
	-  phone number
- Add support of different automatic meeting naming
	- fixed: ```Meeting from HH:MM to HH:MM - room name``` or
	- custom: free text with random number suffix
- Fix: *new event adding* pop-up was prompted sometimes instead of *delete meeting* pop-up when trying to remove a meeting
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some case, when current meeting is finished and this meeting is the last one, and *return to background content when non meeting is activated*,
	- the meeting could remain inconsistently in *next meeting* or
	- attached image could stay stucked over background content
- Fix: in some rare case, on some players, could not be able to collect the meeting immediately after player reboot
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)
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
- User manual (009A_EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-acropolis/signmeeting-acropolis-user-manual-009A_en.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic-V1.10.12.css)
#### **WEB APPLICATION GESTION DE PORTE**
- Gestion de porte V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/gestion-de-porte-V1.10.10.zip)
#### **NOTE FOR LDAP ATTRIBUTE VALIDITY**
- In case the attribute is not found in LDAP (for example in case tipo error), the condition is considered as fully filled meaning that the RFID badge account is valid
#### **NOTE TO TEST YOUR LDAP WITH GEKKOTA-DESKTOP**
- It is possible to test your LDAP configuration (search filtering by entity type, RFID badge, ...) with Gekkota-desktop. Please refer to Gekkota application notes *Test Your LDAP configuration*
#### **NOTE FOR RFID BADGE MODULATION AND BAUDRATE**
- RFID badge modulation and baudrate can be displayed with diagnoctic mode with Gekkota_os 3.12.25 (or above). For Gekkota_os version lower than 3.12.24, it is possible to know modulation and baudrate with specific system command (test pattern activated + tool nfc-poll). Contact support@innes.pro for more information
#### **NOTE FOR LDAP AUTHENTICATION ANONYMOUS**
- In case authentication anonymous (empty dn, empty password), the option *connexion as anonymous allowed* needs to be activated inside LDAP system as well
#### **NOTE FOR ATTACHMENTS**
- Display attachments in SignMeeting requires memory allocation in the player. Display meetings on 2 page (or more) (ex: 15 meetings) with image size upper than 2 MB could make reboot the player continuously when display all the meetings. To solve the issue inactivate attachment column or replace huge size image (few MBytes) by small size image (few KBytes)
#### **NOTE CONFIRM MY PRESENCE**
- Button "Confirm my presence" is not supported for Acropolis
#### **NOTE ROOM IS EMPTIED**
- Button "Room is emptied" is not supported for Acropolis
#### **NOTE WHEN FORMULAR CAN NOT BE OPENED IN SCREEN COMPOSER**
- In some rare case (seen most of the time after version upgrading), the SignMeeting formular could not be opened in Screen Composer, and a message is displaying: *An error occured while opening the interface*. To solve the issue close and open again Screen Composer
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
     	- The file theme_css_generic-V1.10.12.css is situated in a sub-directory *css* (for example ./css/theme_css_generic-V1.10.12.css)
     	- The file background picture is situated in a sub-directory *images* (for example ./images/diagonal3.png)
      	- Relative path has to be in this case
	      	- ```background-image: url("../images/diagonal3.png");```
	      	   (go up to CSS file parent directory and then go to *images* directory
- Match SignMeeting *device/edit/CSS class* value with a class value of your theme_css_generic-V1.10.12.css
	- for example, when ```.cusClass1``` is present on theme_css_generic-V1.10.12.css
		- enter ```cusClass1``` in *device/edit/CSS class* field
- Add the required media *./images/diagonal3.png* in Screen Composer manifest (*medias* tab)


#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-acropolis/signmeeting_acropolis-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support new API CSS class in device edition permitting to display, when there is a meeting in room screen, to give possibility to have a CSS theme different for each player
	- require theme_css_generic-V1.10.12.css (available for download)
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
- Fix: in mode 11 lignes, page was not entirely filled on all the height (only 85 %)
- Fix: theme is not displayed when background content is not checked
- Fix: tipo error in console (diagnostics)
- Fix: bottom of attendees text was grumbled by description in next meeting (Room screen)
- Fix: 2th sign was 10% smaller than 1st pictogram when using pictogram from directory
- Fix: pressing "room is emptied" the second time was doing nothing (in case reccurent meeting)
- Fix: when *filtering RQ Status* is unactive and accepted meeting is active, meeting was not displayed
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

##`2015-10-12` V1.12.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-acropolis/signmeeting_acropolis-screen_composer-setup-1.12.12.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of a signs library (72 icons) or signs importation (for resources in summary screen)
- Add support of creation of several instances of different screen composition types (until 10 at all)
	- room screen
	- summary screen
		- landscape
		- portrait
- Add possibility to remove reservation and consultation button (summary screen)
- Change: RFID badge
	- modulation type selection (permitting to focus only on some RFID badge modulation and improve RFID badge detection efficiency as well)
	- display modulation and baudrate when badging is detected (diagnostic mode activated) (requires Gekkota 3.12.25)
	- timeout deconnexion when no activity for a duration (60 sec by default)
	- automatic deconnexion when RFID badge is detected and user was previously connected
- Change: LDAP
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
- Change SignMeeting view
	- Default horizontal tab: *server*, *room screen*
	- Default vertical tab: *Datasource*, *LDAP*, *RFID*
	- Parameter button to add new instance of the different screen composition types
- Change: reservation and consultation page is inactivated by default in summary screen
- Change default color for *return to the main page after being idle for* black (instead grey)
- Change: add automatically the scheme *ldap://* when missing
- Improve RFID badge detection (require gekkota_os version 3.12.25)
- Fix unexpected error message title *Error lost translation: this.thisStr is undefined* when resource is missing or when using button *room is emptied* and/or button *confirm my presence*
- Fix: user deconnexion was possible even if user was navigating in resérvation page
- Fix attendees list display with scrolling in summary screen

##`2015-08-07` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-acropolis/signmeeting_acropolis-screen_composer-setup-1.12.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
