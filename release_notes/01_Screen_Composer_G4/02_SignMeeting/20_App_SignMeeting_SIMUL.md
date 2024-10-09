# SignMeeting SIMULATOR
*RELEASE NOTE*

##`2023-04-19` V2.12.11 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.12.11.appi){.auth-downloads}                    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Change: rename the App name 
	- from *SignMeeting UI* to *SignMeeting SIMUL UI*  
- Change: rename the App name and version printable in the tooltip 
	- from *SignMeeting SIMUL 1.10.21_simul* to *SignMeeting SIMUL 2.12.10*
	- from *SignMeeting SIMUL UI 1.10.21_simul* to *SignMeeting SIMUL UI 2.12.10*
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
#### **USER MANUAL**
- SignMeeting SIMUL User manual 2.12.11~001A_en [download](app-signmeeting-simulator/screen-composer-signmeeting-simul-usermanual-2.12.11~001A_en.pdf){.auth-downloads}
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

##`2022-08-22` V2.11.12 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.11.12.appi){.auth-downloads}                    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `AQS` for AMP300 media players

##`2022-05-18` V2.11.11 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.11.11.appi){.auth-downloads}                    
>##### **IMPORTANT**
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these two *RoomScreen* css classes
	- *.mainpage_current_buttons_inactive*
	- *.mainpage_next_buttons_inactive*
- Change: an example of date format value is now displayed at the end of the format label in the form for each date format
- Change: modified the default value for the custom *RoomScreen* css class
	- *.mainpage_current_buttons*
	- *.mainpage_next_buttons*
- Fix: the form input was not supporting the variable anymore
- Fix: after having deleted a display profile and a default displayed profile was chosen to replace it, the devices having this substitution display profiles had always the same display profile properties 
- Fix: the later end time for SignMeeting is now 23:59 instead of 23:00
- Fix: it was not possible to display events between 23:00 and 23:59
- Fix: an unexpected blue artifact could be noticed in the left side of Screen Composer when opening the data source form
- Fix: a too long name for the resource label could imply a display label overlap in the *Devices* tab of the SignMeeting form
- Fix: a publication error was raised when a font file or an image file was added in the *linked medias* part of the form   
- Fix: in some case, in the *Device* tab of SignMeeting form, the window *Setting the display profile for the device* could be opened instead of the window *Setting the resource for the display profile* (and reciprocally) 

##`2022-02-04` V2.11.10 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.11.10.appi){.auth-downloads}                    
>##### **IMPORTANT**
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: when handle resources affectation to devices in the form, the resource label is displayed now followed by its resource id
- Change: when edited, the data source is highlighted in light green style instead of yellow style
- Fix: it was not possible anymore to watch the reservation for the room resources situated into the second reservation and consultation page

##`2021-08-04` V2.10.11 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.10.11.appi){.auth-downloads}                    
>##### **IMPORTANT**
- This version implies to load a *.css* file to customize the color of the theme for the *Summary screen by event* display profile
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the *Confirm my presence* button for the next meeting was displayed too high
- Fix: in the reservation page, the timeline was looking displayed too much on the left when the resource label was very long     
>##### **KNOWN LIMITATIONS**
- *Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s

##`2021-06-28` V2.10.10 [download](app-signmeeting-simulator/signmeeting_simul-screen_composer-addin-2.10.10.appi){.auth-downloads}                    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these display profiles
    - *Summary screen by resource*
    - *Summary screen by event*
    - *Room label*
- Change: a .css file is now required to customize the color of the theme for the *Summary screen by event* display profile   
    - `signmeeting_theme_summary_screen_by_resource.css`
- Change: duplicate the CSS theme example for *Room Screen* display profile into 2 CSS theme examples 
    - Dark: `signmeeting_theme_room_screen_dark.css` 
    - Light: `signmeeting_theme_room_screen_light.css`
- Change: remove these classes in the Room screen CSS theme example
    - *.mainpage_current_buttons_inactive*
    - *.mainpage_next_buttons_inactive*
    - *.shortcutinneraccess.disabled*
- Change: rename these classes in the Room screen CSS theme example
    - *.menuinneraccess* by *#booking_page_access_button*
    - *.shortcutinneraccess* by *#notification_page_access_button*
    - *shortcutPage.notificationpage_background* by *shortcutPage.notification_page_background*   
- Add support for banner title's font size and time and date label's font size customization in all the display profiles CSS  
    - `signmeeting_theme_summary_screen_by_event.css` 
    - `signmeeting_theme_room_screen_dark.css`
    - `signmeeting_theme_room_screen_light.css`
    - `signmeeting_theme_summary_screen_by_resource.css`
- Change: now there is one *Linked files* field set per display profile form
- Change: the LEDs is now switched off when the App is purged (removed from the device) 
- Change the date format labels 
    - from *d/m/yy* to *one-or-two-digit day, one-or-two-digit month, two-digit year*
    - from *d/m/yyyy* to *one-or-two-digit day, one-or-two-digit month, four-digit year*
    - from *d mmm yyyy* to *one-or-two-digit day, three-letter abbreviation month, four-digit year*
    - from *dd mmmm yyyy* to *two-digit day, literal month, four-digit year*
    - from *dd mmmm yy* to *two-digit day, literal month, two-digit year*
    - from *ddd d mm yyyy* to *three-letter-abbreviation day, two-digit day, two-digit month, four-digit year*
    - from *dddd d mmmm yyyy* to *literal day, two-digit day, literal month, four-digit year*
- Fix: the *field1..5* device information variable in the CSS was not supported for Qeedji TAB10s devices
- Fix: the email notification was not supported for Qeedji TAB10s devices  
- Fix: the user authentication from LDAP was not supported for Qeedji TAB10s devices
- Fix: in some case the columns header labels was not properly aligned with the column event labels
- Fix: the alphabetical sorting by the *Description* label criteria was not working anymore
- Fix: the alphabetical sorting by the *Summary* label criteria was not working anymore
- Fix: the time to scroll all the resources affected to the devices was too long
- Fix: the time to expand the devices to watch their associated resources was too long