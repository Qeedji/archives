# JOOXTER CALENDAR
*RELEASE NOTE*

## `2023-01-25` V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-jooxter-calendar-V1.11.11/delivery/jooxter-calendar-V1.11.11.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when the working range was activated, the .xml calendar file could contain events that was out of the working range
>##### **COMPATIBILITIES**
- Calendar output format
	- *.xml*
	- *.ics*
- Briva-calendar server 2.10.10 (or above)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- User manual 1.11.11~001B_en [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-jooxter-calendar-V1.11.11/delivery/briva_calendar_jooxter-user_manual-1.11.11~001B_en.pdf)

#### **INFORMATION**
- URL to get the current *.ics* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.jooxter-calendar/2ical.php?calendarId=<calendarId>```
- URL to get the *.xml* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.jooxter-calendar/2xml-daycalendar.php?id=<calendarId>```

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2022-12-28` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-jooxter-calendar-V1.11.10/delivery/jooxter-calendar-V1.11.10.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version supporting these outputs format:
	- *.ics*
	- *.xml* day calendar
>##### **COMPATIBILITIES**
- Calendar output format
	- *.xml*
	- *.ics*
- Briva-calendar server 2.10.10 (or above)
