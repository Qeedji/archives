# SignMeeting Jooxter
*RELEASE NOTE*
    
## `2023-04-19` V2.12.11 [download](app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-addin-2.12.11.appi){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Change: rename the App name 
	- from *SignMeeting UI* to *SignMeeting Jooxter UI*  
- Change: rename the App name and version printable in the tooltip 
	- from *SignMeeting Jooxter 1.10.21_jooxter* to *SignMeeting Jooxter 2.12.10*
	- from *SignMeeting Jooxter UI 1.10.21_jooxter* to *SignMeeting Jooxter UI 2.12.10*
- Fix: in some case, on AMP300 device, the App could be not displayed in full screen
- Fix: the NFC tag was not working when the *TAB10s* device was exiting from standby mode     
- Fix: on AQS devices, the time between midnight and 00:59 AM was displayed 24:00 to 24:59   
- Fix: in the previous version, between midnight and noon, when the time in the banner was displayed with the *12hrs* format, the time was displayed with the *PM* suffix instead of the *AM* suffix  
- Fix: in some rare case, after a *power manager* task had been executed, some event information like the *current meeting* label, the *next meeting* label, the event *description*, the event *summary* or the *event* attendees was not displayed on the main page of the *Room Screen* layout on AQS devices      
>##### **KNOWN LIMITATIONS**
- Following a device reboot, the RFID 125 KHz badging does not work if the badge is approached without touching the TAB10s
- *Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s
>##### **COMPATIBILITIES** 
- Connectors 
	- Jooxter online (API V3)      
    - LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
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

#INFORMATION
***********************************************************************
#### **USER MANUAL**
- SignMeeting Jooxter user manual 2.12.11~001A_en [download](app-signmeeting-jooxter/screen-composer-signmeeting-jooxter-usermanual-2.12.11~001A_en.pdf){.auth-downloads}
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

# HISTORY
***********************************************************************

## `2022-08-22` V2.11.12 [download](app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-addin-2.11.12.appi){.auth-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `AQS` for AMP300 media players

## `2022-05-18` V2.11.11 [download](app-signmeeting-jooxter/signmeeting_jooxter-screen_composer-addin-2.11.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- Once this SignMeeting version is installed, in case you had to install the previous SignMeeting version afterwards, contact support@innes.pro 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version for Screen Composer G4