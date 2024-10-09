# INNES Screen Composer G4
*RELEASE NOTE*

## `2024-09-27` V4.13.10 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.13.10.exe){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SLATE206 device adding with a WIS middleware                           
>##### **KNOWN LIMITATIONS**
- In these version, the TAB10b devices cannot be detected yet when launching network UPnP discovery. To work around, the TAB10b devices must be added manually with the *TAB10s* model type
- Not yet supported
    - support for device configuration update
    - preview of .webm video container 
    - preview of .webp image format
    - Google Workspace services account 
- Not supported:
    - preview of these video/audio containers: .asf, .wmv, .vob, .mpg, .mpeg, .m2v, .avi, .ts, .wma
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
	- the firmware (.bin) upgrade of the SAP10e devices and SBL10e devices is not supported  
>##### **COMPATIBILITIES**
- Windows 7, 10
- Apps
    - SignCom 1.13.10 (and above)
    - SignMeeting M365 2.14.10 (and above)
    - SignMeeting XML DAY CALENDAR 2.14.10 (and above)
    - SignMeeting MS-EXCHANGE 2.12.12 (and above)
    - SignMeeting GOOGLE WORKSPACE 2.12.11 (and above)
    - SignMeeting ICALENDAR 2.12.11 (and above)
    - SignMeeting SIMUL 2.12.11 (and above)
    - SignMeeting JOOXTER 2.12.11 (and above)
    - SignMeeting CALDAV 2.12.12 (and above)
    - SignMeeting REQUEA 2.12.10 (and above)
    - SignMeeting GEODE CENTRALESUPELEC 2.12.10 (and above)
    - SignWay 2.10.10 (and above) 
    - SignDoor 2.10.10 (and above)
- Device models
    - AMP300
    - DMB300
    - DMB400
    - DMC200
    - DME204
    - SAP10e
    - SBL10e
    - SLATE206
    - SMA300
    - SMT210
    - TAB10s
    - TAB10b
    - WINDOWS PC

Some App products may not support all the device models. For further information, refer to release note of the used App

Facing trouble to visualize some Web page does not mean that the Web page could not be visualized on device supporting more recent Web engines    

#INFORMATION
***********************************************************************

#### DOCUMENTATION

[INNES Screen Composer G4/SignCom App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignCom)

[INNES Screen Composer G4/SignMeeting GOOGLE WORKSPACE App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_GOOGLE_WORKSPACE)

[INNES Screen Composer G4/SignMeeting M365 App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_M365)

[INNES Screen Composer G4/SignMeeting XML DAY CALENDAR - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_XML_DAY_CALENDAR)

[INNES Screen Composer G4/SignMeeting MS-EXCHANGE App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_MS-EXCHANGE)

[INNES Screen Composer G4/SignMeeting CALDAV App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_CALDAV)

[INNES Screen Composer G4/SignMeeting JOOXTER App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_JOOXTER)

[INNES Screen Composer G4/SignMeeting ICALENDAR App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_ICALENDAR)

[INNES Screen Composer G4/SignMeeting SIMUL App - user manual](http://www.innes.pro/en/support/index.php?Screen_Composer_G4/SignMeeting/App_SignMeeting_SIMUL)
  
In case using the *SignDoor* App, ensure to use the *SignDoor* 2.10.10 beta3 (or above) else the publication report popup may display fake successful publication status   
  
Once one or several *Simple web server* `services account` has been created in version 4.12.10 (or above), returning to a Screen Composer version below 4.12.10 will imply a error when publishing an App showing: *n is undefined*. To work around, remove the Simple web server and publish again.
  
#### **LANGUAGE**
The supported languages are: 

- French,
- English,
- German.

# OLD VERSIONS HISTORY
***********************************************************************

## `2023-11-29` V4.12.10 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.12.10.exe){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for preview of URI having *Simple Web server* services accounts with these different authentication ways:
    - *Domain/Identifier/Password for a basic authentication*
    - *Identifier/Password for a basic authentication*
    - *Identifier/Password for a Webpage form*
    - *None*
- Add support for file and folder copy-paste in a same directory by a drag'n drop
- Fix: in some case, clicking on the synchronization button of a playfolder could fail and return the message *the asset does not exist* after having loaded a different *Microsoft 365* services account in the playfolder       
- Fix: adding a metadata, for example a *duration* value, to an URI media based on a Web TV URI model, was reinitializing the URL value to the default URL value contained in the URI model
- Fix: it was not possible to affect a variable value to devices that was declared not applicant for the publication because these devices were not present in the variable affectation table   
- Fix: the synchronization of playfolder containing many files and using a services account could respond only thirty second after the files have been fetched on the disk
- Fix: the launching of the preview of a playfolder containing many files and using a services account could take several minutes
                           
## `2023-06-13` V4.11.14 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.11.14.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for core license keys pack supporting different maximum numbers of devices
- Add support for these user preferences 
	- *innes.network.publishing.retry_count_max* (default value: 1)
	- *innes.network.publishing.retry_delay* (default value: 2)
	- *innes.network.publishing.network_failure_delay* (default value: 10) 
- Fix: it was not possible to publish on a HTTP/WebDAV server having credentials
- Fix: when Screen Composer was facing trouble to publish on much devices, the *OK* button was not available in the publication reporting popup and it was not possible to scroll over the publication report tooltip of some devices
- Fix: the publication retrying in case publication failure was not working
- Fix: in some case, the *App loading* popup was displayed infinitely preventing Screen Composer to the finalize the project opening        

## `2023-04-04` V4.11.13 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.11.13.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *services account* values drag'n drop from the *Services accounts* tab to the App form
- Change: modify the label into the *Services account* pane from *Files/Folders, Directory, Contact, Calendar, Email, Web site* to *Files/Folders, Identity, Contact, Calendar, Email, Web site*

## `2023-03-14` V4.11.12 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.11.12.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: except immediately after a migration of an App version, it was not possible anymore to save these kinds of project: 
	- *SignMeeting*
	- *SignWay*
- Fix: the video inserted in the slidemaster template of MS-PowerPoint medias was not played

## `2023-01-11` V4.11.11 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.11.11.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *relative URL* variable type creation
- Add support for *relative URL* variable inside playfolder using *Microsoft 365* and *CIFS* services accounts
- Add support for UPnP detection of these devices  
	- Gekkota OS 5.YY.ZZ 
		- for DMB300 devices
		- for DMB400 devices
	- SAP10e devices  
	- SBL10e devices 
- Add support for *SignDoor* Apps
- Add support for *.xlsx* file as supported resource
- Fix: MS-Powerpoint medias preview
	- the failover font loading from the Microsoft cloud was not working
	- the embedded audio and video was not played
	- the date and time was not progressing while the slide was displayed
	- the hidden slides was displayed
	- the interactive buttons was not working
	- the numbered bullet was not supported
	- the shape's outline styles, out of the shape's outline plain style, was not supported
	- the font style inside tables was not supported   
	- the shape's outline could overlap the text in the shape
	- the interline policy was not applied for the first line of the paragraph
	- single strikethrough characters could be displayed instead of double strikethrough characters
	- the shape's text could be wrongly placed 
	- the *crop to shape* mask could be not displayed
	- the shapes could be displayed with a wrong transparency level
	- the text inside shape could be not centered on Qeedji System AOSP devices
	- the background gradient could be not rendered properly
	- the text could be displayed in black color instead of in white color
	- the hyperlinks was not underlined     
- Fix: the drag'n drop of several files in a raw to the SignCom App form was not working anymore
- Fix: the remote file URI could not work because the file extension of the file URI was replaced by the unexpected *undefined* label
- Fix: the *Reveal in the explorer* feature in the file contextual menu could not work when the filename or the pathname was containing some specific special character
- Fix: the label *This medias cannot be edited* was displayed when trying to open a *.ics* file containing syntax errors
- Fix: the *.svg* embedded in *.html* files could not be visualized in preview
- Fix: in some cases, when a playfolder had been configured with a services account, the *.media/* scheme instead of the *[Medias]/* scheme was displayed when returning to a playfolder configured without services account
- Fix: the default scheme *[Medias]*, *smb://* or *https://* was not set according to the selected services account type
- Fix: in the playfolder form, the sweep button was removing the scheme in the playfolder URL input
- Fix: when the font was not found in the font library, the bold style or the italic style of the default font was not rendered on Qeedji System AOSP 9 devices
- Fix: in some cases, Screen Composer could stop when opening a project
- Fix: after having renamed a variable name leading to a new variable column sorting in the variable editor, the label of some column headers had not the right variable name
- Fix: the *custom* variable and *deviceInfo* variable could not work on Qeedji System AOSP device when inserted in playfolder with *Microsoft 365* or *CIFS* services accounts
- Fix: it was possible to create a standby task with no selected day making that the other consistent standby tasks could not work

## `2022-06-24` V4.11.10 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.11.10.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new licenses delivery format (pack of 20 licenses)
- Add support for `services accounts`
    - *Microsoft 365* with support for services:
        - *Files & folders* (OneDrive)
        - *Web site*
        - *Directory*
        - *Contact*
        - *Calendar*
        - *Email*
    - *CIFS* with support for services:
        - *Files/folders* (smb://)
        - *Web services*
- Change: in the playfolder URL, the space character is not allowed now immediately behind the scheme
- Fix: in some case, some device with WLAN interface could appear with an empty hostname in the list of device discovered by UPnP
- Fix: in some cases, the publication could fail on some very slow network
- Fix: in some case, the end date of the event of the daily planner .ics could be the month after having edited the file
- Fix: superposition of two images could be noticed in the media thumbnail when loading consecutively two different .png files 
- Fix: when having some variable with no value and some other with values, the preview of media using this variable with value could show a wrong content
- Fix: the variable library was not opened automatically when clicking on the *variable_value* hyperlink of the validity variables metadata of a media
- Fix: when the path file name of the URI basis set for a media was too long, the *edit* button, to edit the URI basis, disappeared 
- Fix: it was not possible to set enter a proxy URL with special characters
- Fix: after an import of xlsx file, containing a devices configuration, some devices could appear in doubloon in case the device MAC address value in upper case was set in the xlsx file 
- Fix: in some case, the middleware upgrade could fail on AOSP device      

## `2022-03-18` V4.10.12 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.10.12.exe){.auth-downloads}
>##### **IMPORTANT**
A core license key is required to use `Screen Composer G4`.
Projects migration from `Screen Composer G3` projects to `Screen Composer G4` projects is not yet supported.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `Slide` editor
- Add support for `poster` metadata
- Add support for variable name and values creation with the following variables types  
	- `Custom` variables with the following type
		- `text`
		- `json`
		- `localized`
		- `file name`
		- `calendar`
	- `Device information` variables type with the following variable name
		- `field1`
		- `field2`
		- `field3`
		- `field4`
		- `field5`
		- `mac`
		- `uuid`
		- `hostname`
	- `Date and time` variable type with the following variable name
		- `date`
		- `day-abbreviation`
		- `day-in-month`
		- `day-in-week`
		- `day-in-year`
		- `day-name`
		- `day-of-week-in-month`
		- `month-abbreviation`
		- `month-in-year`
		- `month-name`
		- `week-in-month`
		- `week-in-year`
		- `year`     
- Add support for default variable value for preview
- Add support for default variable value for publication
- Add support for affectation of variable values to devices
- Add support for validity variable
- Add support for variable in URIs, playfolders and content models forms  
- Add support for publication on devices available with the https scheme
- Add support for *AMP300* devices models uPnP detection
- Add support for devices uPnP detection having a *Gekkota 5* middleware 
- Change: the current day in the calendar is not highlighted in blue anymore
- Fix: it was not possible to rename a folder in one go by replacing its lower case letters with upper case letters (and reciprocally) 
- Fix: the device labels of all registered devices was reinitialized to the respective devices hostname when an uPnP discovery was launched
- Fix: in case a device was not available anymore, the purge order for all the devices was stopped after this device
- Fix: it was not possible to cancel the middleware upgrade order
- Fix: a playfolder was not refreshing the content when the media when the playfolder unitary preview was relaunched
- Fix: in some case, the information message was inconsistent when trying to upgrade the middleware for a device
- Fix: with some *license e-mail* values, the licence keys could stay invalid  
- Fix: add support for .svg drag'n drop in content model forms
- Fix: the App content generated on an USB storage device after a publication order done on a directory was not compatible with Gekkota 3 devices    

## `2021-12-09` V4.10.11 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.10.11.exe){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the *license e-mail* value was not supporting identifier having letters in uppercase, numbers or special characters 
>##### **KNOWN LIMITATIONS**
- Not yet supported
    - support for variable library
    - support for slide editor
    - support for publication on devices available only with the https scheme
    - support for device configuration update
	- preview of this video container: .webm
- Not supported:
    - preview of these video/audio containers: .asf, .wmv, .vob, .mpg, .mpeg, .m2v, .avi, .ts, .wma

## `2021-11-30` V4.10.10 [download nt-ia32](screen-composer-g4/screen_composer-nt_ia32-setup-4.10.10.exe){.auth-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `SignCom` App
- Add support for button to install URI models pack (.zip) and content models pack (.zip) for Screen Composer G4 
- Add support for `fonts` library
- Add support for device middleware version update
- Add support for `calendar` file editor
- Change: update the list of embedded trusted root certificates
- Fix: in some cases, when the *Open the last project* option was checked, the last project was not opened automatically

## `2021-06-25` V4.10.10 beta16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SignMeeting M365 licenses format
- Add support for the new *demo licenses* format for SignMeeting 2.10.10 (and above)
- Add support for a *Reveal in explorer* button in the *Project settings > Project and App > Repositories* menu
- Change: some pictograms have been modified (*Reveal in explorer*, *Project open*, *Repositories*)
- Fix: the `INNES Screen Composer G4.exe` or the `Uninstall INNES Screen Composer G4.exe` executable file could be removed after a computer restart
- Fix: the device port is automatically detected when a device is added to the project from a device discovery
- Fix: in some case, the UPnP discovery could return an empty device list even if some device was available on the network

## `2021-05-21` V4.10.10 beta12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, some resource associated to devices could be not displayed  
- Fix: in some case, the CSS file content could appear empty
- Fix: in the French language, it was not possible to program a standby task except for *Saturday*     
- Fix: it was not possible to save a content model instance having an embedded picture imported directly from MS-Windows explorer  
- Fix: a *please wait* message was displayed when saving a content model instance having a picture whose size is upper than 1 MB  
- Fix: on some MS-Windows computer, the application could close itself when importing a media or when going in the settings menu to import licenses    

## `2021-04-06` V4.10.10 beta7 
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version supporting a Web engine based on Mozilla 47
	- SignMeeting EWS 2.10.10
	- SignMeeting SIMUL 2.10.10