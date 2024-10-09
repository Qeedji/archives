# YPAREO CALENDAR
*RELEASE NOTE*

## `2024-10-07` V1.11.10 [download](applets/connector-ypareo-V1.11.10/delivery/ypareo-calendar-1.11.10.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *.xml* day calendar output format available with the URL 
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ypareo-calendar/2xml-daycalendar.php?id=<calendarId>```
>##### **COMPATIBILITIES**
- calendar output format 
	- *.xml*
	- *.ics*
- Briva-calendar server 2.10.10 (or above)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**  
- Installation guide (1.11.10~001A/FR) [download](applets/connector-ypareo-V1.11.10/delivery/briva_calendar_ypareo-user_manual-1.11.10~001A_en.pdf){.auth-downloads} 	
#### **NOTE TO EXPORT CALENDAR ICS FROM APPLET PHP**
- URL to get the current *.ics* calendar file output by the connector:   
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ypareo-calendar/2ical.php?calendarId=<calendarId>```
- URL to get the current *.xml* calendar file output by the connector:
	- ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ypareo-calendar/2xml-daycalendar.php?id=<calendarId>```
- Note: these URL can be used also with suffix *&debug=yes* (for technical support only)
    - ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ypareo-calendar/2ical.php?calendarId=<calendarId>&debug=yes```
    - ```http://<briva_calendar_server_domain>/plugnCast/.applets/.ypareo-calendar/2xml-daycalendar.php?id=<calendarId>&debug=yes```   
# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2021-06-07` V1.10.11 [download](applets/connector-ypareo-V1.10.11/delivery/ypareo-calendar-1.10.11.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- calendar output format 
	- *.ics*
- Briva-calendar server 2.10.10 (or above)
