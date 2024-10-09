# ADESOFT CALENDAR
*RELEASE NOTE*

## `2015-11-25` V1.10.10 [download](applets/connector-adesoft-V1.10.10/delivery/adesoft-calendar-V1.10.10.saz){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **MODELS PACKAGE**
- 3.24
	- Meeting Room Summarization V1.10.44 (or above)
	- Meeting Room Mono V1.10.39 (or above)
>##### **COMPATIBILITIES**
- Plugncast Studio V2.50.34 (or above)
- Plugncast Server V2.50.31 (or above)
- Playzilla V2.50.63 (or above)
- Gekkota V3.12.24 (or above)
- Microsoft Exchange 2007/2010/2013/365

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**  
- Installation guide (002A/EN) [download](applets/connector-adesoft-V1.10.10/delivery/adesoft-calendar-user-manual-002A_en.pdf){.auth-downloads}
#### **MODELS PACKAGE**
- Install Model package 3.24 to get the last version of Meeting Room        
#### **NOTE TO EXPORT CALENDAR ICS FROM APPLET PHP**
- In order to export ICS calendar with applet PHP, enter this URL in Web browser  
	- ```http://<domain>/plugnCast/.applets/.adesoft-calendar/2ical.php?calendarId=<roomId>```
		- with <domain> = Briva (or PlgnCast) server IP address
		- with <roomId> = *all_rooms* (or *room1*, ...)   
- The ICS is downloaded after a while in your PC (*myDownloads* directory)
- Note: this URL can be used also with suffix *&debug=yes* (for technical support only)
   - ```http://<domain>/plugnCast/.applets/.adesoft-calendar/2ical.php?calendarId=<roomId>&debug=yes```

# OLD VERSIONS HISTORY
*********************************************************************************************************

