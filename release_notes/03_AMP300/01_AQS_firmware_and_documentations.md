# AQS firmware and documentations for AMP300
*RELEASE NOTE*

*Never make electric unplug on your device while firmware upgrade is in progress else the device may not be able to work properly*

## `2024-10-08` V9.11.10_beta10 [download](amp300/aosp-amp300-setup-9.11.10_beta10.fqs){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Retrieve tasks to be executed from a http(s) server* section in the *Servers* pane of the *Configuration* menu of the device configuration Web user interface to self-administrate the device from a remote server
- Change: embed these built-in Apps:
	- Power BI Online Viewer 1.10.12
	- URL launcher 1.10.20   
	- Media Folder Injector 1.10.12 
>##### **COMPATIBILITIES**
- AMP300 device  
- Configuration script V1.10.23 (or above)
- WebDAV client examples: 
    - Bitkinex
    - CarotDAV
    - Windows explorer
>##### **NOT YET SUPPORTED**
- support for *identifier* and *password* inputs self-filling and self-confirmation to access to the Web page content when using another App than built-in *URL Launcher*
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
    - font
        - embedded
        - fail over & substitution fonts 
        - some characters whose fonts is 32 bits may be not displayed (ex: fontawesome.ttf)
    - OLE injection (MS objects)
- UDP datagram
- some Web pages of Web sites which are not supporting to be displayed inside I Frame may not be displayed
- the configuration Web user interface and the device Web server are not available in https

#INFORMATION
***********************************************************************
#### **USER MANUAL**
- AMP300 user manual 9.11.10~001A_en [download](amp300/amp300-qeedji-user_manual-9.11.10~001A_en.pdf){.free-downloads}
#### **DEVELOPER MANUAL**
- AMP300 developer manual 9.11.10~001A_en [Download](amp300/amp300-developer_manual-AOSP-9.11.10~001A_en.pdf){.free-downloads}
#### **SUPPORTED MEDIAS DOCUMENTATION**  
- Devices supported medias and performances [download](devices-supported-medias-and-performances.pdf){.free-downloads}
#### **SDK DEVELOPERS**
- [Link to github AOSP for AMP300](https://github.com/Qeedji/aosp-AMP300-sdk/tree/master)
#### **CONFIGURATION SCRIPT**
- [Link to specific configuration script](http://www.qeedji.tech/en/support/index.php?AMP300/Application_notes_and_related_tools/Configuration_by_script)
#### **DEMO APK**
- [Link to Demo APK](http://www.innes.pro/en/support/index.php?AMP300/AQS_demo_APK)
#### **VENDOR APK**
- [Link to Vendor APK](http://www.qeedji.tech/en/support/index.php?AMP300/AQS_vendor_APK)
#### **POWERSHELL SCRIPT**
- [Link to setAppAsSystemApp PowerShell script](http://www.qeedji.tech/en/support/index.php?AMP300/Application_notes_and_related_tools/AQS-setAppAsSystemApp_PowerShell_script)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.18 [download](scripts/powershell/Powershell_Innes_AAD-1.10.18.zip){.auth-downloads} for
    - Power BI Online viewer application 
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**  
- [Link to Qeedji PowerPoint Publisher for Media Players](http://www.innes.pro/en/support/index.php?AMP300/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi){.free-downloads}
#### **DEBUG MODE**
The debug mode is deactivated by default    
#### **ISO FILE FOR FACTORY RECOVERY**
To get the `aosp-amp300-setup-9.10.19.iso` [download](https://github.com/Qeedji/aosp-AMP300-sdk/tree/main/bin) file for factory recovery

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2024-05-22` V9.10.20 [download](amp300/aosp-amp300-setup-9.10.20.fqs){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when a `/` character was entered as suffix of the IP address (e.g. 192.168.10.10/17) in the *No proxy for* input in the *LAN_1* pane or in the *WLAN_1* pane of the *Configuration* menu in the device configuration Web user interface, a http error 500 was returned
- Fix: the `*` character was not supported in the *No proxy for* input (e.g. *.qeedji.tech) in the *LAN_1* pane or in the *WLAN_1* pane of the *Configuration* menu in the device configuration Web user interface  
- Fix: after a scheduled device restart, in some cases, the App could stop running, displaying *no content* on the display device

## `2024-03-27` V9.10.19 [download](amp300/aosp-amp300-setup-9.10.19.fqs){.free-downloads}
>##### **NOTE**
- After having upgraded the firmware version, in case an older version of URL launcher had been installed by the end user, it is advised to remove this older version of URL launcher    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for displaying of the EDID value from the screen connected in HDMI in the *Screen* pane of the *Information* menu in the device configuration Web user interface
- Change: embed *URL Launcher* 1.10.19 
- Fix: the specific .p12 certificates having no password for some specific part of the certificate could not be installed in the *802.1X certificates* section of the *Certificates* pane of the *Configuration* menu in the device configuration Web user interface   
- Fix: the Qeedji logo was not displayed in the Android desktop of activated Apps when the display rotation was set to 90°

## `2024-01-18` V9.10.18 [download](amp300/aosp-amp300-setup-9.10.18.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
Before installing an alternative screensaver App, ensure that your AMP300 device is connected to a touch screen display device to support interactivity with the end user     
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: downgrade back to Chromium Web engine 83.0
- Change: embed *Power BI Online Viewer* 1.10.11
- Change: embed *URL Launcher* 1.10.18
- Fix: in some case, the playback of the video media having no audio track could not start at all or could freeze on the first image of the video media

## `2023-12-20` V9.10.17 [download](amp300/aosp-amp300-setup-9.10.17.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
Before installing an alternative screensaver App, ensure that your AMP300 device is connected to a touch screen display device to support interactivity with the end user      
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Power BI Online Viewer* 1.10.10 built-in App
- Change: embed *URL launcher* 1.10.17 built-in App 
- Change: upgrade Chromium Web engine from 83.0 to 113.0 (April 2023)
- Change: update the list of embedded trusted CA certificates
- Fix: the audio volume was staying to 6% after a device start-up when the reboot task happened within a power manager task
- Fix: in some rare case, the device could not start, and the status led was steady red 

## `2023-09-28` V9.10.16 [download](amp300/aosp-amp300-setup-9.10.16.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
Before installing an alternative screensaver App, ensure that your AMP300 device is connected to a touch screen display device to support interactivity with the end user     
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for capability to copy media and folder from USB storage media to file system when the *Media Folder Injector* App is running
- Add support for goToScreenOn() API allowing to prevent the operating system screensaver to be executed
- Add support for capability to launch a custom screensaver App (e.g. *Screensaver for AV stream reader*)
- Change: embed the *Media Folder Injector* App V1.10.10 vendor App in the table of installed APK in the *Apps* menu of the *Configuration* tab in the device configuration Web user interface
- Change: embed the *URL launcher* App V1.10.16 vendor App in the table of installed APK in the *Apps* menu of the *Configuration* tab in the device configuration Web user interface

## `2023-07-06` V9.10.15 [download](amp300/aosp-amp300-setup-9.10.15.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the test card activation/deactivation when pressing this remote control (or USB keyboard) keys sequence in less than ten seconds:
	- [left arrow, right arrow, left arrow, right arrow] 
- Add support for this user preferences to support activation/deactivation of the test card when pressing the keys sequence above: 
	- *persist.sys.testcard.key-event.all.authorized* (true by default)
- Add support for these user preferences to activate/deactivate some CEC over HDMI AV commands   
	- *persist.sys.av-cmd@tv.cec_1.hdmi_1.all.authorized*
	- *persist.sys.av-cmd@tv.cec_1.hdmi_1.all.features.power-mode*
- Add support for these user preferences to activate/deactivate some DDC/CI over USB AV commands 
	- *persist.sys.av-cmd.i2c_2.usbc_1.all.authorized*
	- *persist.sys.av-cmd.i2c_2.usbc_1.all.features.power-mode*
	- *persist.sys.av-cmd.i2c_2.usbc_1.all.features.brightness*
- Add support for these user preferences to define the values of some AV commands levels when a power manager tasks with the *Very Highly Optimized* profile is launched  
	- *persist.sys.power-manager.level.min.av-cmd.power-mode*
	- *persist.sys.power-manager.level.min.av-cmd.brightness*
- Add support for these user preferences to define the values of some AV commands levels when a power manager tasks with the *Highly Optimized* profile is launched
	- *persist.sys.power-manager.level.low.av-cmd.power-mode*
	- *persist.sys.power-manager.level.low.av-cmd.brightness*
- Add support for this user preference to activate/deactivate AV commands in nominal mode 
	- *persist.sys.power-manager.level.none.av-cmd.brightness*
- Fix: in some case, the content could be displayed with a 0° rotation instead of with a 90° rotation
- Fix: in some rare case, the AOSP middleware could not start anymore, and this error code was activated on the status LED of the device: 1 red period of 1 second then Off for 1 second then 1 green period of 1 second, periodic in alternance with 1 second Off

## `2023-04-03` V9.10.14 [download](amp300/aosp-amp300-setup-9.10.14.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Tasks* pane in the *Configuration* menu of the device configuration Web user interface
    - *Power manager* task
        - *Very Highly Optimized*
        - *Highly Optimized*
    - *Reboot manager* task
- Add support for *power manager* task exit by pressing shortly on the *system button* of the device
- Add support for *power manager* task exit by touching the screen depending on the *persist.sys.power-manager.level.min.hid.pointer-event.enable* or the *persist.sys.power-manager.level.low.hid.pointer-event.enable* user preference values   
- Add support for a picture area, in the *Device* pane of the *Information* menu in the device configuration Web user interface, allowing to display the current screen content thanks to a *Refresh* button 
- Add support for audio output selection for the *Output* pane in the *Configuration* menu of the device configuration Web user interface
    - *automatic*
    - *Video output*
    - *USB audio*
- Add support for *Running*/*Stopped* status as suffix of the activated App tooltip displayed when flying over an App in the *Configuration* menu of the device configuration Web user interface
- Add support for the *Screen saver* mode depending on the *system.screen_stay_on* user preference value
- Add support for exiting from the *Screen Saver* mode by taping the screen
- Add support for a new *Firmware upgrade in progress...* popup with a hour glass when uploading a *.fqs* file through the device configuration Web user interface    
- Change: when the *Test Card* App launching at device start-up is activated, it is now only executed for sixty seconds to let another activated App to be executed afterwards
- Change: embeds the *URL launcher 1.10.15* built-in App 
- Change: rename the *USB-C* video output value to *USB-C DP* in the *Output* pane in the *Configuration* menu of the device configuration Web user interface
- Change: after migration, the value for the *secure.screensaver_activate_on_sleep* user preference is now *true* instead of *false* 
- Change: after migration, the value for the *secure.screensaver_default_component* user preference is now *com.android.dreams.basic/com.android.dreams.basic.Colors* instead of *com.google.android.deskclock/com.android.deskclock.Screensaver*
- Fix: the video inserted in the slide master template of MS-PowerPoint medias was not played    
- Fix: in some case, some pages of some PDF medias were drawn too slowly
- Fix: the pictogram of the *RFID TAG Reader* App was not rendered properly

## `2023-02-07` V9.10.13 [download](amp300/aosp-amp300-setup-9.10.13.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some cases, when using an *USB-C to Jack 3.5* adapter, the level of the *volume of multimedia contents* in the *Output* pane of the *Configuration* menu in the device configuration Web user interface could be reset to 20% causing a weak audio volume on the *Jack 3.5* connector

## `2023-01-24` V9.10.12 [download](amp300/aosp-amp300-setup-9.10.12.fqs){.free-downloads} 
>##### **IMPORTANT**
For V9.10.10_betaX version, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Test card* item for the *Maintenance* tab in the device configuration Web user interface
- Add support for the *Test card* App availability in the *Android* Apps desktop
- Add support for the *Application web service* profile in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface  
- Add support for this built-in App in the AQS desktop of activable Apps
    - *URL launcher* (1.10.14)  
- Add support for the ability for an app to expose a web service accessible in oData
- Add support for the APK *demo_custom_web_service-amp300-setup-1.10.10.apk* (and above)
- Change: the *Test card* content is displayed on the video output at device start-up when the device is coming straight from factory 
- Change: the App status of an activable App that has just been installed is now *deactivated*
- Fix: the focus was not set automatically on the first row of the Apps table in the *Apps* pane of the *Configuration* tab in the device configuration Web interface 
- Fix: in some case, an App containing some specific MS-PowerPoint media could stop running after several days without restarting  
- Fix: in PowerPoint playback: 
    - the video could be shifted on the left when played inside slide with a 4:3 aspect ratio 
    - the failover font loading in MS-Power slides from the Microsoft cloud was not working
- Fix: in some rare case, the visual interface of SignMeeting was not displayed after exit standby mode
- Fix: if a display device was plugged on the *USB 1* USB-C port while the AMP300 device was starting, with an USB cable already plugged between a computer on the *USB 2* USB-C port, the ADB software could not work properly
- Fix: in the *Administration* pane of the *Configuration* tab in the device configuration Web user interface, the credential name with dot character could not persist after reboot

## `2022-12-02` V9.10.11 [download](amp300/aosp-amp300-setup-9.10.11.fqs){.free-downloads} 
>##### **IMPORTANT**
Before V9.10.10, the *LAN_1* interface had priority over *WLAN_1*. For `AQS` V9.10.10 (or above), the *WLAN_1* interface is now priority. So after having upgraded the device with the `AQS` V9.10.10 (or above version), the device Web user interface or the device WebDAV server may be available with the IP address of the *WLAN_1* interface, instead of the one of the *LAN_1* interface
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
 
## `2022-10-21` V9.10.10 [download](amp300/aosp-amp300-setup-9.10.10.fqs){.free-downloads} 
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
- Add support for the *USB adapters* menu in the *Information* tab in the device configuration Web interface allowing to display the attributes of the USB peripherals devices connected to the USB-C connector of the device
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
- Change in the *Firmware* menu of the *Maintenance* tab in the device configuration Web interface
    - the name of the pane is *Firmware* instead of *Middleware*
    - the label allowing to display the operating system version (ex: *AQS 9.10.10*) is renamed to *Operating system* instead of *Middleware*
    - renamed the label *Select a middleware to upgrade the device* to *Select a firmware to upgrade the device*  
- Change: the *WLAN_1* interface is now priority over the *LAN_1* interface
- Change: update the list of embedded trusted CA certificates 
- Change: removed the unuseful calls to the *www.google.com/gen_204* URL
- Change: the access rights to the WebDAV directories are now granted for the *Web service* connection profile  
- Change: the green LED is now blinking 6 times every 4 seconds when a software upgrade is in progress
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
- Change: after having cleared the user data partition, the *settings.secure.android_id* preference was reinitialized to a random value 
- Fix: in DHCP mode, it was not possible to access to the *LAN_1* interface of the device with its IPV6 address when no IPV4 address value was attributed to the device. That could be the case when the device was directly connected to a computer
- Fix: the device was losing *WLAN_1* network connectivity after having modified the IPV4 address through the Android settings interface
- Fix: the device was losing *LAN_1* network connectivity when the *802.1X* security was activated after having modified the IPV4 address through the device Web user interface   
- Fix: when powered by some USB-C display devices, after a AMP300 device software restart, the video signal of the AMP300 could not output anymore on the USB-C connector 
- Fix: the automatic proxy configuration with a *.pac* file hosted on Web server was not working with the *LAN_1* interface
- Fix: the security of *WLAN_1* interface was reset from 802.1X to none when a proxy server was set with a configuration script
- Fix: it could be not possible to connect to the device Web user interface with the 802.1X security activated on the *LAN_1* interface after a proxy server has been set with a configuration script   
- Fix: it was required to refresh the device configuration Web interface in the Web browser to enter the credential login each time the device had restarted because the authentication popup was blinking
- Fix: the *Force the hostname* checkbox in the *Administrator* menu of the *Configuration* tab in the device configuration Web interface was not saved after the device had restarted
- Fix: in some Android development environments, when the Apps was built with the value 30 for the *targetSdkVersion* parameter, the *setAppAsSystemApp* feature could not work with the current SDK version of the *AQS*
- Fix: after having uploaded 8 GB of data in the device, the firmware upgrading was failing
- Fix: in some case, behind a 802.1X router, pressing on the *Validate* button of the *LAN_1* interface after having enter a manual proxy configuration could turn off the *LAN_1* network connectivity if the *Reboot* button was not clicked immediately     
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

## `2022-09-12` V9.10.10 beta3  
>##### **IMPORTANT**
It is recommended to use an `AQS` V9.10.10 beta3 (or above). Consequently, all the previous downloading links to lower versions have been removed  
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `setAppAsSystemApp` feature with configuration script
- Change: the APK requiring *system_button* need now *system user* execution rights to be executed
- Change: these versions of this demo APK are not supported anymore
	- system_button 1.10.11 (and below)
- Change: these versions of this demo APK are supported
	- system_button 1.11.10 (and above)
- Fix: in some rare case, the device could not respond anymore, requiring an electrical unplug/replug
- Fix: the WLAN interface could never be up when the LAN interface was set with a static IP address
- Fix: the *duration per page* metadata of PDF medias was not taken into account    
 

## `2022-08-02` V9.10.10 beta2   
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the credential having the default identifier/password admin/admin has now the label *Admin* instead of the label *Default*
- Fix: when a display device was connected on the HDMI connector, after a device reboot or a HDMI connector hot plug or a display device standby, the OS could not respond, requiring a manual device restart (electrical unplug/replug) 
- Fix: an HTTP 403 error was raised in the Web browser when trying to modify the default credentials
- Fix: a code 4 error message was returned when playing PowerPoint media hosted on folders whose name is containing special characters  
>##### **COMPATIBILITIES**
- Configuration script V1.10.16 (or above)

## `2022-07-09` V9.10.10 beta1    
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- Configuration script V1.10.16 (or above)
