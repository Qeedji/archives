# SignMeeting Microsoft 365 (or M365)
*RELEASE NOTE*

## `2024-10-07` V2.14.10 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.14.10.appi){.auth-downloads}
>##### **IMPORTANT**
Do upgrade your SignMeeting M365 version to this version 2.14.10 only to support SLATE206 devices. For SLATE206 devices, the publication of the App from Screen Composer is done by publishing directly on the SLATE206 USB mass storage directory    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SLATE206 device models with `RoomLabel` layout
>##### **KNOWN LIMITATIONS**
- Following a device reboot, the RFID 125 KHz badging does not work if the badge is approached without touching the TAB10s
- *Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s
- The SLATE206 device cannot be detected with UPnP detection
>##### **COMPATIBILITIES** 
- Connectors
    - Microsoft 365 (or M365) 
    - LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
- PowerShell script for Azure Active Directory Application, version 1.10.13 (or above)
- Host Software
    - Screen Composer 4.13.10 (or above) 
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
	- AQS 9.10.20 (or above) for 
       	- Qeedji AMP300 media players 
	    - Qeedji TAB10s tablets
    	- Qeedji TAB10b tablets
    - Gekkota OS 5.11.10 (or above) for Qeedji DMB300 and DMB400 media players
    - Gekkota OS 4.14.16 (or above) for Qeedji SMA300 and DMB400 media players
    - Gekkota OS 4.13.13 (or above) for Qeedji SMT210 tablets
    - Gekkota OS 4.13.14 (or above) for Qeedji SMH300 hub for SLATE106
    - Gekkota RT 4.14.13 (or above) for MS-Windows
    - WIS 1.10.10 for Qeedji SLATE206
- Custom style sheets (CSS): 
    - signmeeting_theme_summary_screen_by_resource-001B.css
    - signmeeting_theme_room_screen_dark-001C.css
    - signmeeting_theme_room_screen_light-001C.css
    - signmeeting_theme_summary_screen_by_event-001B.css
    - signmeeting_theme_room_label-001B.css
- Custom scripts: 
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
- SignMeeting M365 User manual 2.13.10~001B_en [download](app-signmeeting-m365/screen-composer-signmeeting-m365-usermanual-2.13.10~001B_en.pdf){.auth-downloads}
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- For SignMeeting M365 2.10.12 (and above)
    - PowerShell script for Azure Active Directory Application support 1.10.16 [download](scripts/powershell/Powershell_Innes_AAD-1.10.16.zip){.auth-downloads}   
- For SignMeeting M365 2.10.11 (and below)
    - PowerShell script for Azure Active Directory Application support 1.10.12 [download](scripts/powershell/Powershell_Innes_AAD-1.10.12.zip){.auth-downloads}
- For further information, refer to the SignMeeting user manual
#### **CSS FILE FOR THE DIFFERENT DISPLAY PROFILES**
- CSS File for *Room Screen* display profile - Default dark theme [download](application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_dark-001C.css){.auth-downloads}
- CSS File for *Room Screen* display profile - Default light theme [download](application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_light-001C.css){.auth-downloads}
- CSS File for *Summary screen by event* display profile - Default theme [download](application-notes-signmeeting/summary_screen_by_event/signmeeting_theme_summary_screen_by_event-001B.css){.auth-downloads}
- CSS File for *Summary screen by resource* display profile - Default theme [download](application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summary_screen_by_resource-001B.css){.auth-downloads}
- CSS File for *Room label* display profile - Default theme [download](application-notes-signmeeting/room_label/signmeeting_theme_room_label-001B.css){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR DEVICES AVAILABLE BY WEB SERVICES (LIKE DISTECH CONTROL DEVICES)**
- meetingControlDistech 001A [download](application-notes-signmeeting/custom-js/meetingControlDistech_001A.js){.auth-downloads}
- meetingControlDistechWithAuth 001A [download](application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_001A.js){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR DEVICES AVAILABLE BY GPIO**
- meetingControlSM 001A [download](application-notes-signmeeting/custom-js/meetingControlSM_001A.js){.auth-downloads}
#### **CUSTOM SCRIPTS EXAMPLE FOR DEVICES AVAILABLE BY BLUETOOTH**
- meetingControlEnOceanMotionSensor 001A [download](application-notes-signmeeting/custom-js/meetingControlEnOceanMotionSensor_001A.js){.auth-downloads}


# HISTORY
***********************************************************************

## `2023-09-28` V2.13.10 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.13.10.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the capability in the form to use the screensaver from operating system as well as the screensaver from the App  
	- If the screensaver from the operating system is selected in the form but not supported by the device, the default screensaver used is the screensaver from the App

## `2023-04-19` V2.12.11 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.12.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Add support for credential selection
	- *according to a service account*: to select one of the Microsoft service accounts registered in Screen Composer
	- *according to a credential*: to enter the tenant ID, the client ID and the secret of the credential directly in the SignMeeting form 
- Change: rename the App name 
	- from *SignMeeting UI* to *SignMeeting 365 UI*  
- Change: rename the App name and version printable in the tooltip 
	- from *SignMeeting 365 1.10.21_m365* to *SignMeeting 365 2.12.10*
	- from *SignMeeting 365 UI 1.10.21_m365* to *SignMeeting 365 UI 2.12.10*
- Fix: the logo inside the *SignMeeting 365* APK and inside the *SignMeeting 365 UI* APK had not the same colour 
- Fix: in some case, on AMP300 device, the App could be not displayed in full screen
- Fix: the NFC tag was not working when the *TAB10s* device was exiting from standby mode     
- Fix: on AQS devices, the time between midnight and 00:59 AM was displayed 24:00 to 24:59   
- Fix: between midnight and noon, when the time in the banner was displayed with the *12hrs* format, the time was displayed with the *PM* suffix instead of the *AM* suffix  
- Fix: in some rare case, after a *power manager* task had been executed, some event information like the *current meeting* label, the *next meeting* label, the event *description*, the event *summary* or the *event* attendees was not displayed on the main page of the *Room Screen* layout on AQS devices      

## `2022-10-19` V2.11.13 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.11.13.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Book Teams meeting at the same time as the room reservation* option in the room resource pane to create automatically a *Join* button inside the meeting to be able to join the meeting with Microsoft Teams     

## `2022-08-22` V2.11.12 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.11.12.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `AQS` for AMP300 media players
- Fix: the event, taking place across several days, was not displayed the day before the last day when the end time was lower than the start time
- Fix: the event, taking place across several days, was not displayed if the event start date was more than one month ago
- Fix: the event was not displayed for some specific days for the event taking place across several months

## `2022-05-18` V2.11.11 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.11.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
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
- Fix: a hour-glass was displayed with a blank screen at SignMeeting start up when one of the resource had an inconsistent domain name   
- Fix: after having deleted a display profile and a default displayed profile was chosen to replace it, the devices having this substitution display profiles had always the same display profile properties 
- Fix: the later end time for SignMeeting is now 23:59 instead of 23:00
- Fix: it was not possible to display events between 23:00 and 23:59
- Fix: an unexpected blue artifact could be noticed in the left side of Screen Composer when opening the data source form
- Fix: the attendees was not displayed
- Fix: meetings programmed between 00:00 and 1:59 could not be displayed
- Fix: a too long name for the resource label could imply a display label overlap in the *Devices* tab of the SignMeeting form
- Fix: a publication error was raised when a font file or an image file was added in the *linked medias* part of the form   
- Fix: in case all the resource id was inconsistent, no information message was displayed
- Fix: in some case, in the *Device* tab of SignMeeting form, the window *Setting the display profile for the device* could be opened instead of the window *Setting the resource for the display profile* (and reciprocally)
 
## `2022-02-04` V2.11.10 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.11.10.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for user certificates of Qeedji system AOSP devices
- Change: when handle resources affectation to devices in the form, the resource label is displayed now followed by its resource id
- Change: when edited, the data source is highlighted in light green style instead of yellow style   
- Fix: it was not possible anymore to watch the reservation for the room resources situated into the second reservation and consultation page
- Fix: the image attached to the event was not displayed
- Fix: event title whose privacy level was *private* was not hidden or replaced by the substitution title

## `2021-09-01` V2.10.12 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.10.12.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- In case your Azure AD *client secret* has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting M365 App
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the product is not compatible anymore with the `client secret` value generated with the *PowerShell script for Azure Active Directory Application support 1.10.12 (and below)*

## `2021-08-04` V2.10.11 [download](app-signmeeting-m365/signmeeting_m365-screen_composer-addin-2.10.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version 
>##### **KNOWN LIMITATIONS**
- *Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s
- the banner height in the *Summarization by resource - portrait* display profile is twice too high
>##### **COMPATIBILITIES** 
- Connectors
    - Microsoft 365 (or M365) 
    - LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
- PowerShell script for Azure Active Directory Application support 1.10.12 (or below)
- Host Software
    - Screen Composer 4.11.11 (or above) 
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
    - Qeedji system AOSP 9.10.14 (or above) for Qeedji TAB10s tablets
    - Qeedji Gekkota OS 4.13.13 (or above) for Qeedji SMT210 tablets
    - Qeedji Gekkota OS 4.13.14 (or above) for Qeedji SMH300 hub
    - Qeedji Gekkota OS 4.14.15 (or above) for Qeedji SMA300 and DMB400 media players  
    - Qeedji Gekkota RT 4.13.15 (or above) for MS-Windows 
- Custom style sheets (CSS): 
    - signmeeting_theme_summary_screen_by_resource-001B.css
    - signmeeting_theme_room_screen_dark-001B.css
    - signmeeting_theme_room_screen_light-001B.css
    - signmeeting_theme_summary_screen_by_event-001B.css
    - signmeeting_theme_room_label-001B.css
- Custom scripts: 
	- Ethernet 
		- meetingControlDistech_001A.js 
		- meetingControlDistechWithAuth_001A.js
	- GPIO 
		- meetingControlSM_001A.js
	- BlueTooth
		- meetingControlEnOceanMotionSensor_001A.js
- Tag 
    - NFC 13,56 MHz
    - RFID 125 KHz
