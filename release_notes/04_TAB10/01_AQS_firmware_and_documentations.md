# AQS firmware and documentations for TAB10 devices
*RELEASE NOTE*

*Never make electric unplug on your device while firmware upgrade is in progress else the device may not be able to work properly*

##`2024-10-08` V9.11.10_beta10 [download](tab10/aosp-tab10-setup-9.11.10_beta10.fqs){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Retrieve tasks to be executed from a http(s) server* section in the *Servers* pane of the *Configuration* menu of the device configuration Web user interface to self-administrate the device from a remote server
- Change: embed these built-in Apps:
	- Power BI Online Viewer 1.10.12
	- URL launcher 1.10.20   
	- Media Folder Injector 1.10.12
- Fix: in some rare case, the NFC badging could stop running 
>##### **COMPATIBILITIES**
- TAB10s device
- TAB10b device  
- Configuration script V1.10.23 (or above)
- NAPOE109ku 1.10.12
- NAPOE109kt 1.10.12
- NAPOE109ft 1.10.12
- WebDAV client examples: 
    - Bitkinex
    - CarotDAV
    - Windows explorer               
>##### **NOT YET SUPPORTED**
- support for *identifier* and *password* inputs self-filling and self-confirmation to access to the Web page content when using another App than built-in *URL Launcher*
- support for UDP stream playback
- support for widgets using UDP 
- support for these MS-PowerPoint features
    - animation 
    - effects
           - WordArt, shadow 
    - images 
           - image with filtering
           - .emf
    - animated image 
           - .gif & .png (displayed but not animated) 
    - these shapes
        - smart Art
        - multi-colors shape texture
    - text 
        - kerning
    - OLE injection (MS objects)
- UDP datagram
- some Web pages of Web sites which are not supporting to be displayed inside I Frame may not be displayed
- the configuration Web user interface and the device Web server are not available in https

#INFORMATION
***********************************************************************
#### **USER MANUAL**
- TAB10s Qeedji user manual 9.11.10~001A_en [download](tab10/tab10s-qeedji-user_manual-9.11.10~001A_en.pdf){.free-downloads}
- TAB10b Qeedji user manual 9.11.10~001A_en [download](tab10/tab10b-qeedji-user_manual-9.11.10~001A_en.pdf){.free-downloads}
#### **DEVELOPER MANUAL**
- TAB10s developer manual 9.11.10~001A_en [Download](tab10/tab10s-developer_manual-AOSP-9.11.10~001A_en.pdf){.free-downloads}
- TAB10b developer manual 9.11.10~001A_en [Download](tab10/tab10b-developer_manual-AOSP-9.11.10~001A_en.pdf){.free-downloads}
#### **CONFIGURATION SCRIPT**
- [Link to specific configuration script](http://www.qeedji.tech/en/support/index.php?TAB10/Application_notes_and_related_tools/Configuration_by_script)
#### **SDK DEVELOPERS**
- [Link to github AOSP for TAB10](https://github.com/Qeedji/aosp-TAB10s-sdk/tree/master)
#### **DEMO APK**
- [Link to Demo APK](http://www.innes.pro/en/support/index.php?TAB10/AQS_demo_APK)
#### **VENDOR APK**
- [Link to Vendor APK](http://www.qeedji.tech/en/support/index.php?TAB10/AQS_vendor_APK)
#### **POWERSHELL SCRIPT**
- [Link to setAppAsSystemApp PowerShell script](http://www.qeedji.tech/en/support/index.php?TAB10/Application_notes_and_related_tools/AQS-setAppAsSystemApp_PowerShell_script)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.18 [download](scripts/powershell/Powershell_Innes_AAD-1.10.18.zip){.auth-downloads} for
    - Power BI Online viewer application
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**  
- [Link to Qeedji PowerPoint Publisher for Media Players](http://www.innes.pro/en/support/index.php?TAB10/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi){.free-downloads}
#### **DEBUG MODE**
The debug mode is deactivated by default    
#### **ISO FILE FOR FACTORY RECOVERY**
To get the `aosp-tab10-setup-9.10.19.iso` file for factory recovery, contact support@qeedji.tech

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2024-06-01` V9.10.20 [download](tab10/aosp-tab10-setup-9.10.20.fqs){.free-downloads}
>##### **NOTE**
- After having upgraded the firmware version, in case an older version of URL launcher had been installed by the end user, it is advised to remove this older version of URL launcher 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when a `/` character was entered as suffix of the IP address (e.g. 192.168.10.10/17) in the *No proxy for* input in the *LAN_1* pane or in the *WLAN_1* pane of the *Configuration* menu in the device configuration Web user interface, a http error 500 was returned
- Fix: the `*` character was not supported in the *No proxy for* input (e.g. *.qeedji.tech) in the *LAN_1* pane or in the *WLAN_1* pane of the *Configuration* menu in the device configuration Web user interface  
- Fix: after a scheduled device restart, in some cases, the App could stop running, displaying *no content*
 
##`2024-03-27` V9.10.19 [download](tab10/aosp-tab10-setup-9.10.19.fqs){.free-downloads}
>##### **NOTE**
- After having upgraded the firmware version, in case an older version of URL launcher had been installed by the end user, it is advised to remove this older version of URL launcher 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: embed URL_launcher 1.10.19
- Fix: the specific .p12 certificates having no password for some specific part of the certificate could not be installed in the *802.1X certificates* section of the *Certificates* pane of the *Configuration* menu in the device configuration Web user interface

##`2024-01-18` V9.10.18 [download](tab10/aosp-tab10-setup-9.10.18.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: downgrade back to Chromium Web engine 83.0
- Change: embed *Power BI Online Viewer* 1.10.11
- Change: embed *URL Launcher* 1.10.18
- Fix: in some case, the playback of the video media having no audio track could not start at all or could freeze on the first image of the video media

##`2023-12-20` V9.10.17 [download](tab10/aosp-tab10-setup-9.10.17.fqs){.free-downloads} 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Power BI Online Viewer* 1.10.10 built-in App
- Add support these two device models value in the *Device* pane of the *Information* menu in the device configuration Web interface 
	- *TAB10b*
	- *TAB10s* 
- Change: embed *URL launcher* 1.10.17 built-in App 
- Change: upgrade Chromium Web engine from 83.0 to 113.0 (April 2023)
- Change: update the list of embedded trusted CA certificates
- Change: the label of the button in the device configuration Web user interface, allowing to reach the applicative Web page, is now *TAB10* instead of *TAB10s* or *TAB10b* 
- Fix: the audio volume was staying to 6% after a device start-up when the reboot task happened within a power manager task
- Fix: in some rare cases, the device could not start

##`2023-09-28` V9.10.16 [download](tab10/aosp-tab10-setup-9.10.16.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for capability to copy media and folder from USB storage media to file system when the *Media Folder Injector* App is running
- Add support for goToScreenOn() API in PowerManager
- Add support for capability to launch a custom screensaver App (e.g. *Screensaver for AV stream reader*)
- Change: embed the *Media Folder Injector* App V1.10.10 vendor App in the table of installed APK in the *Apps* menu of the *Configuration* tab in the device configuration Web user interface
- Change: embed the *URL launcher* App V1.10.16 vendor App in the table of installed APK in the *Apps* menu of the *Configuration* tab in the device configuration Web user interface

##`2023-07-06` V9.10.15 [download](tab10/aosp-tab10-setup-9.10.15.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the test card activation/deactivation when pressing this USB keyboard keys sequence in less than ten seconds:
	- [left arrow, right arrow, left arrow, right arrow] 
- Add support for this user preferences to support the activation/deactivation of the test card when pressing the keys sequence above: 
	- *persist.sys.testcard.key-event.all.authorized* (false by default)
- Add support for *Gallery* App in the Android App view
- Fix: in some rare case, the AOSP middleware could not start anymore and was displaying this surround light error code: 5 consecutive short green flashes of 300 ms, periodic in alternance with 4 seconds Off

##`2023-04-03` V9.10.14 [download](tab10/aosp-tab10-setup-9.10.14.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Tasks* pane in the *Configuration* menu of the device configuration Web user interface
    - *Power manager* task
        - *Very Highly Optimized*
        - *Highly Optimized*
    - *Reboot manager* task
- Add support for *power manager* task exit by pressing shortly on the *system button* of the device
- Add support for *power manager* task exit by touching the screen depending on the *persist.sys.power-manager.level.min.hid.pointer-event.enable* or on the *persist.sys.power-manager.level.low.hid.pointer-event.enable* user preference value   
- Add support for a picture area, in the *Device* pane of the *Information* menu in the device configuration Web user interface, allowing to display the current screen content thanks to a *Refresh* button 
- Add support for audio output selection for the *Output* pane in the *Configuration* menu of the device configuration Web user interface
    - *automatic*
    - *internal* 
    - *USB audio*
- Add support for *Running*/*Stopped* status as suffix of the activated App tooltip displayed when flying over an App in the *Configuration* menu of the device configuration Web user interface
- Add support for the *Screen DIM* mode and *Screen Saver* on the *system.screen_stay_on* and on the *secure.screensaver_enabled* user preference values
- Add support for exiting from the *Screen Saver* mode or from the *Screen DIM* mode by taping the screen
- Add support for a new *Firmware upgrade in progress...* popup with a hour glass when uploading a *.fqs* file through the device configuration Web user interface    
- Change: when the *Test Card* App launching at device start-up is activated, it is now only executed for sixty seconds to let another activated App to be executed afterwards
- Change: embeds the *URL launcher 1.10.15* built-in App 
- Change: after migration, the value for the *secure.
- _activate_on_sleep* user preference is now *true* instead of *false* 
- Change: after migration, the value for the *secure.screensaver_default_component* user preference is now *com.android.dreams.basic/com.android.dreams.basic.Colors* instead of *com.google.android.deskclock/com.android.deskclock.Screensaver*
- Fix: the video inserted in the slide master template of MS-PowerPoint medias was not played     
- Fix: in some case, some pages of some PDF medias were drawn too slowly
- Fix: the pictogram of the RFID tag App was not rendered properly

##`2023-02-07` V9.10.13 [download](tab10/aosp-tab10-setup-9.10.13.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some cases, when using an *USB-C to Jack 3.5* adapter, the level of the *volume of multimedia contents* in the *Output* pane of the *Configuration* menu in the device configuration Web user interface could be reset to 20% causing a weak audio volume on the *Jack 3.5* connector

##`2023-01-24` V9.10.12 [download](tab10/aosp-tab10-setup-9.10.12.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Test card* item for the *Maintenance* tab in the device configuration Web user interface
- Add support for the *Test card* App availability in the *Android* Apps menu 
- Add support for the *Application web service* profile in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface  
- Add support for this built-in App in the AQS desktop of activable Apps
    - URL launcher APK (1.10.14)
- Add support for the *Application web service* profile in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface 
- Add support for the ability for an app to expose a web service accessible in OData
- Add support for the APK *demo_custom_web_service-amp300-setup-1.10.10.apk* (and above)
- Change: rename the *Application web service* profile in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface
- Change: the App status of an App that has just been installed is now *deactivated*
- Fix: in some rare case, the user interface of the SignMeeting App was not displayed back after the screen standby task is over
- Fix: the focus was not set automatically on the first row of the Apps table in the *Apps* pane of the *Configuration* tab in the device configuration Web interface 
- Fix: in some case, an Apps containing some specific PowerPoint could stop running after several days without restarting
- Fix: in PowerPoint playback: 
    - the video could be shifted on the left when played inside slide with a 4:3 aspect ratio 
    - the failover font loading in MS-Power slides from the Microsoft cloud was not working
- Fix: the Bluetooth was activated without the user consent when pressing on the *Bluetooth address* item of the *About tablet* menu in the Android *Settings* menu 
- Fix: in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface, the credential name with dot characters could not persist after reboot

##`2022-12-02` V9.10.11 [download](tab10/aosp-tab10-setup-9.10.11.fqs){.free-downloads} 
>##### **IMPORTANT**
Before the V9.10.10 `AQS` version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Apps* menu in the *Configuration* tab in the device configuration Web user interface
	- listing all the APK installed on the `AQS` operating system
	- allowing to activate only the APK that have to start after device boot up
	- displaying the form of the APK supporting a configuration form
	- allowing to remove/install/update/start/restart/stop the APK that is selected   
- Add support for these functions of the configuration script 1.10.19
	- eraseAllApps()
	- deleteApp()
	- activateApp()
	- deactivateApp()
- Fix: the video and audio medias embedded inside MS-PowerPoint medias (.pptx, .ppsx) were not played   

##`2022-10-21` V9.10.10 [download](tab10/aosp-tab10-setup-9.10.10.fqs){.free-downloads} 
>##### **IMPORTANT**
Before V9.10.10, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Certificates* menu in the *Configuration* tab in the device configuration Web interface
    - *Trusted* certificates
    - *802.1X* certificates
    - *VPN* certificates      
- Add support for these features in the *Configuration* tab in the device configuration Web interface
    - *LAN_1* pane
        - *802.1X* security with the following *EAP methods*/*Phase 2 authentication*
            - *PWD*
            - *MD5*
            - *GTC*
            - *MSCHAPV2*
            - *PEAP*/*NONE*
            - *PEAP*/*MSCHAPV2*
            - *PEAP*/*GTC*
            - *PEAP*/*MD5*
            - *TLS*
            - *TTLS*/*NONE*
            - *TTLS*/*PAP* 
            - *TTLS*/*MSCHAP* 
            - *TTLS*/*MSCHAPV2* 
            - *TTLS*/*CHAP* 
            - *TTLS*/*GTC* 
            - *TTLS*/*MD5* 
            - *TTLS*/*EAPMSCHAPV2*  
    - *WLAN_1* pane
        - *WEP* security  
        - *none* security
        - *WPA-Personal (PSK)* security / *WPA2-Personal (PSK)* security
        - *WPA-Enterprise (EAP)* security ciphering / *WPA2-Enterprise (EAP)* security ciphering with the following authentication methods
            - *PWD*
            - *PEAP*/*NONE*
            - *PEAP*/*MSCHAPV2*
            - *PEAP*/*GTC*
            - *TLS*
            - *TTLS*/*NONE*
            - *TTLS*/*MSCHAPV2*
            - *TTLS*/*MSCHAP*
            - *TTLS*/*GTC*
            - *TTLS*/*PAP*
- Add support for the *Usb adapters* menu in the *Information* tab in the device configuration Web interface allowing to display the attributes of the USB peripherals devices connected to the USB-C connector of the device
- Changes in the *Administrator* menu of the *Configuration* tab in the device configuration Web interface
    - rename connection profile label from *Web UI Admin, Web service, Web UI Appli, WebDAV, * to *Administration user*
    - rename connection profile label from *Web UI Appli* to *Application user*
    - rename connection profile label from *WebDAV* to *Publishing software*
- Change in the *WLAN_1* menu of the *Configuration* tab in the device configuration Web interface
    - rename from *WLAN* to *WLAN_1*
- Change in the *LAN_1* menu of the *Configuration* tab in the device configuration Web interface
    - rename from *LAN* to *LAN_1*
- Change in the applicative Web user interface 
   - rename the label of the button allowing to access to the device configuration Web user interface from *Administration console* to *Administration*
- Change: remove these App which were natively present in AQS operating system 
    - *Calendar*
    - *Contacts*
    - *DeskClock*
    - *DocumentsUI*
    - *Email*
    - *ExactCalculator*
    - *Camera2*
    - *Gallery2*
    - *Music*
- Add support for the displaying of the ethernet adapter (NAPOE109xx) attribute values in the device application Web interface
    - *Product name*
    - *Manufacturer*
    - *Version*
    - *MAC address*
    - *PSN*
- Change in the *Firmware* menu of the *Maintenance* tab in the device configuration Web interface
    - the name of the pane is *Firmware* instead of *Middleware*
    - the label allowing to display the operating system version (ex: *AQS 9.10.10*) is renamed to *Operating system* instead of *Middleware*
    - renamed the label *Select a middleware to upgrade the device* to *Select a firmware to upgrade the device*  
- Change: the *WLAN_1* interface is now priority over the *LAN_1* interface
- Change: the *LAN_1* interface is up when the NAPOE109xx is plugged on a supplied PoE switch even if this one is not connected to the local network
- Change: update the list of embedded trusted system certificates 
- Change: removed the unuseful calls to the *www.google.com/gen_204* URL
- Change: the access rights to the WebDAV directories are now granted for the *Web service* connection profile  
- Change: the green LED is now blinking 6 times every 4 seconds when a software upgrade is in progress
- Change: after having cleared the user data partition, the *settings.secure.android_id* preference was reinitialized to a random value
- Fix: in DHCP mode, it was not possible to access to the *LAN_1* interface of the device with its IPV6 address when no IPV4 address value was attributed to the device. That could be the case when the device was directly connected to a computer  
- Fix: the device was losing *WLAN_1* network connectivity after having modified the IPV4 address through the Android settings interface
- Fix: the device was losing *LAN_1* network connectivity when the *802.1X* security was activated after having modified the IPV4 address through the device Web user interface   
- Fix: the *WLAN_1* interface could never be up when the *LAN_1* interface was set with a static IP address
- Fix: the automatic proxy configuration with a *.pac* file hosted on Web server was not working with the *LAN_1* interface
- Fix: it could be not possible to connect to the device Web user interface with the 802.1X security activated on the *LAN_1* interface after a proxy server has been set with a configuration script   
- Fix: it was required to refresh the device configuration Web interface in the Web browser to enter the credential login each time the device had restarted because the authentication popup was blinking
- Fix: the *Force the hostname* checkbox in the *Administrator* menu of the *Configuration* tab in the device configuration Web interface was not saved after the device had restarted
- Fix: in some Android development environments, when the Apps was built with the value 30 for the *targetSdkVersion* parameter, the *setAppAsSystemApp* feature could not work with the current SDK version of the *AQS*
- Fix: after having uploaded 8 GB of data in the device, the firmware upgrading was failing
- Fix: in some case, behind a 802.1X router, pressing on the *Validate* button of the *LAN_1* interface after having enter a manual proxy configuration could turn off the *LAN_1* network connectivity if the *Reboot* button was not clicked immediately
- Fix: the *duration per page* metadata of PDF medias was not taken into account   
- Fix: some features of the MS-PowerPoint medias was not properly supported
    - the audio and video media was not played
    - the hidden slide was displayed
    - the background texture of some area media could be not displayed
    - in some rare case, the slide duration could be not the right one  
    - some text area could be displayed with a wrong orientation
    - the device could reboot when displaying slides containing much .svg images
    - in some cases, wrong management of text line spacing was making that tables could spill off the slide
    - the *crop to shape* feature was not working 
    - the radial gradient was not supported
    - in some rotation, the linear gradient was not supported properly for not rectangle shapes 
    - some background resulting on the group of shapes could be not displayed properly

##`2022-08-19` V9.10.10 beta11  
>##### **IMPORTANT**
It is recommended to use `AQS` V9.10.10 beta11 (or above version). Consequently, all the previous downloading links to lower versions have been removed.
The firmware is now delivered with the *.fqs* file extension, which is supported by the `AQS` (`AOSP Qeedji System`) 9.10.10_beta7 (or above).   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for configuration Web UI  
- Add support for `setAppAsSystemApp` feature with configuration script
- Change: the APK requiring the *system_button* AQS feature need now *system user* execution rights to be executed
- Change: the APK requiring the *surround_light* AQS feature need now *system user* execution rights to be executed
- Change: the APK requiring the *rfid_reader* AQS feature need now *system user* execution rights to be executed 
- Change: the versions of these demo APK are not supported anymore
	- rfid_reader 1.10.12 (and below)
	- surround_light 1.10.12 (and below)
	- system_button 1.10.11 (and below)
- Change: the versions of these demo APK are supported
	- rfid_reader 1.11.10 (and above)
	- surround_light 1.11.10 (and above)
	- system_button 1.11.10 (and above)
- Fix: in some rare case, the device could not respond anymore requiring an electrical unplug/replug   

##`2022-06-16` V9.10.10 beta10    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for LAN proxy configuration
	- manual
- Add support for WLAN proxy configuration  
	- automatic (with .pac file hosted on Web server)
	- manual 
- Add support for PDF medias in WebView
- Add support for MS-PowerPoint medias in WebView  
- Add support for date setting without NTP server
 
##`2021-11-10` V9.10.10 beta9    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new information display in the *Settings* Android App     
    - in the new ```About tablet > Ethernet MAC address``` screen   
        -  *Product name*: product name of the Ethernet-to-USB adapters device (i.e.: *NAPOE109ku*, *NAPOE109kt*, others...)
        -  *Manufacturer*, 
        -  *Serial number*, 
        -  *Version* (optional): firmware version of the Ethernet-to-USB adapters device
    - in the ```About tablet``` screen  
        - *Android version*: TAB10s device firmware version (i.e. *9 (Qeedji System 9.10.10_beta9)*
        - *Model & hardware*:
            - Model: TAB10s model
            - PSN: TAB10s product serial number 
    - in the ```About tablet > Android version``` screen
        - Android version: firmware version (i.e. *9 (Qeedji System 9.10.10_beta9)*
    - in the ```About tablet > Model & hardware``` screen
        - Model
        - Manufacturer
        - Serial number
        - PSN
        - DIP Switch Camera
        - DIP Switch Microphone
- Add support for APK downgrading with Qeedji system
- Add support for 802.1X security on LAN interface
- Add support for these features configuration by configuration script
    - 802.1X security configuration on LAN and WLAN interface with configuration script
    - WLAN configuration 
    - certificates installation (not signed certificates and signed certificates)
    - proximity sensor configuration
- Change: the *native* mode or the *kiosk* mode can be now modified dynamically when the APK is running
- Change: remove support for interactivity in *native* mode and in *kiosk* mode when Qeedji System installs an APK, a configuration script or a firmware.
- Change: the firmware file is now delivered with a *.fqs* file extension instead of a *.zip* file extension
- Change: the *LOST.DIR* folder is not created anymore on the USB mass storage device when it is plugged on the TAB10s device
- Change: the device is rebooting now automatically once when the device name is modified through the *Settings* Android App
- Change: the USB tethering is not supported anymore 
- Change: the PTP is not supported anymore (Picture Transfer Protocol)
- Change: in some case, the tablet could take some time to detect a people with the proximity sensor
- Fix: on some TAB10s used by ISV (Independant Software Vendor), the Qeedji System features could not work properly
- Fix: when injecting a new firmware file through MTP (Media Transfer Protocol), a black content was displayed during the firmware upgrade until the next automatic reboot 
- Fix: few unexpected device reboots could happen after an automatic reboot on some TAB10s devices    
- Fix: the *MTP* could not be activated at first attempt 
- Fix: with some USB hub plug to some specific wall plug, the device could not start at first attempt
- Fix: it was not possible to clear credentials from the Android key store with the Android *Settings* App
- Fix: in some case, with some Ethernet adapter and with a static IP configuration, the LAN interface could not work after an electrical unplug
- Fix: when getting a new configuration from a DHCP server (code 66), the TAB10s coming straight from factory could enter into the Android recovery mode displaying *try again*/*factory data reset* 
- Fix: when the device name had never been modified by the user, the device name value in the Bluetooth interface was *iMX8* 
- Fix: the video and image captured by the device was stored in the 180° orientation   
- Fix : some USB mass storage was not detected properly 
>##### **COMPATIBILITIES**
- TAB10s device  
- Configuration script V1.10.15 (or above)
- WebDAV clients examples: 
    - Bitkinex
    - CarotDAV
    - Windows explorer               
- NAPOE109ku 1.10.12
- NAPOE109kt 1.10.12

##`2021-04-07` V9.10.10 beta8    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for manual configuration for LAN interface
	- static IP address
	- gateway
	- subnet mask
	- DNS
		- primary 
		- secondary
- Add support for new user preferences
	- *persist.sys.device_info.field1*
	- *persist.sys.device_info.field2*
	- *persist.sys.device_info.field3*
	- *persist.sys.device_info.field4*
	- *persist.sys.device_info.field5*
- Change: remove `.upnp` directory from the WebDAV server's visible directories
- Fix: it was not possible to move or copy WebDAV directories by using a WebDAV client  
- Fix: it was not possible to edit a file inside a WebDAV directory by using a WebDAV client  
- Fix: an unexpected AOSP pop up could be displayed above the App screen content while the user has not pressed on its `GOT IT` button  
	- *Viewing full screen, to exit swipe down to the top, GOT IT*

##`2021-03-16` V9.10.10 beta7 [download](tab10/aosp-tab10-setup-9.10.10_beta7.zip){.free-downloads}   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a WebDAV server
	- WebDAV directories
		- `.apps`
		- `.configuration`
		- `.data`
		- `.software`
- Add support for UPnP 
- Add support for the hostname modification (used for example by UPnP and DHCP) 
- Add support for both .fqs and .zip middleware file extension for upgrade
- Change: new an APK can be installed again when its version has been incremented
- Fix: when the TAB10s was starting after few days, the TAB10s could not store properly the date and time information after a reboot and the WIFI could not work

##`2020-11-24` V9.10.10 beta6    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the possibility to share APK preferences so that they can be read or written:
    - with a configuration script or 
    - with the device configuration Web interface (coming soon)
        - for further information, refer to the developer manual     
- Add support for system notification after a short key press (duration < 2 seconds) on the *system* button of the TAB10s
    - A long key press (duration > 5 sec) on the *system* button of the TAB10s still causes a restart of the device
- Add support for new demo APK
    - `device_info` 1.10.11
    - `system_button` 1.10.10 
    - `url_launcher` 1.10.10
- Change: proximity sensor is now based on *Radar* instead of *Infrared* technology
- Change: remove the display of the *Start Qeedji System* message when the device is booting up
- Change: now the APK with HTML interface using *Android WebView* can be executed with system rights 
- Change: upgrade Chromium Web engine from 66.0 to 83.0 (October 2020)

##`2020-10-19` V9.10.10 beta5    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *getColor()* method in the *SurroundLight* class
- Change the name for some debug preferences
- Change: is not compatible anymore with the configuration script V1.10.11
- Fix: the Ethernet could not work when connecting a specific PoE to USB-C adapter 
- Fix: the device was rebooting when connecting some specific USB-C hubs with Ethernet to USB bridge

##`2020-10-02` V9.10.10 beta4    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Russian language
- Change: when inserting an USB storage device, the device is rebooting once after APKs installation	
- Change: update time zone database
- Fix: a message *Error while firmware aosp-tab10-setup-9.YY.ZZ.zip installing* could be displayed when installing exactly the same firmware version
- Fix: it was not possible to add 802.1x certificate without activating the screen lock with PIN code or locking scheme   
- Fix: the device could not stop rebooting when using some specific USB-C power supply 

##`2020-09-16` V9.10.10 beta3    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version embedding:
	- `Qeedji System` service supporting:  
		- APK installation,
		- Device configuration by script,
		- AOSP firmware version upgrade.   