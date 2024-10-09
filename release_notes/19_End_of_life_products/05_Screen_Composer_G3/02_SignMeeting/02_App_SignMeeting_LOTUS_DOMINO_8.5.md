# SignMeeting LOTUS DOMINO 8.5
*RELEASE NOTE*

##`2015-12-28` V1.12.14 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/signmeeting_domino85-screen_composer-setup-1.12.14.appi)
>##### **IMPORTANT**
- The previous signmeet.nsf has to be uninstalled and the new one needs to be installed on the Domino 8.5 server (the previous version is not compatible)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add option "Authorize the access to user’s mailboxes to get the list of attendees and the description" (datasource advanced/tab) permitting to display or not description and attendees list from user mailbox (require to be logged as single user instead of delegate)
>##### **WILL BE CORRECTED IN NEXT VERSION**
- Add support of attachment
- Fix: In order to be able to display background content, general theme need to be activated first
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated
	- Book now is not available
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated & display room names *all* is activated
	- Book now is not available
	- Room name is not displayed on header
>##### **COMPATIBILITIES**
- Lotus Domino 8.5
- Screen Composer V3.11.11 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.25 (or above) (to support the last SignMeeting features, especially when RFID is used)
- SMT210 platform (touch screen & RFID badge detection)
- DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms (for summary screen)
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (009A_EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/signmeeting-domino-8-5-user-manual-009A_en.pdf)
- User manual (002A FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/signmeeting-domino-8.5-manuel-utilisateur-002A_fr.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic_V1.10.11.css)
#### **IMPORTANT NOTICE WHEN UPGRADING TO A NEW VERSION**
- Install 'signmeet.nsf'
	- V1.10.10 for SignMeeting V1.12.13 (and below) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/webservices/V1.10.10/signmeet.nsf)
	- V1.10.11 for SignMeeting V1.12.14 (and above) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/webservices/V1.10.11/signmeet.nsf)
- Secondly the app is installed in ScreenComposer
#### **BASIC VERSUS SESSION AUTHENTICATION**
http://www-10.lotus.com/ldd/ddwiki.nsf/dx/Authenticating_Domino_REST_Service_Requests
#### **NOTE FOR LDAP VALIDITY ATTRIBUTE**
- In case the validity attribute is not found in LDAP (for example in case tipo error inserted in validity attribute), the condition is considered as fully filled meaning that the RFID badge account validity attribute is valid
#### **NOTE TO TEST YOUR LDAP WITH GEKKOTA-DESKTOP**
- It is possible to test your LDAP configuration (search filtering by entity type, RFID badge, ...) with Gekkota-desktop. Please refer to Gekkota application notes *Test Your LDAP configuration*
#### **NOTE FOR RFID BADGE MODULATION AND BAUDRATE**
- RFID badge modulation and baudrate can be displayed with diagnostic mode with Gekkota_os 3.12.25 (or above). For Gekkota_os version lower than 3.12.24, it is possible to know modulation and baudrate with specific system command (test pattern activated + tool nfc-poll). Contact support@innes.pro for more information
#### **NOTE FOR LDAP AUTHENTICATION ANONYMOUS**
- In case authentication anonymous (empty dn, empty password), the option *connexion as anonymous allowed* needs to be activated inside LDAP system as well
#### **NOTE FOR MEETNG MODIFICATION/REMOVE WITH DOMINO 8.5**
- Only the meeting organized by delegate account can be deleted or modified
- The recurring meetings can not be deleted or modified
#### **NOTE FOR ATTACHMENTS**
- Display attachments in SignMeeting requires memory allocation in the player. Display meetings on 2 page (or more) (ex: 15 meetings) with image size upper than 2 MB could make reboot the player continuously when display all the meetings. To solve the issue inactivate attachment column or replace huge size image (few MBytes) by small size image (few KBytes)
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
     	- The file theme_css_generic-V1.10.12.css is situated in a sub-directory *css* ( for example ./css/theme_css_generic-V1.10.12.css)
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

##`2015-12-07` V1.12.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-domino-8.5/signmeeting_domino85-screen_composer-setup-1.12.13.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of *display agent activity in Domino console*
- Add attendees list display with scrolling
- Add support of session authentication and legacy basic authentication as well)
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
- Fix: 2th sign was 10% smaller than 1st pictogram when using pictogram from directory
- Fix: pressing "room is emptied" the second time was doing nothing (in case reccurent meeting)
- Fix: when *filtering RQ Status* is unactive and accepted meeting is active, meeting was not displayed
- Fix: attendees could be displayed on 2 lines instead be scrolled on 1 line (Room screen)

##`2014-11-27` V1.10.52
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- New app format : .appi (Compatibility with Screen Composer 3.11.x)

##`2014-09-18` V1.10.49
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add attendees list for repeated meetings
- Add security to prevent any special characters typing like <> () {} [] = | + \  : * % ! # $ ^ ? , " ; @ and /.
- Improved error reporting
- Fix issue when attendees of attendees list are modified after the initial meeting creation
- Fix the LED behavior when using an SMT210 player


##`2014-06-02` V1.10.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the full list of characters that are allowed are A-Z, a-z, 0-9, dash (-), full stop (.), underscore (_) and Space
- Fix allow the character '.' for resource name
- Fix incorrect view in spanish and deutsch player language

##`2014-05-28` V1.10.40
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add security to prevent user from adding a meeting outside the current time range
- Add security to prevent free time calculation from going outside the current time range
- Add check for undefined resources
- Add a new tab “Navigation” for the application parameters (for Mono and Multi) (form)
- Change picto shortcuts in light gray
- Fix in case no meeting: do same as for mono ( = clean every in order to see the media behind) (multi display)
- Fix scrolling error on time scale
- Fix uncorrect date format when HH:MM mmm dd yyyy was selected DapePi4e was displayed
- Fix exception handling on DHCP when IP is not yet defined (black screen in case DHCP server is slow)


##`2014-05-27` V1.10.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add scrolling for attendees in edit/consult meeting- Change update 'signmeet.nsf'
- Add support of *filtering RQ Status*
	- when activated, permits to not display
		- temporary meeting and/or
		- accepted meeting and/or
		- rejected meeting
- Add parameter to display (or not) the action shortcut buttons
- Add security to prevent illegal characters in the form: characters & ‘ and / have been excluded
- Add display of the app version in the Form
- Change allow spaces, dash and underscore characters in the resource names
- Change mono header display to obtain two columns
- Fix in banner: in case error state, the error message is not displayed correctly
- Fix meeting update
- Fix time range was not displayed as defined in the form
- Fix font size to be taken into account when displaying event
- Fix attendees list now displays the full names.

##`2014-04-17` V1.10.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add description and capacity of a room
- Add customization of banner (mono display)
- Add a warning message in case configuration failure
- Add special characters filtering to ensure to get a good request (titles and description, remove the characters ‘ “ \ CR and LF)
- Improve initial loading time (when have background image displayed)
- Change update 'signmeet.nsf' file to permit to extract booking data done directly on the Domino server (capacity, description)
- Change remove the popup message when clicking on utility button
- Change enlarge and align columns (multi display)
- Fix "Modify" function does not work (except if there is an "Add" just before)
- Fix stuck request when response is not correct

##`2014-04-08` V1.10.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add French language
- Change update 'signmeet.nsf' file to permit multi-server databases
- Fix incorrect error message on startup ('Object - Object')
- Fix 'Show attendees' was not kept (mono mode)

##`2014-03-14` V1.10.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change rename application name to 'signmeeting-domino-8.5'

##`2014-03-13` V1.10.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
