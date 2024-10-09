# Firmware and documentation for DMB400
*RELEASE NOTE*

**IMPORTANT: After migration from a firmware Gekkota OS 4.yy.zz to a firmware Gekkota OS 5.11.10, some third party software allowing to publish your App may be not compatible. For further information, contact support@qeedji.tech**

**IMPORTANT: In case you wish to upgrade your DMB400 devices from firmware Gekkota OS 4.yy.zz to a firmware Gekkota OS 5.11.10, it is recommended to contact support@qeedji.tech to know the impact of this migration. Check also the software compatibilities below**

**IMPORTANT: your current App version running on the device may be not compatible anymore. You may have to upgrade your App version. For further information, contact support@qeedji.tech**

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

## `2024-06-04` V5.11.14 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-5.11.14)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *2304x384 60 Hz NOVASTAR* display mode
>##### **LIMITATIONS**
- some *Power BI* object like *Map* visualization may be not displayed properly
- these video containers are not supported:
	- .asf, .wmv, .vob, .mpg, .mpeg, .m2v, .avi, .ts, .wma
- XPF servers are not supported
- some specific video medias supporting much audio tracks and whose duration is very long (e.g. 1h30) need that the swap disk option is activated to be visualized properly and not make restart the device

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (5.11.14~001B_en) [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/dmb400-g5-user_manual-5.11.14~001B_en.pdf)
#### **SUPPORTED MEDIAS**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji PowerPoint Publisher for Media Players](https://github.com/Qeedji/archives/blob/master/downloads/http://www.innes.pro/en/support/index.php?DMB400/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?DMB400/Application_notes_and_related_tools/Configuration_by_script)
#### **POWERSHELL SCRIPTS FOR DEVICE MAINTENANCE**
- PSDevice Powershell script V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/scripts/powershell/Powershell_Innes_Device/delivery/Powershell_Innes_Device-1.10.10.zip)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/Powershell_Innes_AAD-1.10.17.zip) for
    - Power BI Online viewer application
    - Microsoft 365 URL launcher application
#### **INFORMATION**
- Mouse pointer
    - The mouse pointer is only supported when working with a touch screen monitor
- Monitor monitoring
    - Some unexpected device reboot could be noticed when monitor monitoring is made on the wrong video input (when monitoring HDMI1 while cable is plugged on HDMI2)
#### **KNOWN LIMITATIONS**
- Media Source Extension
    - In this version, the playback of all other MSE contents playbacks, meaning MSE video content displayed in an area inside the HTML page, without any device reboot is not guaranteed
    - About the ```Media Source Extension``` JavaScript:
        - Each MSE content provider has its own algorithm implementation in its MSE JavaScript. Consequently, it is possible that some MSE content having a specific MSE JavaScript is not fully supported making that the video does not start properly (for example, with some MSE video content replay)
        - When playing a MSE content, an error message *if playback doesn’t begin shortly, try restarting your device* could be displayed sometimes after a while, telling that the video has stopped and will not start anymore. To work around, play another media, then play again the MSE content. The best practise consists in playing the MSE content URI with a fixed duration (ex: duration 1 hour).
    - About other MSE content: for example, the MSE video content displayed in a thumbnail inside the HTML Web page:
        - Warning: the MSE content provider can decide at any time to remove a content. So an MSE content can be available one day and not available the day after
        - When the MSE content is displayed in a thumbnail inside the HTML Web page, a lot of other objects need to be displayed as well and could require a lot of memory. Depending on the Web page played, the device could sometimes reboot after having played it after a while. The `W3C` is working on to improve the `Media Source Extensions` specifications so that the MSE Javascript is more suitable also for devices that have a limited available memory amount
    - To inactivate the DASH MSE feature,
        - Set the user preference ```media.mediasource.enable``` to ```false```. The error message *An error occurred. Please try again later (Playback ID: ...)* should be displayed when trying ten to play an MSE content in this condition. This message could be seen also when playing another video at the same time when the dual video decoding is not supported on this device
- H265-60Hz
    - When playing H265 60Hz video, it is advised to configure the display output with a 60Hz mode
- HDMI-input
    - When rotation 90°, 180°, 270° is activated, the HDMI-input is not supported and a message *content temporarily unavailable* is displayed
    - HDMI-input content playback is not supported when the user preference ```innes.video.renderer.default``` is set to the value ```gpu```. To support it, change the user preference value to ```overlay```
    - Some rare skip frame could be noticed on HDMI-input content zone when playing several medias at the same time
    - Some rare skip frame could be noticed on HDMI-input content when there is audio on HDMI-input
- Note for MS-PowerPoint bullets
    - Ensure that the appropriate fonts are properly embedded in the content
- Not yet supported in MS-PowerPoint medias rendering:
    - Animation
    - Effects
           - WordArt, shadow
    - Images
           - Image with filtering
           - Emf
    - Animated image
           - Gif & Png (displayed but not animated)
    - Some shapes
        - Smart Art
        - Multi-colors shape texture
    - Text
        - Kerning is not supported
    - Audio & video
    - Vertical fading (in case mixed horizontal & vertical fading)
    - Font
        - Embedded
        - Fail over & substitution fonts
    - OLE injection (MS objects)
    - Slide hiding
- URL launcher
    - the web page content rendering must be suitable for the resolution of the display device connected to the DMB400 device
    - keep in mind that the Web site must be suitable with the memory available on the device. For further information, refer to the user manual
    - it is not navigate on the Web site by using the side scroll bar
- Microsoft Power BI
    - keep in mind that the Power BI report must be suitable with the memory available on the device. For further information, refer to the user manual
    - In case trouble to use the *MS OAuth application* mode, contact support@innes.pro


# OLD VERSIONS HISTORY
***********************************************************************

## `2024-01-19` V5.11.13 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-5.11.13.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for additional logs for the *Power BI Online Viewer* built-in App
- Change: the *Viewing time of the report pages* field value in the *Power BI Online Viewer* section in the *App* pane of the *Configuration* menu in the device configuration Web user interface is taken into account now to refresh the Power BI dashboards reports content as well
- Fix: the displaying of some specific pages of *Power BI* reports could never end

## `2023-11-30` V5.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-5.11.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *identifier* and *password* fields self-filling and self-validation for Web page form in some condition
- Add support for the *Identifier/password for a Web page form* authentication for the *Simple Web server* mode in the *URL launcher* App form of the *App* pane in the *Configuration* menu of the device configuration Web user interface
- Add support for *Power BI* dashboards display as well as *Power BI* reports display
	- supporting the display of *Power BI* dashboards in the device may require that the *Dashboard.ReadWrite.All* permission is granted for your *Power BI* application
- Change: add support for these *Power BI* URL format, not ending with the */* caracter
	- *https://app.powerbi.com/groups/<group_uuid>/reports/<report_uuid>*
	- *https://app.powerbi.com/groups/<group_uuid>/dashboards/<dashboard_uuid>*
- Change: remove the *Use transparent background for the report* option in the *Power BI Online Viewer* tab of the *App* pane in the *Configuration** menu of the device Web user interface
- Change: the device restart automatically after four minutes instead of two minutes when a Power BI report page cannot be displayed for any unknown reason
- Fix: with some specific custom *Power BI* reports, the *Power BI Online Viewer* App was displaying the error message content *Unable to show Power BI report (error HTTP 400)*
- Fix: somes pages of the *Power BI* report could be not displayed at all after a while
- Fix: the background color of the *Power BI Online Viewer* App was set to black
- Fix: in some case, the *identifier* self-filling in Web page form could not work
- Fix: the DNS value was not displayed in the *Network* pane of the *Information* menu of the device configuration Web interface
- Fix: the unsigned CA certificates was not supported

## `2023-09-28` V5.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-5.11.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for swap disk feature
	- *Enable Virtual memory on this partition* checkbox in the *Tools* pane of the *Maintenance* tab of the device Web user interface allowing to activate swap disk feature
	- *system.disk.swap.authorized* user preference
	- *swap* tag in the *storage* tag of the *status.xml* allowing to watch the swap disk activating value
- Change: when using the *Power BI Online Viewer* App, the report is entirely reloaded each time all the pages of the report have been played
- Change: when the network interface is down, the device restart after 2 minutes when a Power Bi App is played
- Fix: in some case, the URL launcher App could return an error message *Content temporarily unavailable (code 4)* when playing some images located in Web site sub directories
- Fix: the unsigned CA certificates was not supported

## `2023-04-19` V5.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb400/gekkota_os-dmb400-setup-5.11.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version with Web engine based on Mozilla 92 and supporting these built-in App in the *App* pane in the *Configuration* menu of the device configuration Web user interface
	- *Power BI Online viewer*
		- *MS OAuth user*
		- *MS OAuth application*
	- *URL launcher* built-in App
	    - *Simple Web server*
		    - *Identifier/password for a basic authentication*
		    - *Domain/Identifier/password for a basic authentication*
	    - *CIFS*
	    	- *Identifier/password for a basic authentication*
		    - *Domain/Identifier/password for a basic authentication*
	    - *Microsoft 365*
		    - *Microsoft OAuth User*
		    - *Microsoft OAuth Application*

