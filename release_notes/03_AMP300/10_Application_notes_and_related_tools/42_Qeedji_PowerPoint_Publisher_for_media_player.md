# Qeedji PowerPoint Publisher for Media Player

#### **SUMMARY**
The goal of application note is to explain how to install and use the *Qeedji PowerPoint Publisher for Media Player* PowerPoint add-in.

## `2024-10-08` V1.16.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.16.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.16.10.msi){.free-downloads}
>##### **IMPORTANT**
In these version, the TAB10b devices cannot be detected yet when launching network UPnP discovery. To work around, the TAB10b devices must be added manually with the model type *TAB10s*. 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SLATE206 devices 
- Change: improved the rendering quality of the scrolling text overlay for AOSP devices 
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
	- *.pptx
	- *.ppsx
- Gekkota 4.14.16 (or above) for devices
	- DMB400
	- SMA300
- Gekkota 4.13.10 (or above) for devices
	- DME204
- Gekkota 5.11.13 (or above) for devices
	- DMB400
	- DMB300
- AQS 9.10.20 (or above) for devices 
	- AMP300
	- TAB10s
- WIS 1.10.10 for device
	- SLATE106
 
#INFORMATION
***********************************************************************
- The scrolling text is displayed in overlay automatically when supported by the device

- The user settings are stored encrypted in this file `C:\Users\%username%\AppData\Local\Microsoft_Corporation\PowerPointPublisherForMed_Path_<uuid>\<version_id>\user.config`

- Before installing a new MS-PowerPoint add-in version, it is advised to:
	- close MS-PowerPoint then 
	- uninstall the previous MS-PowerPoint add-in version

- In case the version of the MS-PowerPoint add-in in the *About* pane is not corresponding the MS-PowerPoint add-in version just installed, try to disconnect from Office 365 then sign in again

#PowerPoint example supporting touch screen interactivity and page progression after the video has ended  
***********************************************************************
- health-interactivity-video-to-nextslide-template~001A.pptx [download](application-notes/qeedji_powerpoint_publisher_addin/health-interactivity-video-to-nextslide-template~001A.pptx){.free-downloads}

#XML configuration file examples for PowerPoint
***********************************************************************

These are two *.xml* configuration script examples for MS-PowerPoint supported by *Qeedji Power Publisher for Media players* App.

These two *.xml* configuration scripts allow to configure the UDP datagram port and IP address to receive UDP message allowing to either to display the next slide or to display the previous slide. 

- *.xml* configuration script with unicast device IPV4 address:  
	- udp-unicast-configuration-template.xml/001A [download](application-notes/qeedji_powerpoint_publisher_addin/udp-unicast-configuration-template-001A.xml){.free-downloads}
		- to support these *.xml* configuration script example, your device OS must support UDP datagram. For further information, contact *support@innes.pro*
- *.xml* configuration script with multicast device IPV4 address: 
    - udp-multicast-configuration-template.xml/001A [download](application-notes/qeedji_powerpoint_publisher_addin/udp-multicast-configuration-template-001A.xml){.free-downloads}
    	- to support these *.xml* configuration script example, your device OS must support UDP datagram. For further information, contact *support@innes.pro*

Refer to the *Qeedji PowerPoint Publisher For Media Players: custom script* chapter of the device user manual to know how to import the *.xml* configuration script in your MS-PowerPoint. 
 
# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2023-04-03` V1.15.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.15.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.15.10.msi){.free-downloads}
>##### **IMPORTANT**
In these version, the TAB10b devices cannot be detected yet when launching network UPnP discovery. To work around, the TAB10b devices must be added manually with the model type *TAB10s*. 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: when installed on the AQS device, the App name is now *PowerPoint Publisher* instead of *PowerPoint Publisher Library* 
- Fix: when the App was pushed on the device, it could awake the AQS device which was in standby

## `2023-01-24` V1.14.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.14.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.14.10.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for executable custom script thanks to a configuration .xml file loaded in the optional *Developer* menu of the MS-PowerPoint ribbon

## `2022-01-10` V1.13.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.13.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.13.10.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DMB300 devices
- Change: move the ticker configuration pane from the *Advanced* tab to the *Ticker* tab
- Fix: the user configuration could be erased after MS-Office version update
- Fix: the version number embedded in the APKs was not the right one 
- Fix: the transitions was not working on AQS devices
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
	- *.pptx
	- *.ppsx
- Gekkota 4.14.13 (or above) for devices
	- DMB400
	- SMA300
- Gekkota 4.14.11 (or above) for devices
	- DME204
- Gekkota 5.10.10 (or above) for devices
	- DMB300
	- DMB400
- AQS 9.10.11 (or above) for devices 
	- AMP300
	- TAB10s

## `2022-10-17` V1.12.11 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.12.11.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.12.11.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some poor network condition, the publication of MS-Powerpoint medias having a huge size could fail 
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
	- *.pptx
- Gekkota 4.14.12 (or above) for devices
	- DMB400
	- SMA300
- AQS 9.10.10 (or above) for devices 
	- AMP300
	- TAB10s

## `2022-10-05` V1.12.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.12.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.12.10.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for scrolling text in an optional bottom banner
- Fix: in some case, activating the `force for manual transitions an automatic progression of <m> min <n> sec` option was compressing the video medias inside the MS-PowerPoint media preventing them to be played back  

## `2019-09-03` V1.10.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.10.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.10.10.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
