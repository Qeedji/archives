# SignMeeting CALDAV
*RELEASE NOTE*

##`2016-06-13` V1.12.19 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/signmeeting_caldav-screen_composer-setup-1.12.19.appi)
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
- System calendar
	- Kerio Connect 9.0.X
		- tested with build 9.0.2.949
	- Sogo 2.3.X & 3.0.X
		- tested with 2.3.3 & 3.0.2
- Screen Composer V3.11.11 (or above) *Not compatible with Screen Composer V2.xx.yy*
- Gekkota 3.12.25 (or above) (for the last features regarding SignMeeting, especially for modulation display capability)
- SMT210 platform (touch screen & RFID badge detection)
- DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms (for summary screen)
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (004A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/signmeeting-caldav-user-manual-004A_en.pdf)

#### **CSS FILE FOR TAB STYLE**
- CSS File V1.10.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic-V1.10.12.css)
#### **CALDAVZAP**
- Config SOGO V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/Caldavzap_config/config_SOGO-V1.10.10.js)
- Config KERIO V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/Caldavzap_config/config_KERIO-V1.10.10.js)
#### **SOGO LDIF TO BE ABLE TO ADD RESOURCE**
- CalEntry (LDIF file)
	- calentry-schema-1 V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/calentry-schema-1-V1.10.10.ldif)
	- calentry-schema-2 V1.10.10[download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/calentry-schema-2-V1.10.10.ldif)
- CalResource (LDIF file)
	- calresource-schema-1 V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/calresource-schema-1-V1.10.10.ldif)
	- calresource-schema-2 V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/calresource-schema-2-V1.10.10.ldif)
	- calresource-schema-3 V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/calresource-schema-3-V1.10.10.ldif)
#### **SOGO LDIF TO ADD RESOURCE**
- Add a ressource (LDIF file)
	- add-resourceroom6-resource V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/add-resourceroom6-V1.10.10.ldif)
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
- Attachment are supported with Sogo only
- Display attachments in SignMeeting requires memory allocation in the player. Display meetings on 2 page (or more) (ex: 15 meetings) with image size upper than 2 MB could make reboot the player continuously when display all the meetings. To solve the issue inactivate attachment column or replace huge size image (few MBytes) by small size image (few KBytes)
#### **NOTE WHEN PLAYER IS FACING ISSUE TO CONNECT CALENDAR SYSTEM**
- In case the player INNES does not manage to resolve domain (for example https://<domain>.com/), SignMeeting can raise a message *A problem occured during the initial server connection / Details: xhr.status 0*. To solve the issue, in the player WebUI, configure server DNS with Google DNS server and try again
	- Prefered primary DNS server: 8.8.8.8
	- Prefered secondary DNS server: 8.8.8.4
#### **NEXT MEEETING TO CURRENT MEETING**
- In some rare cases, event pass from next meeting to current meeting in late. If the occurence of this problem becomes to be annoying, decrease datasource/refresh time to workaround
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

##`2016-04-26` V1.12.18 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-caldav/signmeeting_caldav-screen_composer-setup-1.12.18.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of Sogo calendar system (with attachments)
- Add support conflict detection by managing *busy*/*free* status (Sogo)
- Add support of calendar workflow
- Change: calendar system connection trial design
	- Add hourglass while SignMeeting is facing issue to connect the calendar system at the first SignMeeting start-up
- Change: *room is empty* by *report as empty*
- Fix: room could not be displayed on Summarization mode because
	- Room ID was not properly managed in CalDAV (Kerio calendar system)
	- Room was not automatically added in attendees list (Kerio Calendar system)

##`2016-03-20` V1.12.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
	- for Kerio-connect (limited version)


