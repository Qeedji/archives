# EWS CALENDAR
*RELEASE NOTE*

##`2023-01-17` V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-EWS-calendar-V1.11.11/delivery/ews-calendar-1.11.11.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, when the working range was applied, some of the events were missing in the .ics calendar
- Fix: the meeting from 11.00 PM to 00.00 AM of the day before could be displayed the current day in the .xml day calendar file
- Fix: when the *workingday* tag was activated in the configuration.xml file, the meeting going from the day before to the current day was not displayed the current day
>##### **COMPATIBILITIES**
- Authentication
	- *Azure AD (OAuth 2)*
	- *Basic*
- calendar output format
	- *.xml*
	- *.ics*
- Briva-calendar server 2.10.10 (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Briva Calendar EWS user manual 1.11.11~001A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-EWS-calendar-V1.11.11/delivery/briva_calendar_ews-user_manual-1.11.11~001A_en.pdf)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.15 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/Powershell_Innes_AAD-1.10.15.zip)
- For further information, refer to the Briva Calendar EWS user manual
#### **INFORMATION**
- URL to get the current *.ics* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ews-calendar/2ical.php?calendarId=<calendarId>```
- URL to get the current *.xml* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ews-calendar/2xml-daycalendar.php?id=<calendarId>```

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2022-12-16` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-EWS-calendar-V1.11.10/delivery/ews-calendar-V1.11.10.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *.xml* day calendar output format available with the URL
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ews-calendar/2xml-daycalendar.php?id=<calendarId>```
- Add support for *workingday* tag in the *configuration.xml* file allowing to define the the start time and the end time of the working day
- Add support for *Azure AD* authentication (OAuth 2)

##`2020-03-09` V1.10.21 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-EWS-calendar-V1.10.21/delivery/ews-calendar-V1.10.21.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: to decrease network bandwidth, the .ics calendar file can now be downloaded by the device only when the cache persistency has expired. It is recommended to use this connector version when using cache persistency with the newest versions of *MeetingRoom*:
    - MeetingRoom Summarization Landscape 1.20.10 (and above)
    - MeetingRoom Summarization Portrait 1.20.10 (and above)

##`2016-09-21` V1.10.20 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-EWS-calendar-V1.10.20/delivery/ews-calendar-V1.10.20.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: In case no meeting was present in EWS calendar, MeetingRoom EWS could not working properly (message *Content temporarily unavailable (code 0)* was displayed) due to bad behaviour of applet
	- In this case when testing applet with test URL ```http://<domain>/plugnCast/.applets/.ews-calendar/2ical.php?calendarId=<roomId>```, erreur HTTP 500 was replied

##`2015-12-15` V1.10.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Improve: decreased Meeting Room loading time when much meeting need to be displayed (ex: upper than 15 meetings)
- Fix: description was empty in Meeting Room when the description content was copied-pasted from Web (HTML format)
- Fix: unexpected string display **~*~*~*~*~*~*~*~*~*\n* in Meeting Room descriptions with EWS2007 due to wrong management of MIME border

##`2015-11-25` V1.10.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: does not display private meetings (functioncall filter equaling *Personal* or *Confidential* or *Private*)
- Fix empty description with recent version of EWS365 (descriptions converted in html)
- Add: debug option by URL option *&debug=YES*

##`2014-11-25` V1.10.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with Microsoft Exchange 2013/Office 365
- Fix (cache management): purge cache files older than cache persistency
- Fix (cache management): stop files (deleted from cache) which don’t have the same resource definition

##`2014-02-13` V1.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with plugncast G3
- Fix cache management issue (did not work anymore)

##`2013-02-21` V1.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new parameter *sendCacheOnServerError*
- Add new parameter *auth_scheme*

##`2012-12-18` V1.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add filter parameters : *FilterIsCancelled*, *FilterIsDraft*, *FilterIsMeeting*, *FilterSensitivity* (Private, Confidential, Personal), *FilterImportance*

##`2012-07-26` V1.10.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add parameter 'label' in calendar configuration to force the 'LOCATION'
- Fix : meetings visibility issue (in case directly programmed in the resource (room) calendar)

##`2011-11-18` V1.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
