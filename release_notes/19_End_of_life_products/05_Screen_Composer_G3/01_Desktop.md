#Screen Composer G3
*RELEASE NOTE*

*Innes Models are not part of Screen Composer delivery anymore. Please visit ```http://www.innes.pro/fr/support/``` to get the last content model pack for Screen Composer G3*.

*The App Playzilla is not part of Screen Composer delivery. It needs to be imported in Screen Composer to work with any gekkota 4 projects types.*

##`2019-06-17` V3.20.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for project supporting `Gekkota 4 DME204` devices
- Add support for SignMeeting project migration from 1.12.XX to 1.13.XX
>##### **COMPATIBILITIES**
- Java 32 bits - V1.8 (or above)
- App
	- Playzilla:
		- Playzilla 4.XX.YY
    		- Gekkota OS 4.11.11 (or above):
	    		- DMB400, DME204, SMT210, SMA300, SMH300
			- Gekkota OS 3.12.57 (or above):
	    		- DMC200, DMB300, SMA200, SMP200
			- Gekkota RT 3.12.59 (or above)
		- Playzilla 3.10.10
    		- Gekkota OS 3.12.57 (or above):
	    		- DMB300, DMC200, SMA200, SMP200
    		- Gekkota RT 3.12.59
	- SignMeeting:
		- SignMeeting 1.12.XX
			- Gekkota OS 3.12.57 (or above):
	    		- DMC200, DMB300, SMA200, SMP200
			- Gekkota RT 3.12.59 (or above),
		- SignMeeting 1.13.XX
			- Gekkota OS 4.11.11 (or above):
	    		- DMB400, DME204, SMA300, SMT210, SMH300
			- Gekkota OS 3.12.57 (or above):
	    		- DMC200, DMB300, SMA200, SMP200
			- Gekkota RT 3.12.59 (or above),
	- SignWay:
		- SignWay_Demo 1.10.10
			- Gekkota RT 4.10.18 beta3 (or above)
	- SignDoor:
		- SignDoor Demo 1.10.13 beta12
			- Gekkota OS 4.11.11 (or above)
				- SMH300

#INFORMATION
***********************************************************************

#### **WORK WITH PLAYZILLA 4.XX.YY**
To Work for the first time with Playzilla 4.10.1X App & Screen Composer 3.20.1X:

- Check that Java 1.8 (or above) is installed on your Windows computer
	- Warning: The message `Error this format is not supported` is prompted when importing the App in case you are using a too old `Java` version.
- Install Screen Composer 3.20.15 (or above)
- Download the App (*.appi)
- Open Screen Composer
	- Create a new projet with device type ```Gekkota 4 dmb400```,
	- Click on ```import an App```,
	- Select the file ```playzilla-screencomposer-setup-4.10.20.appi```

To know whether your Screen Composer App is Playzilla 4 or Playzilla 3:

- The App version is available at the top of the interface (in the project title)
	- To work with DMB300, MS-Windows, DMC200, SMA200, SMP200
		- This title has to be displayed ```Innes Screen Composer - Playzilla 3.10.10 - <your_projectname>```
	- To work with DMB400, SMA300, DME204, SMT210, SMH300
		- This title has to be displayed ```Innes Screen Composer - Playzilla 4.10.20 - <your_projectname>```
- The App version is available also in ```Settings > Preferences > Project and App```
	- ```Version of the App```
		- ex: ```4.10.20```
	- Note: All the projects created with Screen Composer 3.11.12 (or before) are working with Playzilla version 3.10.10
		- ex: ```3.10.10```

To know the device type of your project Screen Composer:

- The chosen devices type appears  in ```Settings > Preferences > Project and App```
	- ```Devices type```
		- ex: ```Gekkota4 dmb400```

To upgrade the App Playzilla 4.10.XX version:

- Open Screen Composer 3.20.13 (or above),
- Open an existing project with
	- App = Playzilla 4
	- device type = ```Gekkota 4 dmb400```,
- Click on ```import models or an App```,
- Select the App ```playzilla-screencomposer-setup-4.10.XX.appi```
#### **WORK WITH THE SIGNMEETING APP**
To work with the `SignMeeting` App for a specific calendar system, read the appropriate `SignMeeting` user manual available for download in each `SignMeeting` release note.
#### **WORK WITH THE SIGNWAY DEMO APP**
To work with the `SignWay Demo` App, refer to the `SignWay Demo` App release note.
#### **WORK WITH THE SIGNDOOR DEMO APP**
To work with the `SignDoor Demo` App, refer to the `SignDoor Demo` App release note.
#### **USER MANUAL**
- User manual (011A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/Screen-Composer-User-Manual-11A_en.pdf)
- User manual (001L/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/Screen-Composer-G3-Manuel-Utilisateur-001L_fr.pdf)
- User manual (011B/ES) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/Screen-Composer-Manual-de-usuario-11B_es.pdf)
#### **GETTING STARTED**
- Getting started (018A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/screen-composer-with-gekkota-elinux-g3-getting-started-manual-018A_en.pdf)
- Getting started (018A/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/screen-composer-avec-gekkota-elinux-g3-manuel-de-démarrage-rapide-018A_fr.pdf)
- Getting started (018A/DE) [download](https://github.com/Qeedji/archives/blob/master/downloads/screen-composer-g3/screen-composer-mit-gekotta-elinux-g3-wegweiser-schnellstart-018A_de.pdf)
#### **PREVIEW**
- WMA preview is not supported
- When Screen Composer has just been opened, the first preview of a media can take until 40 seconds to start
#### **FLASH MEDIA AND BASE URI**
- When URI base is edited, the flash media needs to be removed from calendar and placed again in calendar event
#### **POWER POINT BULLET REQUIRING FONTS**
- The bullet rendering which is based on a specific font requires to add the approriate fonts manually in the playout manifest

#OLD VERSIONS HISTORY
***********************************************************************

##`2018-04-12` V3.20.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for MS-PowerPoint medias for *gekkota4 sma300* devices
- Add support for SignMeeting project 1.13.XX (and above)
	- Warning: SignMeeting project migration from 1.12.XX to 1.13.XX is not supporte
- Change: audio is muted when entering standby, and unmuted when exiting standby
- Fix: the device could not be able to exit standby after a new publication not containing a standby task
- Fix: MS-PowerPoint medias preview could not work sometimes
- Change: embeds ontology HID detection V1.10.16
- Fix: when using a portrait 4/3 grid, the content was not downscaled properly on Gekkota4 devices connected to 16-9 monitors

##`2018-01-30` V3.20.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for other apps than ```Playzilla``` App & ```SignMeeting``` App
	- for example: ```WayFinding``` App
- Fix: support for .pptx and .ppsx medias for ```Gekkota 4 DMB400``` projects
- Fix: modifying a MS-PowerPoint media property (ex: duration per page) could corrupt the media definitively
- Fix: add proxy address format validity control
- Fix: publication could fail when the device id length or the device password length was above 16 characters
- Fix: it was not possible to create a model from the content model library in case the workspace path file name was containing ```&``` character
- Fix: it was not possible to wake up a device in standby by publishing a playout having no standby task programmed

##`2017-07-25` V3.20.12
>##### **IMPORTANT**
- Innes Models are not part of Screen Composer delivery anymore. Please visit ```http://www.innes.pro/fr/support/``` to get the last model pack for Screen Composer
- Model pack version 3.48 (or above) is required to support onthologies and model in german language
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for German language
	- Want to change to language when Screen Composer is already installed ?
		- Do please uninstall Screen Composer before installing the new version supporting the previous language
- Add support for the pasting of license, one by one, with the format *abcde - fghij - klmn - opqrs -  tuvw;PSN00000-000xy CD1;Oui;*
- Add support for video multi-decode compatibility for DMB400 device (Gekkota 4)
- Add support for new file extensions in library
	- mpd,
	- ismc,
	- sdp
- Add SMH300 device in the device list when creating a new project
- Add error message when importing Playzilla App dedicated to PlugnCast
- Add error message when trying to publish on USB storage without valid Playzilla licenses
- Add warning message *Download new content models pack from http://www.innes.pro, in the menu Support > Screen Composer G3 > Content Models* when there is no model when there is no model available in Screen Composer
- Change: remove content model pack embedded in Screen Composer delivery
	- Visit http://www.innes.pro to get the last content model pack for Screen Composer (3.48 of above)
- Change: always ensure that there is a slash at the end of a playfolder edition path
- Fix: preview of playfolder with variable was not working
- Fix: some directory containing non ASCII characters could be not played by a playfolder
- Fix: some character required in TNT uri edition path was not properly displayed making that TNT uri was not working
- Fix: directory whose name is beginning with *#* character was not published on the player
- Fix: black screen could be noticed when publishing a playfolder whose edition path is containing non-ASCII character
- Fix: directories containing non-ASCII characters could be wrongly displayed in the library
- Fix: valid license with missing "space" separator could be not valid in Screen Composer
- Fix: resource drag'n drop was not working when Screen Composer was displayed on MS-Windows secondary screen
- Fix: when possible, in content template library, display the content model name on two lines (to avoid three dots)

##`2017-01-25` V3.20.11
>##### **IMPORTANT**
- In case using DMB400 devices, Screen Composer is compatible with Playzilla 4.10.11 (or above)
- This version does not support properly URN TNT
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Playzilla 4.10.11 and (above)
- Add error message when trying to use Playzilla 4.10.10
	- *Playzilla version 4.10.10 is not compatible with Screen Composer version 3.20.11. Please upgrade the Playzilla App*
- Add support for HTML archive (Zip format) (converted automatically in .wgt)
- Fix: restore support for SignMeeting (legacy instruction "let =" was not supported anymore in version 3.20.10)
- Fix: Screen Composer was stuck when opening another existing project (without closing the previous one)
- Fix: the script to execute was not working anymore on Gekkota 3 / Playzilla 3 projects (because not loaded in the device)
- Fix: could publish a unexpected content when using obsolete onthologies (it is recommended to use default onthologies embedded in Screen Composer or those of model pack 3.42 (or above)
- Fix: the medias placed at the end of a multimedia sequence "there is nothing to play" was not played in some case
- Fix: in some case, new Playzilla 3 projects was publishing only background image when Playzilla 4 was chosen (now it is not possible to choose Playzilla 4 App for these device types)
- Fix: it was not possible to add a multimedia sequence for *Task* (*Scenario* tab)
- Change: ensure serial numbers unicity in the license manager (*Project and App* menu)
- Change: remove support for layout tolerence

##`2017-01-03` V3.20.10
>##### **IMPORTANT**
- Note for devices types Gekkota4 dmb400:
	- supports content model pack V3.41 (or above)
- Change: move layout management (belonging to grid panel) into *layout* tab (close to *calendar*, *scenario*, *properties, *manifest*, *scripts to execute*
- This version does not support properly URN TNT
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for app Playzilla
- Add some devices type supporting Playzilla
	- Gekkota 4 dmb400
	- Gekkota 4 MS-Windows
	- Gekkota 4 sma300, smt210, sma200
	- Gekkota 4 dmb300, dmc200
- Add support for screen resolution 3840x2160 (Ultra HD)
- Add support for script loading
- Add support for device whole selection (with CTRL+A, or SHIFT+UP)
- Add layout tolerence permitting to let the player adapt the content automatically
- Add Playzilla 4 licence management for devices types supporting Plazilla 4
	- a licence Playzilla is paired to
		- an email address and
		- the device PSN
	- it is required to enter as much licenses as there are players to control at the same time
- Add support for new ontologies
	- Audio-video commands
	- HID detection
- Add *properties* tab supporting
	- error message display time
	- default duration for image display
	- duration for error
- Change: defaut charset is UTF8 when creating a new text file
- Change ontology interface
	- Display
	- Management of power supply
		- Reboot
	- Shell
		- Launch an executable
- Change: moved layout management (belonging to grid panel) into *layout* tab (close to *calendar*, *scenario*, *properties*, *manifest*, *scripts to execute*
- Change: rename *medias* into *manifest*
- Change rename *project* into *project and App*
- Fix in some case, player name could be wrongly displayed in SignMeeting (containing special characters)
- Fix: App version number was not updated in case App SignMeeting (or Playzilla) update
- Fix: impossibility to publish on IIS on OS system MS-Windows XP Pro
- Fix: non-ASCII characters of device name was wrongly displayed (ex: SingMeeting)
- Fix: resource of old App are removed when installing a new App
- Fix: multimedia sequence was not sorted in alphabetic order (*scenario* tab)
- Fix: publication time on directory is optimized (shortened) when the same files are copied on the directory
##`2014-12-23` V3.11.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support WGT
- Add support distant powerpoint
- Add scroll bar refresh in network favorite
- Add display of app version on app configuration screen
- Add app configuration screen opening in full screen
- Change embeds Gekkota V3.11.10
- Fix several instances of the same app were using same database
- Fix default reboot in task preferences did not work

##`2014-09-30` V3.11.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add versionning management regarding appi loading and app (zip) importation (ex: signMeeting)
- Homogeneity in publication order
>##### **MODELS PACKAGE**
- V3.10.16

##`2014-07-20` V3.11.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new screen "select the App to use" (.appi) when creating new projet is- Change embeds
- Add support GPIO 5 and 6 for DMB300 plateform (dependance DMB300 3.11.10) Playzilla V3.11.10 beta5
- Add information message after content model pack importation (App, onthology)
- Add support for content models onthology dynamic importation
- Improve fonts manager (especially for PDF & power point containing specific fonts like celticmd
- Fix tooltip missing for variables (user commands: emergency)
 font)
- Fix random publication issue  (success rate could fall to 0% with some powerful PC)
>##### **MODELS PACKAGE**
- V3.10.16

##`2014-07-17` V3.10.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change embeds Playzilla V3.11.10 beta5
- Fix system fonts doubloons display clean-up (several same types of fonts was displayed)
- Fix audio track playback does not work
- Fix additional user click is needed to finalize player auto detection screen display
- Fix fonts can not be loaded thru "Mes Medias/Mes Fichiers interface" (only with polices interface)
- Fix variable renaming does not work properly
- Fix add input 5 & input 6 to peripheral Phoenix GPIO
- Fix fix focus issue on html playback (impact also on keypad et RemoteControl: improved)
- Fix blocking issue to publish on serveur core with 10 hearts
- Fix orthograph: resource distante to ressource distante
- Fix publication robustness in case obsolete playfolder rule
- Fix project ".is" opening robustness in case obsolete object
>##### **MODELS PACKAGE**
- V3.10.16

##`2014-04-29` V3.10.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change embeds Playzilla V3.10.41_beta1
- Fix .pptx file corrupted after changing the slides' duration
- Fix preload of distant resources
- Fix impossible to create a new user command
- Fix a focus problem when waiting shell exits
>##### **MODELS PACKAGE**
- V3.10.15

##`2014-01-29` V3.10.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add feature 'import models' in a zip format file
- Add feature 'watching variables in xpath functions' (for playfolder for example)
- Add feature ontology 'Display/Brightness'
- Add feature 'skip the media when not present' (in file rules)
- Add a reboot task at 6h00 A.M. every day (for new projects)
- Add the command 'emergency on' and 'emergency off' (for new projects)
- Change embeds Playzilla V3.10.39
- Change rename 'layout' by 'grid'
- Change the embedded resolutions for all types of platforms : '1024x768, 1920x1080, 1440x900, 1024x600'
- Improve accuracy of error message in case of publishing on a full destination
- Fix robustness issue PPT/SWF (Flash and Powerpoint medias are viewed in a separate task)
- Fix random crash when viewing web sites
- Fix background color inside playfolder (not correctly set)
- Fix support special characters in file rules & default media
- Fix wrong fonts detection with PDF and PPT medias (in case too much fonts)
- Fix a graphical trouble while creating/deleting new zones on a grid (a previous deleted zone could reappear)
- Fix jquery feature
>##### **MODELS PACKAGE**
- V3.10.15

##`2013-08-02` V3.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change embeds Playzilla V3.10.32
- Fix trouble when the project name is the same as the worspace directory
- Fix after creating a new project, impossible to delete the emergency command
- Fix publish error on a full disk
- Fix File Monitor 'OnChange' which didn't work
>##### **MODELS PACKAGE**
- V3.10.10


##`2013-06-07` V3.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix trouble when saving a project after upgrading from V3.10.12 to V3.10.13
>##### **MODELS PACKAGE**
- V3.10.10

##`2013-05-30` V3.10.13
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add one digit after the dot for estimated size of medias (medias tab)
- Change embeds Playzilla V3.10.31_beta12
- Fix trouble with ontology 'Phoenix gpio'
- Fix ontologies which may not be saved while switching project
- Fix big publish which didn't go until the end
- Fix crash if the installer file name is changed
- Fix crash when selecting 'favourite network'
- Fix crash while switching project if ontology is displayed
>##### **MODELS PACKAGE**
- V3.10.10

##`2013-02-14` V3.10.12
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change embeds Playzilla V3.10.28_beta30
- Add player type when creating a new schedule
>##### **MODELS PACKAGE**
- V3.10.10

##`2013-01-02` V3.10.12 beta2
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add variables
- Add user commands
- Add remote resources (in tab Medias)
- Add playfolder-rule, file-rule and playlist.
- Add task display off
- Add feature 'publish to WebDav server'
- Add feature 'put a defaut time of 0 for each slide' if not specified (for powerpoint)
- Add spanish language
- Change embeds Playzilla V3.10.28_beta2
- Change delete containers (old containers becomes uncompatible)
>##### **MODELS PACKAGE**
- V3.10.10

##`2012-08-30` V3.10.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add feature 'obsolete project cleaning'
- Change (optimization) publication time
- Fix bad estimation of remaining time during publication
- Fix project block during opening, when containers were used
- Fix emulation windows on a MAC which didn't work
- Fix a flashing on media when CTRL key is pressed
- Fix bad ordering of medias in the event tab
>##### **MODELS PACKAGE**
- V3.10.10

##`2012-06-29` V3.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version for G3 playzilla/gekkota
>##### **MODELS PACKAGE**
- V3.10.10
