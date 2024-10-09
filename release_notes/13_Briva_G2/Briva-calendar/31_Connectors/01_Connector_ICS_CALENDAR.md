# ICS CALENDAR
*RELEASE NOTE*

##`2023-11-08` V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-ics-calendar-V1.11.11/delivery/ics-calendar-1.11.11.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Private* value for the *filterSensitivity* parameter in the configuration.xml
- Fix: the recurring events having the *UNTIL* rule part was not printed in the *.ics* calendar file output
>##### **LIMITATIONS**
The recurring events having the *COUNT* rule part are not printed prperly in the *.ics* calendar file output
>##### **COMPATIBILITIES**
- Briva calendar V2.10.10 (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- Briva Calendar ICS user manual 1.11.11~001A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-ics-calendar-V1.11.11/delivery/briva_calendar_ics-user_manual-1.11.11~001A_en.pdf)
#### **INFORMATION**
- URL to get the current *.ics* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ics-calendar/2ical.php?calendarId=<calendarId>```
- URL to get the *.xml* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ics-calendar/2xml-daycalendar.php?id=<calendarId>```

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2023-02-17` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-ics-calendar-V1.11.10/delivery/ics-calendar-1.11.10.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *.xml* day calendar file output available with the URL
    - ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ics-calendar/2xml-daycalendar.php?id=<calendarId>```
- Add support for *workingday* tag in the *configuration.xml* file allowing to define the start time and the end time of the working day
- Fix: the events taking place across several days was not printed in the output calendar files
- Fix: the connector was not able to get a remote *.ics* file when the URL was containing special characters
- Fix: with some *.ics* calendar files, the organizer names and the attendees names of the events could be not printed in the output calendar files
>##### **COMPATIBILITIES**
- Briva calendar V2.10.10 (or above)

##`2013-08-12` V1.10.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-ical-V1.10.16/ics-calendar-V1.10.16/ics-calendar-V1.10.16.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change (optimization) attachment
- Add security to not downloaded again when the file has not changed (Playzilla G3 only)
- Fix start/end events issue

##`2013-02-21` V1.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new parameter *sendCacheOnServerError*
- Fix vent not correctly read
- Fix ics-calendar installer (extra white space in a url)
- Fix trouble for 'all day' events
- Fix *day-event* for *endRelated* configuration parameter

##`2012-02-16` V1.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with SAAS servers
- Fix memory leak

##`2012-01-13` V1.10.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support multiple ics resources configuration in a calendar
- Fix alarms issue
- Fix filtering method (was mixing id=1 and id=001)

##`2011-11-04` V1.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial release

