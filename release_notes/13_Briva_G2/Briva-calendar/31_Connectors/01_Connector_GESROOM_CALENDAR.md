# GESROOM CALENDAR
*RELEASE NOTE*

##`2016-09-21` V1.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-gesroom-V1.10.11/delivery/gesroom-calendar-V1.10.11.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: full path of .asmx file need to be written in the configuration.xml
	- ```http://<your-safeware-gesroom-server>.hds-group.com/ws_innes/WSINNES.asmx```
- Change: get WSDL from server rather than using Gesroom applet wsdl file /service/gesroom.wsdl (created when installing the applet)
	- Note: to retrieve the WSDL, use the full path of .asmx file + suffix "?WSDL"
		- ```http://<your-safeware-gesroom-server>.hds-group.com/ws_innes/WSINNES.asmx?WSDL```
>##### **MODELS PACKAGE**
- 3.35
	- Meeting Room Summarization V1.10.46 (or above)
	- Meeting Room Mono V1.10.42 (or above)
>##### **COMPATIBILITIES**
- Plugncast Studio V2.50.34 (or above)
- Plugncast Server V2.50.31 (or above)
- Playzilla V2.50.63 (or above)
- Gekkota V3.12.24 (or above)
- Microsoft Exchange 2007/2010/2013/365

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- Installation guide 002A/EN [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-gesroom-V1.10.10/delivery/gesroom-calendar-user-manual-002A_en.pdf)
#### **WEB SERVICES INNES**
- Safeware Web Services for Innes V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/connector-gesroom-V1.10.10/delivery/WebServicesInnes-V1.10.10.zip)
#### **MODELS PACKAGE**
- Install Model package 3.32 to get the last version of Meeting Room
#### **NOTE TO EXPORT CALENDAR ICS FROM APPLET PHP**
- In order to export ICS calendar with applet PHP, enter this URL in Web browser
	- ```http://<domain>/plugnCast/.applets/.gesroom-calendar/2ical.php?calendarId=<roomId>```
		- with <domain> = Briva (or PlugnCast) server IP address
		- with <roomId> = *all_rooms* (or *room1*, ...)
- The ICS is downloaded after a while in your PC (*myDownloads* directory)
- Note: this URL can be used also with suffix *&debug=yes* (for technical support only)
   - ```http://<domain>/plugnCast/.applets/.gesroom-calendar/2ical.php?calendarId=<roomId>&debug=yes```
#### **NOTE IN CASE FACING ISSUE TO SEE SOME MEETING IN ICS (SEEN WITH INNES TEST SERVER)**
- ICS is filled properly when invoking getMeetingsOneRoomAndAttendee with
	- start_Date = YYYY-MM-D1T00:00:00Z and end_Date = YYYY-MM-DD2T23:59:00Z
	- this way of invokation is used by SignMeeting and MeetingRoom
- ICS is not filled properly (some meeting are missing for unknown reason) when invoking getMeetingsOneRoomAndAttendee with
	- start_Date = YYYY-MM-D1T00:00:00Z and end_Date = YYYY-MM-DD2T00:00:00Z
	- more investigation at server end should be required to have more information on the root cause
#### **NOTE TO GET WSDL
- In order to get the WSDL file of your Gesroom server, use the full path of .asmx file + suffix "?WSDL"
	- ```http://<your-safeware-gesroom-server>.hds-group.com/ws_innes/WSINNES.asmx?WSDL```

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2016-08-25` V1.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
