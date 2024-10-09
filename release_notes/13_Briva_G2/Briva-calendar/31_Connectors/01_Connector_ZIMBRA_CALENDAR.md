# ZIMBRA CALENDAR
*RELEASE NOTE*

##`2015-11-20` V1.10.13 [download](applets/connector-zimbra-V1.10.13/delivery/zimbra-calendar-V1.10.13.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add: debug option by URL option *&debug=YES*
- Add: get the "Organizer display name" 
	- from this key word format in description: ```#<organiser_name>#``` else  
	- from login account display name used when meeting has been created   
		- In case delegation (user1 is entering meeting is user2's calendar), user2 display name is seen as empty (due to bad management of Zimbra in this case); to solve the issue, SignMeeting displays the 2th user name in case it is part of attendee list)
- Remove: get the "Organizer name to display" from optional attendee
>##### **MODELS PACKAGE**
- 3.23
	- MeetingRoom Summarization V1.10.43 (or above)
	- MeetingRoom Mono V1.10.38 (or above)   
>##### **COMPATIBILITIES**
- Plugncast Server V2.50.31 (or above)
- Briva Server V2.10.10 (or above)
- Playzilla V2.50.90 (or above)
- Gekkota V3.12.24 (or above)
>##### **KNOWN LIMITATIONS**
- When an *All day* event is programmed in Zimbra calendar, the .ics calendar file cannot be built properly by the applet.

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**  
- Installation guide (005A/FR) [download](applets/connector-zimbra-V1.10.13/delivery/zimbra-calendar-user-manual-005A_en.pdf){.auth-downloads} 	
#### **MODELS PACKAGE**
- Install Model package 3.23 to get the last version of Meeting Room   
##### **NOTE FOR RECURRING MEETINGS**
- Meeting room environment: If an event of recurring meeting serie is modified, it won't be seen anymore as part of the recurring meeting
#### **NOTE TO EXPORT CALENDAR ICS FROM APPLET PHP**
- In order to export ICS calendar with applet PHP, enter this URL in Web browser  
	- ```http://<domain>/plugnCast/.applets/.zimbra-calendar/2ical.php?calendarId=<roomId>```
		- with <domain> = Briva (or PlgnCast) server IP address
		- with <roomId> = *all_rooms* (or *room1*, ...)   
- The ICS is downloaded after a while in your PC (*myDownloads* directory)
- Note: this URL can be used also with suffix *&debug=yes* (for technical support only)
   - ```http://<domain>/plugnCast/.applets/.zimbra-calendar/2ical.php?calendarId=<roomId>&debug=yes```
   
#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2015-05-19` V1.10.12 [download](applets/bs-wa-zimbra-V1.10.12/zimbra-calendar-V1.10.12.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support recurring meetings
- Add security to not have UID doubloons
- Change: use *universal time* field
- Change: set DTSTAMP to *start date* instead of default *current time* to avoid download data too often (monitor also DTSTAMP to set it to the modified date when possible)
- Change: remove the location from the attendees

##`2014-12-31` V1.10.10 [download](applets/bs-wa-zimbra-V1.10.10/zimbra-calendar-V1.10.10.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial release