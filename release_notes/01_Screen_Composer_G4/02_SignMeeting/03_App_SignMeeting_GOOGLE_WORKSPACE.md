# SignMeeting Google Workspace
*RELEASE NOTE*

## `2023-04-19` V2.12.11 [download](app-signmeeting-google-workspace/signmeeting_google_workspace-screen_composer-addin-2.12.11.appi){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Change: rename the App name 
	- from *SignMeeting UI* to *SignMeeting Google Workspace UI*  
- Change: rename the App name and version printable in the tooltip 
	- from *SignMeeting Google Workspace 1.10.21_google_workspace* to *SignMeeting Google Workspace 2.12.10*
	- from *SignMeeting Google Workspace UI 1.10.21_google_Workspace* to *SignMeeting Google Workspace UI 2.12.10*
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
    - Google Workspace  
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

#### **DOCUMENTATION**  
- SignMeeting Google Workspace User manual 2.12.11~001A_en [download](app-signmeeting-google-workspace/screen-composer-signmeeting-google-workspace-usermanual-2.12.11~001A_en.pdf){.auth-downloads}
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
#### **NOTE WHEN USING PRIVATE NAVIGATION**
- Open a Web browser in the private navigation mode may prevent the people to creating the meeting to access to room calendar    
#### **NOTE WHEN DISPLAYING ATTACHMENT**
SignMeeting is supporting the displaying of the first event attachment. It may be required to make some configuration in your `Google Admin console` and your `Google Workspace` system. For further information refer to the `SignMeeting Workspace` user manual  
#### **NOTE WHEN DISPLAYING DISPLAY NAMES INSTEAD OF EMAIL ADDRESSES**
SignMeeting is supporting the displaying of the attendees display name instead of displaying the attendees email address. It may be required to make some configuration in `Google Admin Console` and your `Google Workspace` system. For further information, refer to the `SignMeeting Workspace` user manual
#### **NOTE AFTER SIGNMEETING RESTART OR PUBLICATION**
In some rare case, after a reboot or after a screen composer publication, the event could not be displayed within the first four minutes 
#### **MIGRATION**
- Migration from SignMeeting 1.13.11 to SignMeeting 2.yy.zz is not supported

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2022-08-22` V2.11.12 [download](app-signmeeting-google-workspace/signmeeting_google_workspace-screen_composer-addin-2.11.12.appi){.auth-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `AQS` for AMP300 media players
- Fix: the event, taking place across several days, was not displayed the day before the last day when the end time was lower than the start time
- Fix: the event, taking place across several days, was not displayed if the event start date was more than one month ago
- Fix: the event was not displayed some specific days for the event taking place across several months   

## `2022-05-18` V2.11.11 [download](app-signmeeting-google-workspace/signmeeting_google_workspace-screen_composer-addin-2.11.11.appi){.auth-downloads} 
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- Migration from SignMeeting 1.13.11 to SignMeeting 2.11.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these two *RoomScreen* css classes
	- *.mainpage_current_buttons_inactive*
	- *.mainpage_next_buttons_inactive*
- Change: makes now until six connection attempts every fifteen seconds when SignMeeting does not manage to reach the calendar system after a reboot 
- Change: an example of date format value is now displayed at the end of the format label in the form for each date format
- Change: modified the default value for the custom *RoomScreen* css class
	- *.mainpage_current_buttons*
	- *.mainpage_next_buttons*
- Change: in case using inconsistent resource id, their names are displayed inside an information message with one resource name per line
- Fix: when there was no network connectivity at device start up, after having displayed the information message telling this trouble, SignMeeting could display a blank screen instead of starting normally with an empty meeting list   
- Fix: the form input was not supporting the variable anymore
- Fix: after having pressed on the *Book now* button for a resource having an inconsistent resource id, the current and next meeting could be not displayed for all the required resources until the next periodic refresh
- Fix: after having deleted a display profile and a default displayed profile was chosen to replace it, the devices having this substitution display profiles had always the same display profile properties 
- Fix: the later end time for SignMeeting is now 23:59 instead of 23:00
- Fix: it was not possible to display events between 23:00 and 23:59
- Fix: an unexpected blue artifact could be noticed in the left side of Screen Composer when opening the data source form
- Fix: meetings programmed between 00:00 to 1:59 could not be displayed
- Fix: a too long name for the resource label could imply a display label overlap in the *Devices* tab of the SignMeeting form
- Fix: a publication error was raised when a font file or an image file was added in the *linked medias* part of the form   
- Fix: in some case, in the *Device* tab of SignMeeting form, the window *Setting the display profile for the device* could be opened instead of the window *Setting the resource for the display profile* (and reciprocally)
- Fix: a same meeting spread in two rooms resource located in two different buildings could not be displayed for each room calendar
- Fix: in some case, after a publication or after a device reboot, some of the events could be not displayed until the next automatic refresh

## `2022-02-04` V2.11.10 [download](app-signmeeting-google-workspace/signmeeting_google_workspace-screen_composer-addin-2.11.10.appi){.auth-downloads} 
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- Migration from SignMeeting 1.13.11 to SignMeeting 2.11.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
