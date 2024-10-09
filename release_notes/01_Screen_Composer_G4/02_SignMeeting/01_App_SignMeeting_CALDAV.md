# SignMeeting CalDAV
*RELEASE NOTE*
    
##`2023-06-16` V2.12.12 [download](app-signmeeting-caldav/signmeeting_caldav-screen_composer-addin-2.12.12.appi){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the organizer name was not displayed 
- Fix: it was not possible to create event with SignMeeting when using MDaemon messaging server
- Fix: the older licenses keys were not supported anymore
- Fix: the events from 23.00 to 00.00 were not displayed
- Fix: the events across several days were not displayed
- Fix: the images attached in the event were not supported
- Fix: in some case, after having added a meeting, the focus was not returning automatically to the *View the meeting* 
- Fix: in the *Summarization by resource* profile, when the organizer value was empty, the *undefined* label was displayed         
>##### **KNOWN LIMITATIONS**
- Following a device reboot, the RFID 125 KHz badging does not work if the badge is approached without touching the TAB10s
- Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s
- The *Book Now* button does not allow to program a CalDAV instant booking by using the SLATE devices  
>##### **COMPATIBILITIES** 
- Connectors
    - CalDAV/MDaemon
    - CalDAV/Kerio Connect  
    - CalDAV/Sogo
    - CalDAV/Zimbra
- Host Software
    - Screen Composer 4.11.14 (or above) 
- Display profiles 
    - *Room Screen*
    - *Summary screen by event* 
        - *Landscape*
        - *Portrait*
    - *Summary screen by resource*
        - *Landscape*
        - *Portrait*
    - *Room label*
- Platform targets
    - Qeedji AQS 9.10.15 (or above) for AMP300 media players
    - Qeedji AQS 9.10.15 (or above) for TAB10s tablets
    - Qeedji Gekkota OS 5.11.10 (or above) for Qeedji DMB300 and DMB400 media players
    - Qeedji Gekkota OS 4.14.15 (or above) for Qeedji SMA300 and DMB400 media players
    - Qeedji Gekkota OS 4.13.13 (or above) for Qeedji SMT210 tablets
    - Qeedji Gekkota OS 4.13.14 (or above) for Qeedji SMH300 hub
    - Qeedji Gekkota RT 4.14.13 (or above) for MS-Windows
- Custom style sheets (CSS) 
    - signmeeting_theme_summary_screen_by_resource-001B.css
    - signmeeting_theme_room_screen_dark-001C.css
    - signmeeting_theme_room_screen_light-001C.css
    - signmeeting_theme_summary_screen_by_event-001B.css
    - signmeeting_theme_room_label-001B.css   
- Custom scripts 
    - Ethernet 
        - meetingControlDistech_001A.js 
        - meetingControlDistechWithAuth_001A.js
    - GPIO 
        - meetingControlSM_001A.js
    - Bluetooth
        - meetingControlEnOceanMotionSensor_001A.js

#INFORMATION
***********************************************************************
#### **USER MANUAL**
- SignMeeting CalDAV User manual 2.12.12~001A_en [download](app-signmeeting-caldav/screen-composer-signmeeting-caldav-usermanual-2.12.12~001A_en.pdf){.auth-downloads}
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILES**
- CSS File for *Room Screen* display profile - Default dark theme [download](application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_dark-001C.css){.auth-downloads}
- CSS File for *Room Screen* display profile - Default light theme [download](application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_light-001C.css){.auth-downloads}
- CSS File for *Summary screen by event* display profile - Default theme [download](application-notes-signmeeting/summary_screen_by_event/signmeeting_theme_summary_screen_by_event-001B.css){.auth-downloads}
- CSS File for *Summary screen by resource* display profile - Default theme [download](application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summary_screen_by_resource-001B.css){.auth-downloads}
- CSS File for *Room label* display profile - Default theme [download](application-notes-signmeeting/room_label/signmeeting_theme_room_label-001B.css){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR EXTERNAL DEVICES AVAILABLE BY ETHERNET**
- meetingControlDistech 001A [download](application-notes-signmeeting/custom-js/meetingControlDistech_001A.js){.auth-downloads}
- meetingControlDistechWithAuth 001A [download](application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_001A.js){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR EXTERNAL DEVICES AVAILABLE BY GPIO**
- meetingControlSM 001A [download](application-notes-signmeeting/custom-js/meetingControlSM_001A.js){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR EXTERNAL DEVICES AVAILABLE BY BLUETOOTH**
- meetingControlEnOceanMotionSensor 001A [download](application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_001A.js){.auth-downloads}
#### **CALDAVZAP**
- Config SOGO V1.10.10 [download](app-signmeeting-caldav/Caldavzap_config/config_SOGO-V1.10.10.js){.auth-downloads}
- Config KERIO V1.10.10 [download](app-signmeeting-caldav/Caldavzap_config/config_KERIO-V1.10.10.js){.auth-downloads}
#### **SOGO LDIF TO BE ABLE TO ADD RESOURCE**
- CalEntry (LDIF file)
    - calentry-schema-1 V1.10.10 [download](app-signmeeting-caldav/calentry-schema-1-V1.10.10.ldif){.auth-downloads}
    - calentry-schema-2 V1.10.10[download](app-signmeeting-caldav/calentry-schema-2-V1.10.10.ldif){.auth-downloads}
- CalResource (LDIF file)
    - calresource-schema-1 V1.10.10 [download](app-signmeeting-caldav/calresource-schema-1-V1.10.10.ldif){.auth-downloads}
    - calresource-schema-2 V1.10.10 [download](app-signmeeting-caldav/calresource-schema-2-V1.10.10.ldif){.auth-downloads}
    - calresource-schema-3 V1.10.10 [download](app-signmeeting-caldav/calresource-schema-3-V1.10.10.ldif){.auth-downloads}
#### **SOGO LDIF TO ADD RESOURCE**
- Add a ressource (LDIF file)
    - add-resourceroom6-resource V1.10.10 [download](app-signmeeting-caldav/add-resourceroom6-V1.10.10.ldif){.auth-downloads}

# HISTORY
***********************************************************************

##`2023-04-19` V2.12.11 [download](app-signmeeting-caldav/signmeeting_caldav-screen_composer-addin-2.12.11.appi){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Change: rename the App name 
	- from *SignMeeting UI* to *SignMeeting Caldav UI*  
- Change: rename the App name and version printable in the tooltip 
	- from *SignMeeting Caldav 1.10.21_caldav* to *SignMeeting Caldav 2.12.10*
	- from *SignMeeting Caldav UI 1.10.21_caldav* to *SignMeeting Caldav UI 2.12.10*
- Fix: the events of CalDAV/MDaemon connector could not be displayed  
- Fix: in some case, on AMP300 device, the App could be not displayed in full screen
- Fix: the NFC tag was not working when the *TAB10s* device was exiting from standby mode     
- Fix: on AQS devices, the time between midnight and 00:59 AM was displayed 24:00 to 24:59   
- Fix: in the previous version, between midnight and noon, when the time in the banner was displayed with the *12hrs* format, the time was displayed with the *PM* suffix instead of the *AM* suffix  
- Fix: in some rare case, after a *power manager* task had been executed, some event information like the *current meeting* label, the *next meeting* label, the event *description*, the event *summary* or the *event* attendees was not displayed on the main page of the *Room Screen* layout on AQS devices      

##`2022-08-22` V2.11.10 [download](app-signmeeting-caldav/signmeeting_caldav-screen_composer-addin-2.11.10.appi){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version