# Firmware and documentation for DMB300
*RELEASE NOTE*

**IMPORTANT: one specific license key is required per each DMB300 device that must run on Gekkota 5 middleware.**

**IMPORTANT: After migration, in case using third party software to publish App, your previous Apps may be not compatible. For further information, contact support@qeedji.tech**

**IMPORTANT: In case you wish to upgrade your DMB300 devices from Gekkota 3 middleware (3.12.57) to Gekkota 5 middleware (5.YY.ZZ), it is highly recommended to contact support@qeedji.tech to know the impact of this migration. Check also the following software compatibilities, and remember that you cannot downgrade to a Gekkota 3 middleware afterwards. The specific DMB300 RMA (or Return Merchandise Authorization) consisting in downgrading the middleware Gekkota 5 back to the middleware Gekkota 3 is not covered by the warranty of the device.**

*Never make electric unplug on your player while software upgrade is in progress (green led blinking 6 times every 4 seconds) else the player may not be able to work properly*

## `2023-11-29` V5.12.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-5.12.11)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Identifier/password for a Web page form* authentication for the *Simple Web server* mode in the *URL launcher* App form of the *App* pane in the *Configuration* menu of the device configuration Web user interface
- Add support for the *identifier* and *password* fields self-filling and self-validation for Web page form in some condition
- Fix: in some case, the *identifier* self-filling in Web page form could not work
- Fix: the DNS value was not displayed in the *Network* pane of the *Information* menu of the device configuration Web interface
- Fix: the unsigned CA certificates was not supported
>##### **LIMITATIONS**
- these video containers are not supported:
	- *.asf, .wmv, .vob, .mpg, .mpeg, .m2v, .avi, .ts, .wma
- XPF servers are not supported
- AV commands are not supported
- the audio may be not synchronized accurately with the full HD .ts media when the output resolution is 1920x1080
- transitions between MS-PowerPoint slides are not supported
- the DVB-T peripheral card is not supported
- the bitrate limitation is not supported
- the colour adjustment is not supported
- IR on Jack 3.5" is not supported
- the device must restart at least once with the appropriate WIFI security ciphering value after the security ciphering of the WIFI router is modified
- the GPIO Jack 3.5" can be used in output only when the Phoenix GPIO are configured as *disabled*
- the playback of live video Web contents is not properly supported

#INFORMATION
***********************************************************************

#### **SUPPORTED MEDIAS**
- Devices supported medias and performances [download](https://github.com/Qeedji/archives/blob/master/downloads/devices-supported-medias-and-performances.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR MEDIA PLAYERS**
- [Link to Qeedji PowerPoint Publisher for Media Players](https://github.com/Qeedji/archives/blob/master/downloads/http://www.innes.pro/en/support/index.php?DMB300/Application_notes_and_related_tools/Qeedji_PowerPoint_Publisher_for_media_player) [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi)
#### **CONFIGURATION SCRIPT**
- [Link to configuration script](http://www.innes.pro/en/support/index.php?DMB300/Application_notes_and_related_tools/Configuration_by_script)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- PowerShell script for Azure Active Directory Application support 1.10.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/Powershell_Innes_AAD-1.10.17.zip)
#### **KNOWN LIMITATIONS**
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
    - OLE injection (MS objects)
    - Slide hiding

# OLD VERSIONS HISTORY
***********************************************************************

## `2023-09-05` V5.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-5.12.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for swap disk feature
	- Add support for *Enable Virtual memory on this partition* checkbox in the *Tools* pane of the *Maintenance* tab of the device Web user interface allowing to activate swap disk feature
	- Add support for *system.disk.swap.authorized* user preference
	- Add support for *swap* tag in the *storage* tag of the *status.xml* device status file allowing to watch the swap disk activating value
- Fix: in some case, the URL launcher App could return an error message *Content temporarily unavailable (code 4)* when playing some images located in Web site sub directories
- Fix: the unsigned CA certificates was not supported

## `2023-04-19` V5.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-5.11.10.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *URL launcher* App form of the *App* pane in the *Configuration* menu of the device configuration Web user interface
    - *Simple Web server*
	    - *Identifier/password for a basic authentication*
	    - *Domain/Identifier/password for a basic authentication*
    - *CIFS*
    	- *Identifier/password for a basic authentication*
	    - *Domain/Identifier/password for a basic authentication*
    - *Microsoft 365*
	    - *Microsoft OAuth User*
	    - *Microsoft OAuth Application*
- Change: in *Pull Webdav* (.gap) mode, if the *Fail soft mode* information content is displayed, the device waits a few minutes before downloading the App again (.gap)
- Change: wait now seven device reboots instead of four, before purging the App from the device and displaying the information message *Information - Fail Soft mode*
- Fix: playing a MS-PowerPoint media in a secondary zone could make freeze the played content then was leading to a device reboot. The device could take into account the new publication only after the device reboot
- Fix: the activation of a power manager task was leading to a fail soft mode
- Fix: some PDF medias could make reboot the device
- Fix: it was possible to enter a power manager task with no recurrence day at all
- Fix: it was possible to create a standby task with no recurring day
- Fix: in some cases, when navigating with the Web user interface, the user could fall on the `http://<ip_address>/.playout/` page instead of falling on the applicative `http://<ip_address>/.admin/#/` Web page

## `2023-02-01` V5.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-dmb300/gekkota_os-dmb300-setup-5.10.11.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the default value for the *innes.image.max_size* preference is now 4096 px
- Fix: the UDP stream playback could stop after a couple of seconds with some specific streamer configuration
- Fix: if the audio codec of a .mov media was not supported, the video track of the .mov media was not decoded
- Fix: the WLAN network interface with these security ciphering value was not working
    - `none`
    - `WEP`
    - `WPA-Personal (PSK)`
    - `WPA2-Personal (PSK)`
    - `WPA-Enterprise (EAP)`
    - `WPA2-Enterprise (EAP)`
- Fix: the content of a remote image having a same name could be not updated
- Fix: MS-PowerPoint medias playback
    - the video embedded in MS-PowerPoint media could be unexpectedly shifted on the left when the slide aspect ratio was 4:3
    - the failover font researching from the Microsoft cloud was not working
- Fix: the scrolling text was not displayed properly when the output rotation was 90° (or 270°)
- Fix: the GPIOs reading and writing on *Jack 3.5"* connector and on *Phoenix* connector was not supported
- Fix: in some case, when the output resolution was 90° (or 270°), the test pattern for the WLAN network interface was displayed outside the white outline
- Fix: with some specific output resolutions, the *STATE: up* or *STATE: down* information could be not displayed in the test pattern


## `2022-12-19` V5.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- initial version
>##### **IMPROVEMENTS BETWEEN GEKKOTA 3 AND GEKKOTA 5**
- Change: Web engine Mozilla 47 to Mozilla 92
- Fix: these widgets based on content models that was not supported in Gekkota 3 are supported now with Gekkota 5
	- Decounter
	- AC3 real Estate
