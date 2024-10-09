# SignMeeting IPORTA
*RELEASE NOTE*

## `2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting_iporta-screen_composer-setup-1.12.19.appi)
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
- Fix: In order to be able to display background content, general theme need to be activated first
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
- User manual (003A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting-iPorta-user-manual-003A_en.pdf)
- User manual (005A/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting-iPorta-manuel-utilisateur-005A_fr.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic-V1.10.12.css)
#### **NOTE FOR LDAP ATTRIBUTE VALIDITY**
- In case the attribute is not found in LDAP (for example in case tipo error), the condition is considered as fully filled meaning that the RFID badge account is valid
#### **NOTE CONFIRM MY PRESENCE**
- Button "Confirm my presence" is not supported for IPORTA
#### **NOTE REPORT AS EMPTY**
- Button "Room is emptied" is not supported for IPORTA
#### **NOTE FOR DATASOURCE HOSTED ON DISTANT SERVER**
- Some slowness could be noticed when booking (or cancelling) a meeting in case datasource is referring to distant server with poor reaction capability
#### **NOTE TO TEST YOUR LDAP WITH GEKKOTA-DESKTOP**
- It is possible to test your LDAP configuration (search filtering by entity type, RFID badge, ...) with Gekkota-desktop. Please refer to Gekkota application notes *Test Your LDAP configuration*
#### **NOTE FOR RFID BADGE MODULATION AND BAUDRATE**
- RFID badge modulation and baudrate can be displayed with diagnoctic mode with Gekkota_os 3.12.25 (or above). For Gekkota_os version lower than 3.12.24, it is possible to know modulation and baudrate with specific system command (test pattern activated + tool nfc-poll). Contact support@innes.pro for more information
#### **NOTE FOR LDAP AUTHENTICATION ANONYMOUS**
- In case authentication anonymous (empty dn, empty password), the option *connexion as anonymous allowed* needs to be activated inside LDAP system as well
#### **NOTE FOR ATTACHMENTS**
- Display attachments in SignMeeting requires memory allocation in the player. Display meetings on 2 page (or more) (ex: 15 meetings) with image size upper than 2 MB could make reboot the player continuously when display all the meetings. To solve the issue inactivate attachment column or replace huge size image (few MBytes) by small size image (few KBytes)
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
# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2016-04-26` V1.12.18 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting_iporta-screen_composer-setup-1.12.18.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: calendar system connection trial design
	- Add hourglass while SignMeeting is facing issue to connect the calendar system at the first SignMeeting start-up
- Change: *room is empty* by *report as empty*
- Fix: could not be able to collect the meeting if AVCmd profile is activated (stuck in standby mode)
- Fix: when exiting TV screen standby, could not be able to collect the meeting until next refresh timeout (now refresh timeout is decreased to 3 minutes when screen is in standby and standby duration is upper than refresh timeout)
- Fix: *new event adding* pop-up was prompt sometimes instead of *delete meeting* pop-up when trying to remove a meeting
- Fix: in case a pop-up (calendar, add, event detail) was kept opened in "book a meeting" interface, it was not closed when returning automatically to background
- Fix: in some case, when current meeting is finished and this meeting is the last one, the meeting could remain inconsistently in next meeting

## `2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting_iporta-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support new API CSS class in device edition permitting to display, when there is a meeting in room screen, to give possibility to have a CSS theme different for each player
	- require theme_css_generic-V1.10.12.css (available for download)
- Change: implemement memory garbage collector between each page display (internal INNES)
- Change: remove the 3 dots (...) at the end of item when its size is in overlap (CSS as well)
- Fix: in mode 11 lignes, page was not entirely filled on all the height (only 85 %)
- Change: organizer is now "UserForFullName" instead "CreatorForFullName" (meeting creator)
- Fix: theme is not displayed when background content is not checked
- Fix: tipo error in console (diagnostics)
- Fix: bottom of attendees text was grumbled by description in next meeting (Room screen)
- Fix: 2th pictogram size was 10% smaller than 1st pictogram size when using pictogram from directory
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

## `2015-10-12` V1.12.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-iporta/signmeeting_iporta-screen_composer-setup-1.12.12.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
