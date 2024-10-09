# SignMeeting MS-EXCHANGE
*RELEASE NOTE*
    
**Since October 2020, any new or inactive tenants of Exchange Online have Basic Authentication disabled by default. In the second half of 2022, active Exchange Online users will have Basic Authentication disabled. In both cases, the authentication will be replaced by the Modern authentication. That implies to create an Azure Active Directory (Azure AD) application for your SignMeeting Appi then enter the required values resulting from the application creation in the SignMeeting form. For further information, refer to the SignMeeting user manual.**

##`2023-06-13` V2.12.12 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.12.12.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when the tenant ID, the client ID and the secret ID values of the data source form was kept empty, it was not possible to validate the form when *According to a service account* was selected in the SignMeeting form  
>##### **KNOWN LIMITATIONS**
- Following a device reboot, the RFID 125 KHz badging does not work if the badge is approached without touching the TAB10s
- *Apply a filter to RFID detection* in the RFID tab is not supported for Qeedji TAB10s 
>##### **COMPATIBILITIES** 
- Connectors
    - MS-Exchange 2007/2010/2013/2016/2019/online (O365)  
    - LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version, Briva G3 LDAP)
- PowerShell script for Azure Active Directory Application, version 1.10.13 (or above)
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
- SignMeeting EWS User manual 2.12.12~001A_en [download](app-signmeeting-ews/screen-composer-signmeeting-ews-usermanual-2.12.12~001A_en.pdf){.auth-downloads}
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- For SignMeeting EWS 2.10.12 (and above)
    - PowerShell script for Azure Active Directory Application support 1.10.16 [download](scripts/powershell/Powershell_Innes_AAD-1.10.16.zip){.auth-downloads}   
- For SignMeeting EWS 2.10.11 (and below)
    - PowerShell script for Azure Active Directory Application support 1.10.12 [download](scripts/powershell/Powershell_Innes_AAD-1.10.12.zip){.auth-downloads}
- For further information, refer to the SignMeeting user manual
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
#### **MIGRATION**
- Migration from SignMeeting 1.13.11 to SignMeeting 2.yy.zz is not supported

# HISTORY
***********************************************************************

##`2023-04-19` V2.12.11 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.12.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Gekkota 5*
- Add support for PDF media or MS-PowerPoint media as screen saver
- Add support for credential selection
    - *according to a service account*: to select one of the Microsoft service accounts registered in Screen Composer
    - *according to a credential*: to enter the tenant ID, the client ID and the secret of the credential directly in the SignMeeting form 
- Change: rename the App name 
    - from *SignMeeting UI* to *SignMeeting EWS UI*  
- Change: rename the App name and version printable in the tooltip 
    - from *SignMeeting EWS 1.10.21_ews* to *SignMeeting EWS 2.12.10*
    - from *SignMeeting EWS UI 1.10.21_ews* to *SignMeeting EWS UI 2.12.10*
- Fix: in some case, on AMP300 device, the App could be not displayed in full screen
- Fix: the NFC tag was not working when the *TAB10s* device was exiting from standby mode     
- Fix: on AQS devices, the time between midnight and 00:59 AM was displayed 24:00 to 24:59   
- Fix: between midnight and noon, when the time in the banner was displayed with the *12hrs* format, the time was displayed with the *PM* suffix instead of the *AM* suffix  
- Fix: in some rare case, on AQS devices, after a *power manager* task had been executed, some event information like the *current meeting* label, the *next meeting* label, the event *description*, the event *summary* or the *event* attendees was not displayed on the main page of the *Room Screen* layout   

##`2022-08-22` V2.11.12 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.11.12.appi){.auth-downloads}   
>##### **IMPORTANT**
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `AQS` for AMP300 media players
- Fix: the event, taking place across several days, was not displayed the day before the last day when the end time was lower than the start time
- Fix: the event, taking place across several days, was not displayed if the event start date was more than one month ago
- Fix: the event was not displayed some specific days for the events taking place across several months

##`2022-05-18` V2.11.11 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.11.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
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
- Fix: an unexpected blue artifact could be noticed in the left side of Screen Composer when opening the datasource form
- Fix: meetings programmed between 00:00 and 1:59 could not be displayed
- Fix: a too long name for the resource label could imply a display label overlap in the *Devices* tab of the SignMeeting form
- Fix: an all day long meeting taking place one day was displayed also the day after
- Fix: a publication error was raised when a font file or an image file was added in the *linked medias* part of the form   
- Fix: in some case, in the *Device* tab of SignMeeting form, the window *Setting the display profile for the device* could be opened instead of the window *Setting the resource for the display profile* (and reciprocally)

##`2022-02-04` V2.11.10 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.11.10.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for user certificates of Qeedji system AOSP devices
- Change: when handle resources affectation to devices in the form, the resource label is displayed now followed by its resource id
- Change: when edited, the data source is highlighted in light green style instead of yellow style
- Fix: some events from some consistent resource id could not be displayed when the data source was containing some resource with inconsistent resource ids     
- Fix: it was not possible anymore to watch the reservation for the room resources situated into the second reservation and consultation page

##`2021-09-01` V2.10.12 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.10.12.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- This version implies to load a *.css* file to customize the color of the theme for the *Summary screen by event* display profile
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the product is not compatible anymore with the `client secret` value generated with the *PowerShell script for Azure Active Directory Application support 1.10.12 (and below)*
>##### **COMPATIBILITIES** 
- PowerShell script for Azure Active Directory Application support 1.10.13 (or above)

##`2021-08-04` V2.10.11 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.10.11.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- This version implies to load a *.css* file to customize the color of the theme for the *Summary screen by event* display profile
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
- In case your Azure AD client secret has been generated with *PowerShell script for Azure Active Directory Application support 1.10.12 (or below)*, your client secret may be not valid anymore. It is required to install the *PowerShell script for Azure Active Directory Application support 1.10.13 (or above)* and generate again *(application) client ID*, *tenant ID* and *client secret* for your SignMeeting MS-Exchange App    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the `Use the email address of another calendar account for the reservation` option is now on the data source *Other settings* tab instead of the data source *Connection* tab
- Fix: in some case, after having deleted some event from the reservation panel, some other event could disappear visually from the reservation page
- Fix: the confirm my presence button for the next meeting was displayed too high
- Fix: in the reservation menu, the timeline was looking displayed too much on the left when the resource label was very long
>##### **COMPATIBILITIES** 
- PowerShell script for Azure Active Directory Application support 1.10.12 (or below)

##`2021-06-02` V2.10.10 [download](app-signmeeting-ews/signmeeting_ews-screen_composer-addin-2.10.10.appi){.auth-downloads}   
>##### **IMPORTANT**
- One SignMeeting license key is required per device
- This version implies to load a .css file to customize the color of the theme for the *Summary screen by event* display profile
- Migration from SignMeeting 1.13.11 to SignMeeting 2.10.zz is not yet supported
- Not compatible with Qeedji Gekkota OS G3 device and Gekkota RT G3 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these display profiles
    - *Summary screen by resource*
    - *Summary screen by event*
    - *Room label*
- Change: the OAuth password is now encoded when 
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
    - `signmeeting_theme_room_label-001B.css`
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
>##### **COMPATIBILITIES** 
- PowerShell script for Azure Active Directory Application support 1.10.12 (or below)