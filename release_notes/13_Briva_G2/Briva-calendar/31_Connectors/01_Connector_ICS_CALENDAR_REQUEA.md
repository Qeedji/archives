# ICS CALENDAR REQUEA
*RELEASE NOTE*

##`2013-08-12` V1.10.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/ics-calendar-V1.10.16/ics-calendar-V1.10.16.saz)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change (optimization) attachment
- Add security to not downloaded again when the file has not changed (Playzilla G3 only)
- Fix start/end events issue
>##### **COMPATIBILITIES**
- Plugncast Studio V2.50.34 (or above)
- Plugncast Server V2.50.25 (or above)
- Models V1.10.21 minimum (or above)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/ics-calendar-V1.10.16/ics-calendar-user-manual-002A_en.pdf)
- REQUEA getting started guide [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/PCS.WA.REQUEA-getting-started-guide.txt)
- REQUEA requirements [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/requea-configuration/REQUEA-ics-calendars-specifications.pdf)
- REQUEA xml configuration [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/requea-configuration/configuration-files-examples/configuration.xml)
- REQUEA rdf [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/requea-configuration/configuration-files-examples/rooms.rdf)
#### **MODELS PACKAGE**
- Models package 3.10.16 [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/models-V3.10.16/models-V3.10.16.zip)
- Examples and documentation [download](https://github.com/Qeedji/archives/blob/master/downloads/applets/pcs-wa-requea-V1.10.17/models-V3.10.16/examples-and-documentation.zip)
#### **MODELS PACKAGE VERSION VERSUS PLAYZILLA V3**
- When using Playzilla V3.xx.yy, use models V1.10.30 (or above) according to

#### **NOTE FOR LAST CALENDAR SYTEM REQUEA V3 (SPACE CHARACTER NOT SUPPORTED)**
- Since last Requea calendar system version V3, new security requirements imply that space characters are not supported anymore directly in the HTTP requests between ICS Requea connector and Requea calendar system.
- To solve the issue, replace the *space* characters inside the tag ```<param name>...</param>``` values by its encoded equivalent value (encoded HTML URL) ```%20``` in Requea configuration file:
	- Example of configuration file path
		- C:\Users\Public\Documents\Innes Briva\Server\.accounts\<domain>\.applets\.requea\configuration.xml
		- C:\Users\Public\Documents\Innes PlugnCast\Server\.accounts\<domain>\.applets\.requea\configuration.xml
	- Example of configuration.xml extract compliant with new Requea calendar system (*space* character replaced by ```%20```)
		- In this example
			- database value ```Requea DB_TEST``` is replaced by ```Requea%20DB_TEST```
			- room value ```R 201``` is replaced by ```R%201```
			```<!--scc:calendar id="all_rooms" server="url(#serverId)">
			<param name="database">Requea%20DB_TEST</param>
			<param name="resource">R%201</param>
			<param name="resource">R%202</param>
			<param name="resource">R%203</param>
			<param name="resource">Séances</param>
			<param name="cachePersistence">0</param>
			<param name="startRelated">day-start</param>
			<param name="endRelated">day-end</param>
		</scc:calendar-->```

 	- Apply the %20 policy for all the file for the value inside the tag ```<param name>...</param>```

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2013-02-21` V1.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new parameter *sendCacheOnServerError*
- Fix event not correctly read
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
