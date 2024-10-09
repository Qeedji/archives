# PlugnCast G3
*RELEASE NOTE*

Since the version `PlugnCast` V3.11.10, only the 64 bits version is available. The default installation directory has changed from:

- `C:\Program Files (x86)\Innes PlugnCast Server` to
- `C:\Program Files\Innes PlugnCast Server`

**Consequently, you may have to authorize again `PlugnCast` application ```C:\Program Files\Innes Plugncast Server\plugncast-container.exe``` to communicate through your Windows firewall.**

## `2022-12-21` V3.12.18 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.18.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the DMB300 device models with *Gekkota 5* middleware could not be detected as phantom devices
- Fix: the *Qeedji System AOSP 9* device models couldn't be detected as phantom devices
>##### **USER MANUAL**
- User manual 3.12.18~002A_fr [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast-on-premises-usermanual-3.12.18~002A_fr.pdf)
- User manual 3.12.18~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast-on-premises-usermanual-3.12.18~002A_en.pdf)
- User manual 3.12.18~002A_de [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast-on-premises-usermanual-3.12.18~002A_de.pdf)
>##### **COMPATIBILITIES**
- Playzilla 4.13.13 (or above)
- Gekkota G4 for device
    - Gekkota OS V4.14.14 (or above)
        - for DMB400
        - for SMA300
    - Gekkota OS V4.13.10 (or above)
        - for DME204
    - Gekkota OS V4.13.13 (or above)
        - for SMT210
    - Gekkota RT V4.14.13 (or above)
- Gekkota G5 for device
    - Gekkota OS V5.10.11 (or above)
        - for DMB300
- Gekkota G3 for device
    - Gekkota OS V3.12.57 (or above)
        - for DMB300
        - for DMC200
        - for SMP200
        - for SMA200
        - for SMA300
    - Gekkota RT V3.12.59 (or above)
- LG smart monitors
    - WebOS 3.0
    - WebOS 3.2
    - WebOS 4.0
    - WebOS 4.1
- SAMSUNG smart monitors
    - Tizen SSSP 4
    - Tizen SSSP 5
    - Tizen SSSP 6
- Qeedji System AOSP  V9.10.13 (or above)
    - for AMP300
    - for TAB10s
- Web browser
    - Mozilla Firefox
    - Google Chrome
    - MS-Edge (Chromium)

#INFORMATION
***********************************************************************
#### **COMMAND LINE**
- ```plugncast.exe --help```:
    - allow to list all PlugnCast inline commands
- ```plugncast.exe -k resetsuperadmins```:
    - Delete all existing super administrator accounts and restore default super administrator account (login: *superadmin*, password: *superadmin*)
    - All players are unselected
    - Variables affected to the player are not visible anymore (target view). Click on *select the variables* icon, and select the variable columns to be displayed  to see again the variable affected to the players
- ```plugncast.exe -k resetssl```:
    - allow to renew PlugnCast certificate (useful in https)
- ```plugncast.exe -k resetroles```:
    - allow to restore default role values for all the user profiles
- ```plugncast.exe -k resetacls```:
    - allow to remove all the ACL for all the resources
#### **SSL Server test**
PlugnCast Server SSL over-rating, powered by Qualys SSL Labs [view report](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/PlugnCast-Server-3.12.17-demo.plugncast.com-SSLLabs-report.pdf)
#### **LG WebOS Signage 3.0, LG WebOS Signage 3.2, LG WebOS Signage 4.0, LG WebOS Signage 4.1**
- For any rendering issue or video decoding issue with ```LG WebOS Signage 3.0```, ```LG WebOS Signage 3.2```, ```LG WebOS Signage 4.0``` or ```LG WebOS Signage 4.1```, you are invited to read first the monitor user manual and check the monitor capabilities. For further information, contact your LG support.
#### **SAMSUNG Tizen SSSP 4, SAMSUNG Tizen SSSP 5, SAMSUNG Tizen SSSP 6**
- For any rendering issues or video decoding issue with ```SAMSUNG Tizen SSSP 4```, ```SAMSUNG Tizen SSSP 5```, or ```SAMSUNG Tizen SSSP 6``` smart monitors, you are invited to read first the monitor user manual. For further information, contact your Samsung support.
    - [Example of SAMSUNG Tizen SSSP 5 release note](https://displaysolutions.samsung.com/pdf/manual/3336/DBJ_QBH_QHH_QMH_EU_WebManual_Eng_for_Europe-03_20180801.0.pdf)
#### **MEDIAS MIGRATION GUIDE FROM PLUGNCAST G2 TO PLUGNCAST G3**
- Documentation (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/medias-migration-guide-from-plugncast-g2-to-g3-001a_fr.pdf)
#### **IMPORTANT NOTE WHEN MIGRATE TO MS-WINDOWS 10**
- In case migration from MS Windows 8.X to MS Windows 10, in order to avoid losing all your PlugnCast data, save the PlugnCast G3 server file system before the migration and restore it after migration (default path ```C:\Users\Public\Documents\Innes PlugnCast Server```)
- In case using any version MS-Windows 10, it is recommended also to inactivate MS-Windows upgrade service
#### **MIGRATION**
- When migrating PlugnCast version, close the Web browser and open it again before using PlugnCast (or press F5, to refresh the content in your Web browser).
#### **PLAYLIST AUDIO INSIDE A VISUAL CHANNEL**
- To avoid any unexpected behaviour, do no insert a audio container (playlist, playfolder) inside a visual channel else the visual content could not be played properly
#### **CORRUPTED MEDIA**
- The message *An error has occurred while retrieving the playout dependencies* is prompted in the manifest screen when the playout is containing a corrupted media. To solve the issue, find out and remove the corrupted media.
#### **MODEL METADATA**
- The metadata other than the version number are not updated in case model version upgrade.

#INFORMATION
***********************************************************************
#### **COMMAND LINE**
- ```plugncast.exe --help```:
    - allow to list all PlugnCast inline commands
- ```plugncast.exe -k resetsuperadmins```:
    - Delete all existing super administrator accounts and restore default super administrator account (login: *superadmin*, password: *superadmin*)
    - All players are unselected
    - Variables affected to the player are not visible anymore (target view). Click on *select the variables* icon, and select the variable columns to be displayed  to see again the variable affected to the players
- ```plugncast.exe -k resetssl```:
    - allow to renew PlugnCast certificate (useful in https)
- ```plugncast.exe -k resetroles```:
    - allow to restore default role values for all the user profiles
- ```plugncast.exe -k resetacls```:
    - allow to remove all the ACL for all the resources
#### **SSL Server test**
PlugnCast Server SSL over-rating, powered by Qualys SSL Labs [view report](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/PlugnCast-Server-3.12.17-demo.plugncast.com-SSLLabs-report.pdf)
#### **LG WebOS Signage 3.0, LG WebOS Signage 3.2, LG WebOS Signage 4.0, LG WebOS Signage 4.1**
- For any rendering issue or video decoding issue with ```LG WebOS Signage 3.0```, ```LG WebOS Signage 3.2```, ```LG WebOS Signage 4.0``` or ```LG WebOS Signage 4.1```, you are invited to read first the monitor user manual and check the monitor capabilities. For further information, contact your LG support.
#### **SAMSUNG Tizen SSSP 4, SAMSUNG Tizen SSSP 5, SAMSUNG Tizen SSSP 6**
- For any rendering issues or video decoding issue with ```SAMSUNG Tizen SSSP 4```, ```SAMSUNG Tizen SSSP 5```, or ```SAMSUNG Tizen SSSP 6``` smart monitors, you are invited to read first the monitor user manual. For further information, contact your Samsung support.
    - [Example of SAMSUNG Tizen SSSP 5 release note](https://displaysolutions.samsung.com/pdf/manual/3336/DBJ_QBH_QHH_QMH_EU_WebManual_Eng_for_Europe-03_20180801.0.pdf)
#### **MEDIAS MIGRATION GUIDE FROM PLUGNCAST G2 TO PLUGNCAST G3**
- Documentation (FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/medias-migration-guide-from-plugncast-g2-to-g3-001a_fr.pdf)
#### **IMPORTANT NOTE WHEN MIGRATE TO MS-WINDOWS 10**
- In case migration from MS Windows 8.X to MS Windows 10, in order to avoid losing all your PlugnCast data, save the PlugnCast G3 server file system before the migration and restore it after migration (default path ```C:\Users\Public\Documents\Innes PlugnCast Server```)
- In case using any version MS-Windows 10, it is recommended also to inactivate MS-Windows upgrade service
#### **MIGRATION**
- When migrating PlugnCast version, close the Web browser and open it again before using PlugnCast (or press F5, to refresh the content in your Web browser).
#### **PLAYLIST AUDIO INSIDE A VISUAL CHANNEL**
- To avoid any unexpected behaviour, do no insert a audio container (playlist, playfolder) inside a visual channel else the visual content could not be played properly
#### **CORRUPTED MEDIA**
- The message *An error has occurred while retrieving the playout dependencies* is prompted in the manifest screen when the playout is containing a corrupted media. To solve the issue, find out and remove the corrupted media.
#### **MODEL METADATA**
- The metadata other than the version number are not updated in case model version upgrade.

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2022-02-23` V3.12.17 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.17.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: when an event is created inside a new .ics calendar file, it is added now without the optional *METHOD:PUBLISH* line
- Change: updated the root trust certificates database
- Change: updated the ciphering algorithms database
- Fix: when changing first the start date then inactivating the recurrence in the planning window of a calendar timeslot, the start date modification was not taken into account
- Fix: in a .ics calendar file form, after having inactivated the *all day long* check box for an event and modified the event end time, the end date was set to the day after
- Fix: in some case, when connected with a user profile with a lower role, the double ban pictogram could be not displayed properly
- Fix: in some case, when connected with a user profile with a lower role, a double ban pictogram was missing when the affected playout could not be shown
- Fix: especially for an event taking place the year-day when the daylight saving time is changing, an all day long event was transformed into a 00h00-00h00 event leading to a consistency error when editing the .ics calendar form
- Fix: the preview of a widget was returning an error after having been previewed once then renamed
- Fix: in some case, when a xml file was edited, its content could seem to be the one of another resource file previously opened
- Fix: an error was displayed when the .playlist media was playing PDF files
- Fix: the playback of some specific Web page could return an error when it was containing specific character
- Fix: the playback of some specific RSS feeds could return an error  when it was containing specific character
- Fix: special characters in the HTTP URL input of the content model form was not handled properly in preview
- Fix: in some case, the duration per page intrinsic to the .pptx media could be not taken into account when changed manually modified with PlugnCast

## `2021-08-10` V3.12.16 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.16.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the dependency between  ```cms.targets.digitalsignage.view```, ```cms.targets.digitalsignage.publication.publish```, and ```cms.targets.digitalsignage.publication.playout.edit``` permissions have been removed
- Fix: *.svg* file was removed from the *.ics* calendar file after its edition

## `2021-07-01` V3.12.15 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.15.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for an option to associate an image for each event of a calendar file (`.ics`)
- Add support for a *Delete the past events* button to remove all the past events from a calendar file (`.ics`)
- Add support for drag'n drop of *Date and Time* variable type in content model form
- Fix: with some customer configuration, some huge slowness could be noticed when using the Web user interface due to unexpected latency between the server and the Web browser
- Fix: the outline of the form input was not visible when the input was greyed when using the *Mozilla Firefox* Web browser
- Fix: in some case, on the off-premises PlugnCast solution, the devices-status.xml could not be detected on some frontals after several days

## `2021-05-25` V3.12.14 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.14.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when an external frontal was created with an URL containing a publicly routable (but not ping-able) IP address, the device status could be not detected on the built-in frontal
- Fix: some unexpected user preferences values was stored in the `frontals.js` file of the user profile
- Change: the outline of the text inputs inactivated in the content model forms had a style with a too dark grey color

## `2021-05-04` V3.12.13 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.13.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: when several hundred devices was registered on several domains and several users was using the server, in some cases, the CPU bandwidth of the server could stay stuck to 100% forever. In this case, the server could restart or it was very difficult to connect to the server
- Fix: in some rare case, the server could restart unintentionally
- Fix: a device owner was created then immediately destroyed every 15 minutes for every fantom devices
- Fix: in some case, the hard disk bandwidth could increase unintentionally for a while
- Fix: some Russian label was not translated properly
- Change: the opening and closing parenthesis characters are not written anymore by default in a new json file

## `2021-03-03` V3.12.12 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.12.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a form to edit new .ics calendar file
- Add support for Russian language
- Add support for user preference `innes.plugncast.cms.flash.enabled` to activate or inactivate support for .swf medias.
    - *true*: .swf files are handled and viewable in the library
    - *false* (default): .swf files are not handled and not viewable in the library
- Add support for ```thumbnail``` adding as metadata for playable medias
- Add support for ```Choose this picture as thumbnail``` button in the video unitary preview (.mov, .mp4, .m4v)
- Add support for keywords based on variables for playfolder and playlist
- Add support for fallback media for playlist when it is empty
- Add support for .playlist format with playing rules
    - Play order
        - Order of list
        - Reverse order of list
        - Random
    - Play mode
        - Play one media
        - Play every medias
- Add support for media filtering rules inside playlist based on keywords list
- Add support for play occurrence rules inside playlist based on keywords list or rating values
- Change the icon for each variable type
- Change: embeds Playzilla 4.13.12
- Change: the filtering in play rule is not case sensitive anymore
- Change: PlugnCast logo
- Fix: when using date and time variable, the estimated *week-in-year* value  was wrong for some year
- Fix: in some case, the library calendar timeslot was not dynamically renamed in the target/task view when the library calendar timeslot was renamed
- Fix: the heartbeat inactivation was not effective in the remote file or remote folder
- Fix: a please wait message could be displayed infinitely when trying to save a license with an empty label
- Fix: in some case, it was not possible to drop a media as playfolder fallback
- Fix: the filtering by keywords inside the playfolder was not working when the directory path file name was too long
- Fix: the comma character inside keywords was not supported for .jpg medias
- Fix: in some case, with German language, it was not possible to activate really the language *according to browser preference*
- Fix: in some case, some domain names was missing in the *urn:innes:system-app#playzilla* tooltip information
- Fix: in some case, the linked font could not be embedded properly in the manifest
- Fix: values of group per variable are now using the variable labels instead of the variables values
- Fix: in some case, an error message *the file already exists* could be displayed in the manifest when creating a remote file
- Fix: the *duration* metadata was not displayed anymore for all video media (.mov, .mp4, .m4v)
- Fix: a *fatal error* message was displayed when a user, having not the *cms.owner.edit* rights, was selecting a domain just created
- Fix: in the variable tab of target view, the displayed default variables value was not properly updated after having modified it
- Fix: after having modified a content model instance, the dependencies was not properly set in the manifest
- Fix: several unexpected scrollbar could be noticed when creating group per variable with several variable levels
- Fix: in some case, the device version and the device SN could be displayed on several lines
- Fix: in some case, a calendar timeslot could remain in edition mode after a media has been renamed
- Fix: in some case, some tooltip could not be displayed in the variable tab of the target view
- Fix: inserting HTML code in text variable could involve unexpected rendering when using this variable
- Fix: an unexpected ban symbol was displayed when flying over the *Todo* and *standby* columns header of the task pane in the target view
- Fix: the save button was appearing each time an URI or playfolder containing a variable was edited
- Fix: multiple selection using the SHIFT + DOWN key was not working in the ACL dialog

## `2020-07-23` V3.12.11 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.12.11.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the `calendar` variable type
- Add support for `variable validity` metadata for the library medias
- Add support for fallback media for playfolder when the directory is empty
- Add support for media filtering rules inside playfolder based on keywords list
- Add support for play occurrence rules inside playfolder based on keywords list or rating values
- Add a path filename tooltip for each media which are outside the validity period when they are listed in timeslot preview
- Change: embeds Playzilla 4.13.10
- Change: remove support for `TLS 1.0` and `TLS 1.1`
- Change: a keyword value can now support the ```{$custom:<variable_name>}``` or ```{deviceInfo:<>}``` formats
- Change: validity period metadata without validity end date is now supported
- Change: the keyword max size is 260 characters instead of 50
- Change: a tooltip is displayed when the keyword value cannot be seen entirely
- Change: playout names are now sorted in alphabetic order as soon as they are created
- Change: labels for variables values are now mandatory for `json` variable and `calendar` variable types
- Change: validity period metadata without validity end date is now supported
- Fix: in some case, is was not possible to add anymore a new keyword value for a media except by pressing F5 key
- Fix; in some case, the device could not be detected by a frontal recently deleted then re-created
- Fix: in some very rare case, the frontal creation was not successful causing trouble to detect phantom players afterwards
- Fix: in some cases, a message please wait could be displayed forever when trying to publish on a device recently registered on the current domain
- Fix: in some cases, MS-PowerPoint media could not be indexed properly
- Fix: in some cases, PDF media could not be indexed properly
- Fix: in some cases, the unitary preview date and time for the playfolder preview was not properly saved
- Fix: the playfolder preview could not work when a same fallback media name was defined when the directory does not exist and when the directory is empty
- Fix: the ACL was not applied properly after a server reboot

## `2020-02-10` V3.11.11 [download nt_ia64](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia64-setup-3.11.11.exe)
>##### **IMPORTANT**
- This version is supporting the required optimizations to support projects handling more than one thousand devices and more than one hundred domains.
- In case you had to downgrade from `PlugnCast` nt_ia64 (64 bits) to `PlugnCast` nt_ia32 (32 bits), you have to uninstall first the `PlugnCast` nt_ia64 (64 bits) software.
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for playfolder conditioned with `keywords` and/or `rating` values
- Add support for `sound volume` feature in calendar slot behavior for all types of medias except the images
- Add support for `Playzilla` licenses status in the *App licenses* menu of the *Settings* view showing:
    - The number of valid licenses
    - The number of domains on which the licenses are spread
    - A licenses validity recap table with details:
        - Domain name
        - Number of valid licenses
        - Number of invalid licenses
- Add support for displaying a number at the bottom of the timeslot preview screen showing the number of medias which have a validity period changing in the selected day
- Add support for a ```Select the preview time``` button in the timeslot preview screen to simulate the timeslot rendering to a specific time
- Add support for remote file or remote directory with the scheme ```smb://```
- Add support for MS-PowerPoint transitions preview
    - *Subtle* type:
        - Fade, Push, Wipe, Split, Reveal, Cut, Uncover, Cover, Flash
    - *Exciting* type:
        - Dissolve, Clock, Flip, Cube, Box, Zoom
    - *Dynamic content* type:
        - Pan, Ferris Wheel, Rotate, Orbit
    - View the supported transitions in your language [FR](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-os-sma300/transition_FR.jpg) [EN](gekkota-os-sma300/transition_EN.jpg) [DE](gekkota-os-sma300/transition_DE.jpg) [ES](gekkota-os-sma300/transition_ES.jpg)
- Add support for variable picker with variable type filtering in content model form
- Add support for new user preferences to add password constraints (applied to new passwords only)
	- For further information read the PlugnCast user manual
- Add support for `JSON` variable list adding thanks to a `JSON` file
    - For further information read the PlugnCast user manual
- Add support for localized variables values creation with an Excel `CSV` file
	- For further information read the PlugnCast user manual
- Change: the default installation directory for PlugnCast is now `C:\Program Files\Innes Plugncast Server`
- Change: embeds Playzilla 4.12.10
- Change: some icons has been modified in the library for
    - the *Domain repository* root
    - the *Shared repository* root
    - all the media types
- Change: the playouts, domains, devices, variables and files lists are now sorted with the same alphabetic order
- Change: the ```https://<domain>/.plugncast/.appis``` WebDAV directory is now available in a Web browser only when *cms.settings.appis.view* permission is activated
- Change: the ```https://<domain>/.plugncast/.software``` and ```https://<domain>/.plugncast/.setup```WebDAV directories are now available in a Web browser only when *cms.settings.devices.view* permission is activated
- Change: the directory drag'n drop duration has been shortened in the library view
- Change: the file picker dialog box for the playout background image is displaying now only the PNG, GIF, SVG and JPG files
- Change: the layout grid name is now always displayed in a only one line
- Change: when played for a fixed duration upper than its intrinsic duration, a video is not freezing anymore on the last frame until the fix duration expires
- Change: the default ```innes.webserver.httpd.max-request-size``` system preference is now 4 MB
- Change: an XQuery error *index uniqueness violation* is now returned when trying to add variables with a script containing UUID doubloons
- Change: the URI form is not opened by default now when creating an URI from an URI model
- Change: add a UUID doubloons removal function executed at `PlugnCast Server` start-up for the metadata database to avoid the error message *fatal error: error when fetching fonts metadata*
- Change: add support in the model forms for
    - selecting a variable name with a dialog box
    - selecting a time slot name with a dialog box
    - selecting a font name with a dialog box
- Change: remove the support for *Model coverage* value display in the model instance edition panel
- Fix: in some case, a message *Please wait* could be displayed infinitely when making a directory drag'n drop or a directory deletion
- Fix: the date picker was not translated into German language
- Fix: it was required to associate a domain to *Playzilla* 4.XX.YY App even when no *Gekkota 4* device was registered
- Fix: all the metadata of a HTML file was removed as soon as the HTML content was modified
- Fix: in some cases, the manifest was keeping displayed unexpected missing files errors for playlists medias even when the files contained in the playlist were well present
- Fix: an error code HTTP 500 could be returned when copy-pasting a non-empty folder in another directory
- Fix: an error code HTTP 500 could be returned when trying to add metadata for some .mp4, .mov, .mp3 or .m4a containers
- Fix: an error code HTTP 404 could be returned when entering an URI name containing a ```\``` character
- Fix: the value ```{$custom:<varname>}``` was not properly pasted in the content model form input after a variable drag'n drop
- Fix: a media could be configured both valid and invalid for a same day
- Fix: it was not possible to remove the first validity timeslot occurrence of a media
- Fix: in some rare cases, it was not possible anymore to edit a content model form (*Edit* button greyed)
- Fix: sometimes it was not possible to go in the library view without going in another view before
- Fix: a message *Please wait* could be displayed infinitely when importing large size file
- Fix: a message *Please wait* could be displayed infinitely when adding some specific certificates
- Fix: a message *Please wait* could be displayed infinitely when creating an URI
- Fix: a message *Please wait* could be displayed infinitely when refreshing the variable values of a variable name by refreshing the domain
- Fix: it was not possible to register a device with its right hostname when its hostname was containing a dot
- Fix: in some cases, it was not possible to drag a file in the URI input
- Fix: sometimes, the red stamp was not removed properly in the manifest after having added back the missing font
- Fix: in some cases, the *plugncast_server* Windows service could not start after a MS-Windows computer reboot
- Fix: a user disconnection was done when importing large size files taking more than 30 minutes
- Fix: the server could reboot after a directory drag'n drop
- Fix: the server could reboot when moving medias in the *Shared repository* (configuration with much domains)
- Fix: in some cases, the variable scrollbar was not displayed and so was not allowing to display some new variables columns
- Fix: the HTML inline metadata was removed from the HTML file when importing then editing an HTML file
- Fix: it was not possible to activate the LDAP server authentication option after it has been inactivated in *Servers* menu
- Fix: in the grid layout screen, it was not possible to increase a *16/9* zone thanks to the top handle when the zone was stuck at the bottom of the grid
- Fix: the ACL for a directory conditioned by a variable value was not propagated to all the directories conditioned by this same variable value
- Fix: in some cases, the variable associated to a device, whose the visibility was conditioned by ACL permissions, could be unassociated after a variable association to a list of devices
- Fix: in some cases, a part of the calendar timeslot tool bar was hidden
- Fix: in some specific cases, the useful preview screen height could be zero pixel
- Fix: it was not possible to move the main vertical splitter when editing a HTML form
- Fix: sometimes the *SlideMaker* zoom cursor could stay displayed
- Fix: in some cases, a directory can appear temporarily twice in the destination directory after having copy-pasted it
- Fix: some characters was wrongly displayed when the file name was containing the ```&#``` string
- Fix: the fonts dependencies coming from the MS-PowerPoint metadata was not properly managed in the manifest
- Fix: some unexpected character could be displayed on the timeslot and in the library when the file name was containing ```&#```
- Fix: a memory leak could be noticed when editing then cancelling a content model form or an HTML file
- Fix: the *Save* pattern was activated when importing then editing a UNIX format file
- Fix: some licenses field was outlined in red even when the license keys and the email address was entered properly
- Fix: it was possible to create a device group per variable with several levels even when only one variable name was available
- Fix: the *Next* button was not displayed when editing a device group by a mouse double click
- Fix: the aspect ratio for portrait calendar preview was 16/9 instead 9/16
- Fix: in some cases, the date picker was not disappearing after cancelling a timeslot edition
- Fix: the text font could be not rendered properly in table objects of PowerPoint media
- Fix: in some cases, the Web browser could not respond after having removed a zone from a layout grid
- Fix: when an URI or a playfolder was edited, the input to enter the path file was shifted just the line below
- Fix: when importing a file in the library, the upper case characters of the filename was transformed in lower case characters

## `2019-04-05` V3.10.51 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.51.exe)
>##### **IMPORTANT**
- For users having installed the version PlugnCast Server 3.10.48 or 3.10.49, it is highly recommended to upgrade your PlugnCast server with the version 3.10.51
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a clean-up function to delete all the past events of the selected playout as soon as this playout contains at least one time slot older than 3 months
- Add support for these new smart monitors:
    - ```Samsung Tizen SSSP 4```
    - ```Samsung Tizen SSSP 5```
    - ```LG WebOS Signage 4.0```
    - ```LG WebOS Signage 4.1```
- Add support for the installation of several content model packs at a time
- Add support for the new mask metadata *Model coverage* which is showing the list of the device middleware supported by the model mask (model version 1.20.X or above):
    - gekkota-3,
    - gekkota-4,
    - lg_webos-3,
    - lg_webos-4,
    - sssp-4,
    - sssp-5
- Add support for the importation of firmware files compressed into a zip archive
- Add support for the inline creation of a new folders, new localized-folders or new files in the *Select a file* screen when needing to pick a resource file inside an HTML5 mask form
- Add support for support's certificate revocation
- Change: a label value is now suggested for any phantom device having the *MAC* or *UUID* identification method
- Change: the file system access time and the license adding/modifying/deleting time has been considerably reduced
- Change: when an URI is inserted in a new playout, if its intrinsic duration is not defined, the default URI duration is set by default to 1 minute instead of 10 seconds previously
- Change: the App `Playzilla 4.11.XX` can be published on Gekkota 3 devices, instead of only the App `Playzilla 3.10.10` previously. When the user preference ```innes.plugncast.cms.targets.digitalsignage.playzilla4-on-gekkota3``` is:
    - ```false```: (default value) `Playzilla 3.10.10` is published on the `Gekkota 3` devices
    - ```true``` : `Playzilla 4.11.10` (or above) is published on the `Gekkota 3` devices
    	- The playout property `Enforce on media with pagination a page progression with a default page duration` is not supported for the MS-PowerPoint medias when using Playzilla 4.11.XX with Gekkota3 devices
- Fix: in some case, the preview of the mask *Facebook* could lead to the unexpected Facebook notification message: *Max. number of HTTP requests reached in the according time range*
- Fix: in some case, the message *Please wait* could be displayed infinitely after having added a new core server license and changed its associated email address
- Fix: in some case, it was not possible to drop a media in the calendar after having flew over an existing calendar event
- Fix: a blank screen could be noticed in some in the edition screen when creating a new model
- Fix: the SlideMaker form could be not displayed after having created a localized variable just before
- Fix: in some case, a message *Please wait* could be displayed infinitely when editing a mask whose the model SWF form has been deleted
- Fix: in some case, the library time slot edition screen could be blank
- Fix: in case many variables, a scrollbar was missing to see all the variables values
- Fix: in case many users, a scrollbar was missing to see all the users values
- Fix: in some case, an error HTTP 400 could be raised after having modified a variable and having refreshed the domain
- Fix: in some cases, a model form could not be edited after having changed the media duration
- Fix: it was possible to manually register twice a same device with a same hostname, same label, same UUID or a same MAC by using the lowercase characters instead of the uppercase characters
- Fix: in some case, the HTML content could be blank
- Fix: in some case, it was not possible to switch device by keeping the same number of license (demo server using a core license supporting max. 5 devices)
- Fix: just after a Web browser refresh, is was not possible to edit a existing text file (.txt, .csv, .css, .js, .json, .html, ...)
- Fix: the server could not stop rebooting as soon as a device is trying to access to the frontal (seen on MS-Windows 2008 server and MS-Windows 7 pro)
- Fix: selecting a variable of type date in the menu *Library > Variables and functions > Date and Time* could lead to a unexpected blank screen on the edition screen

## `2018-07-17` V3.10.47 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.47.exe)
**`Warning`**: Licenses validity detection is now activated since PlugnCast version 3.10.39. Please request to Innes, as soon as possible, and before the evaluation licenses validity ends (```30 days```):

- Your licence key for the main domain of your PlugnCast server
- As many App Playzilla license keys as there are registered devices in your domain

>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for content-models with HTML5 forms as well as SWF forms
- Add support for installation of `Addons` in menu `Setting > Addons`
	- [Content-models packs](http://www.innes.pro/fr/support/index.php?PlugnCast_G3/Content_models_and_uri_models_packs/Content_models_packs)
	- [Uri-models packs](http://www.innes.pro/fr/support/index.php?PlugnCast_G3/Content_models_and_uri_models_packs/Uri_models_packs)
- Add support for a specific content-model or uri-model removing
- Add support for content-models and uri-models filtering
	- per `format`
		- note: the available values are depending on the content-models or uri-models installed, by example:
            - Landscape 16/9
            - Portrait 9/16
            - Horizontal banner
   - per `category`
		- note: the available values are depending on the content-models or uri-models installed, by example:
            - General
            - Signage
            - Education
            - Social network
            - Peripherals
- Fix: in some conditions, after a publication request on several devices, the server was consuming important memory making that the publication could stay in a pending state
- Fix: a scroll bar was missing to see all the users when adding a new user
- Fix: in the screen allowing to associate several domains to an App version, it was not possible to select all the wanted domains
- Fix: a publication error could be raised when the playout was containing PDF medias using font with non-ASCII characters
- Fix: in the library, when previewing a media using a variable, the preview content could be the wrong one after having changed the variable previsualization value just before
- Fix: when having many domains, it was not possible sometimes to associate all the wanted domains name to an App
- Fix: in some case, a message *please wait* could be displayed infinitely when changing the working domain several times
- Fix: please wait message was not displayed right now when removing content models
- Fix: blank screen could be noticed when using MS-Edge Web browser
- Fix: when editing a model, the file picker could not work when using non-ASCII characters in path filename

## `2018-05-23` V3.10.45 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.45.exe)
**`Warning`**: Licenses validity detection is now activated since PlugnCast version 3.10.39. Please request to Innes, as soon as possible, and before the evaluation license validity end (```30 days```):

- Your licence key for the main domain of your PlugnCast server
- As many App Playzilla license keys as there are registered devices in your domain

>##### **IMPORTANT**
- When using PlugnCast 3.10.45 (or above), it is advised to install Playzilla 4.10.18 (or above) in PlugnCast because most of the tests coverage has been done on it. Playzilla 4.10.18 is available here: [Playzilla](http://www.innes.pro/fr/support/index.php?PlugnCast_G3/Playzilla)
- Refer to the PlugnCast manual for more information about its installation
>##### **MODELS PACKAGE TO INSTALL**
- 3.53 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Spanish language
- Add support for *Gekkota4* middleware selection for all Innes devices except LCAN device and EEEBOX device
- Add support for Innes device patch installation
- Add support for new options in Playouts > Property
    - `image display default duration`
        - default values:
            - 10 sec
            - valid for each image whose *duration* metadata is not defined
    - `URI display default duration`
        - default values:
            - 10 sec
            - valid for each image whose *duration* metadata is not defined
    - `enforce on media with pagination a page progression with a default page duration`
        - default values:
            - duration per page: 5 sec
            - activated: yes
                - allow to set a duration per page each time the duration per page is not defined
                - valid for media with pagination whose page progression is `Manual` or `Manual and automatic`
    - valid for devices supporting Playzilla 4 only
- Add support for preview of
    - MS-PowerPoint medias (.pptx, .ppsx)
    - Playlists
        - with possibility to simulate the date of the preview
    - Playfolders
        - with possibility to simulate the date of the preview
    - URIs
- Add support for new button to collapse the preview panel in library view
- Add support for new media metadata display. Summary of them:
    - `Name`
    - `Size`
    - `Modified`
    - `Indexed`
    - `Model version`
    - `Protected`
    - `Resolution`
    - `Ratio`
    - `Frame rate`
    - `Model ID`
    - `Model version `
    - `Duration`
    - `Page count`
    - `Page progression` for PDF and MS-PowerPoint medias
        - `Manual`
        - `Automatic with common duration` (editable)
        - `Automatic with differentiated duration` (mode automatically detected, which cannot be selected by the user)
        - `Manual and automatic` (mode automatically detected, which cannot be selected by the user)
    - `Autoloop`
        - `yes`
            -  corresponding to the option *progress continuously until ESCAPE* in MS-PowerPoint editor
            - value taken into account by Gekkota RT device only
            - when `Autoloop` is activated, the duration of the media is set to `undefined`
        - `no`
    - some of them may not be available for all medias types
- Add support for optional medias metadata adding
    - `duration`
        - default: 5 sec
    - `title`
        - for universal language and any other languages
    - `description`
        - for universal language and any other languages
    - `keywords`
        - free text (50 characters max. per keyword)
    - `rating`
        - from 1 to 5 stars
    - `validity periods`
         - the validity periods are taken into account
                - in calendar event preview
                - by the device, once the publication has been done
    - `linked files`
    - `base URI`
    - some of them may be not available for some medias types
    - the metadata adding could be not supported for these medias (a message *error HTTP 500* or *error HTTP 413* is displayed):
        - systematically for
            - the following video and audio containers: .wma, .wmv, .mpeg, .mpg, .avi, .vob, .mkv, .webm, .asf, .ts, .ps
            - the following MS-PowerPoint medias: .ppt, .pps
        - sometimes with some video and audio containers: .mp3, .mp4, .mov, .m4v, .m2v
- Change: when inserted a calendar event, the default media behaviour is *play once (1X)* instead of *play once (1X) and max. 5 minutes*
- Change: the validity periods of the media are taken into account in calendar preview
     - the date/time used in calendar event preview is the start date/time of the selected calendar event
- Change: the default App version used for new PlugnCast installation is Playzilla 4.10.18
- Change: allow to upload Gekkota middlewares (.frm and .exe) whose filename is containing *setup*, *patch* or *uninstall*
- Change: PDF media or MS-PowerPoint media whose duration per page was 00:00:00 has now a `Page progression` : `Manual` metadata
- Change: alphabetical sorting algorithm when several files are sharing the same prefix name. After the prefix, the files are sorted now by number
- Change: add possibility to add text file with different file extensions instead of having 6 items (json, html, xml, js, csv, tsv) to create a file of each type
      - supported extensions: .css, .csv, .htm, .html, .ics, .js, .json, .md, .mdp, .sdp, .srt, .tsv, .txt, .vtt, .xml
- Change: the *canvas* option has been removed in layout view
- Change: remove possibility to select these types of server URL generated automatically
    - `http://<COMPUTER_NAME>:8080/.frontals/.webdav/demo.plugncast.com/`
    - `https://<COMPUTER_NAME>:8080/.frontals/.webdav/demo.plugncast.com/`
- Fix: an unexpected server reboot could occur after having saved modifications of a widget media previously opened in another editor than PlugnCast
- Fix: it was not possible to create more than 21 domains
- Fix: publication error was raised for remote files in manifest view when its URL was containing a port number (ex: `http://192.168.5.5:8585/`)
- Fix: it was not possible to remove a top banner in layout tab
- Fix: adding some linked medias to a HTML media could empty the HTML file content
- Fix: a media name could be played only once even if inserted several times in a playlist
- Fix: in some case, it was not possible to scroll the playlist until the end
- Fix: sometimes, the background image of a SlideMaker media was not displayed
- Fix: server could reboot when installing 128 licenses at once
- Fix: sometimes, after editing SlideMaker slides, the drag and drop of the application is broken
- Fix: some buttons of the PlugnCast interface was not working when using Mozilla FireFox browser on MAC OS X stations
- Fix: the `ratio` metadata could display a wrong value for the HTML5 medias from content model pack. Now, when it is available, the `ratio` metadata value can be
	- `Horizontal banner`
	- `Landscape 16/9`
	- `Landscape 4/3`
	- `Portrait 9/16`
	- `Portrait 3/4`
- Fix: when logged as an account profile other than `Super administrator`, the MS-PowerPoint medias preview was leading to PlugnCast serveur log out

## `2017-11-08` V3.10.42 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.42.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: PDF duration property was no longer displayed

## `2017-10-27` V3.10.41 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.41.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add playzilla-4.10.17 (default App for new installations)
- Add support for .srt resource file (in library and in manifest)
- Add support for multiple lines in media property description
- Add support for recent licenses PSN pack
    - PlugnCast Pack 5 tokens
    - PlugnCast Pack 5 App Playzilla
- Change: display the grid UUID when renaming a grid
- Change:
    - When entering standby mode
        - the device video output is stopped with VESA DPMS protocol (if the protocol is activated on the device)
        - the device audio output is muted
        - the monitor(s) are set in standby with AV Command Power-mode (DDC-CI, RS232, LAN) (if AV Command activated on the device)
        - the monitor(s) volume is muted with AV Command Mute (DDC-CI, RS232, LAN) (if AV Command activated on the device)
    - When exiting from standby mode
        - the device video output is restored with VESA DPMS protocol (if the protocol is activated on the device)
        - the device audio output is unmuted
        - the monitor(s) exit from standby with AV Command Power-mode (DDC-CI, RS232, LAN) (if AV Command activated on the device)
        - the monitor(s) volume is unmuted with AV Command Mute (DDC-CI, RS232, LAN) (if AV Command activated on the device)
- Change: default media behaviour is ```1 time, max. 5 minutes``` for .uri, .playfolder, .xspf, .pdf medias, .swf medias, .maff, audio & video medias, MS-PowerPoint medias, .wgt
- Change: prevent to upload a PlugnCast version nt_ia32 (*intergiciel and scripts*)
- Change: remove the possibility to limit the maximal number of devices per domain
- Change: by default, do not activate OK button when no ACL value has been modified
- Change: firmware files are now sorted in alphabetic order
- Fix: in some rare case, the player could enter in standby mode or not exit from standby mode the right day
- Fix: error *please wait* message could be displayed infinitely in the manifest of a playout containing a scrolling text (after having modified its path containing localized folder)
- Fix: error *please wait* message could be displayed infinitely when creating a custom mask *orientation kiosk*
- Fix: default visualization value modification was not properly taken into account in scrolling text preview (required content model pack 3.52)
- Fix: it was not possible sometime to preview a scrolling text in calendar event whereas the playback was OK once published on the device
- Fix: sometimes the linked medias was displayed with a wrong hierarchy
- Fix: HTTP error 500 could occur when modifying MS-PowerPoint properties (duration per page)
- Fix: in some case, it was not possible anymore to select an existing floating zone in the layout screen
- Fix: a message *please wait* could be displayed infinitely when modifying a variable name
- Fix: it was not possible sometimes to select one of the URL suggested in local except by clicking first outside the list
- Fix: confidential password was displayed by default when changing login
- Fix: when exception was wrongly used, sometimes it was possible to validate a calendar event planning with zero occurrence
- Fix: it was possible to select a directory as background image
- Fix: it was not possible to remove a font from the manifest whereas it had been properly added with the same way in the manifest
- Fix: this publication error message could appear sometimes *appIdByTargetId is not an object*
- Fix: calendar preview screen was not properly resized when adjusting screen resolution
- Fix: unexpected scrolling bar could be noticed when select/unselecting a device (target view) in case having a playout whose name is very long
- Fix: an overlap between file name and file size could be noticed when uploading some file in library
- Fix: *Task* column content could disappear (Target view)
- Fix: blank screen could be displayed in *Settings* menu with version Mozilla Firefox 43.0
- Fix: it was not possible to add an image in SlideMaker when the timeline index had reached the end
- Fix: sometimes the video preview windows was not available
- Fix: ACL *cms.targets.digitalsignage.publication.playout.edit* was not properly propagated in some case
- Fix: in some case device *Registered* status icon could be replaced by three dots in domain/ frontal view
- Fix: in some case, list of devices of a group by variable was not properly updated after its modification
- Fix: an error 404 was raised when adding a file in a child folder of localized folder (when its name has the previous one of another localized folder just renamed before)
- Fix: Change standby task column name ```Display off``` to ```Standby```
- Fix: some resource added in a calendar event could lead to the message *content temporarily unavailable*
- Fix: connected in localhost, the frontal URL could be empty after having changed your computer network configuration (http://localhost)

## `2017-08-31` V3.10.40 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.40.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: z-Index for floating zones was not working
- Fix: Web browser refresh (*F5* key) was required to be able to continue to change layout after a drag'n drop of a floating zone over another one

## `2017-07-05` V3.10.39 [download nt_ia32](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast_server-nt_ia32-setup-3.10.39.exe)
>##### **IMPORTANT**
- Licenses validity detection is now activated in PlugnCast version 3.10.39 (and above)
>##### **MODELS PACKAGE TO INSTALL**
- 3.47 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of ```LG WebOS Signage 3.0``` and ```LG WebOS Signage 3.2``` smart monitors
	- Publication
	- Firmware upgrade
	- Refer to the PlugnCast user manual 3.10.39 to install this kind of device (```Installation and settings > LG WebOS settings```)
- Add support for App Playzilla installation. These default versions are already installed
	- App Playzilla 3.10.10 (for DMB300, DMC200, SMA300, SMT210 ...)
	- App Playzilla 4.10.16 (for DMB400) (if no another version is not installed)
		- for this version it is required to link one of your domain to this App
		- Afterwards, the next App versions (available on support site) will be upgraded manually by the user
- Add support for licenses validity detection (the evaluation licence is 30 days by default for PlugnCast on-premises)
	- One server license key is required per domain
	- As many App Playzilla application license keys as registered devices exist in the domain
	- Refer to the PlugnCast user manual 3.10.39 for more information
- Add support for changing the owner for several devices at a time
- Add support for files extensions
	- .sdp (RTP network configuration files)
	- .ismc (Smooth Streaming manifest files)
	- .mdp (Dash MPEG manifest files)
- Add tooltip to display published App name and App version (target/publication/device/playout)
- Add support for video multi-decode compatibility for DMB400 device (Gekkota 4)
- Change: in case using Gekkota G4 devices (or ```LG WebOS Signage X.Y``` devices), it is required to associate an App Playzilla version to your domain
- Change: the maximal number of device per domain is not effective anymore
- Change: add *Model Name* field when registering a new device
	- DMB300
	- DMB400
	- DMC200
	- DMD215
	- DME204
	- LG SOC
	- MS-Windows PC
	- SMA300
	- SMH300
	- SMA200
	- SMP200
	- SMT210
	- note: the user can force a model name (and replace the one fetched through the device status)
- Change *Model name* value NT_IA32 to *MS-Windows PC*
- Change: add *variable* property information for localized folder and its immediate sub-folder
- Change: add possibility to change ACL for several device at a time
- Change: split *middleware* column into 2 columns: *middleware* and *version*
- Change: add tooltip for the columns "name", "sn" et "model" (target screen)
- Change: when variable value can not be resolved when playing URI, the variable is not taken into account
- Change: embeds SlideMaker V1.10.13
- Change: zIndex value is now 0 and not editable for all the zones except floating zone
- Change: when inserting in manistest a playfolder using a variable date, do not display in manifest the content of date folder
- Change: new icon for the menus:
	- *settings/version*, and
	- *settings/legal notices*
- Fix: playfolder with localized variable could not work properly (slash character ```/``` could miss sometimes in file path or directory path or preview)
- Fix: language value was not taken into account sometimes for some medias (HTML, Widget and MAFF)
- Fix: the icon *Mode system* was displayed sometimes after a publication
- Fix: in some case, registering check box for a phantom device could be already ticked
- Fix: in some case, the calendar event recurrence removal was not taken into account
- Fix: an obsolete file was not removed properly when playing a playfolder of a localized folder whose path is containing a variable date
- Fix: publication error message (telling that there is no playout affected to this device) was raised on a device recently unregistered then registered
- Fix: in some case, users of wrong domains could be present when modifying a user group
- Fix: in some case, renaming a resource using upper case instead lower case could lead to downloading issue after the publication has succeed
- Fix: publication error message *An error occurred while initialization of root directories* was raised when using a domain based on *localhost* and *ipv6*
- Fix: the duration property of some flash media could be wrong
- Fix: in some case, duration property could be wrong for PDF and MS-PowerPoint media (duration = *infinite*)
- Fix: the server could reboot when importing a specific MS-PowerPoint media
- Fix: calendar preview was allowed when cms.playouts.channels.calendars.events.sequences.view was denied
- Fix: fonts embedded in medias SlideMaker and HTML medias was not rendered properly (fixed in SlideMaker 1.10.13)
- Fix: screen width could increase dynamically when entering new characters in the remote filename or remote folder in the manifest view
- Fix: propagating the ACL authorization for the parent directory was not working
- Fix: file importation could be stuck when importing firmware with a not proper extension (middlewares and scripts)
- Fix: Gekkota RT nt5-ia32 (for MS-Windows XP or MS-Windows XP Embedded) firmware version could not be updated by the PlugnCast G3
- Fix: device status (donwload status, playout names) could not be fetched properly in case using the Gekkota middleware V3.12.38
>##### **USER MANUAL**
- User manual 3.10.39 (001E/FR) [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast-manual-3.10.39-001E_fr.pdf)
- User manual 3.10.39 (001E/DE) [download](https://github.com/Qeedji/archives/blob/master/downloads/plugncast-g3/plugncast-manual-3.10.39-001E_de.pdf)

## `2017-03-21` V3.10.38
>##### **IMPORTANT**
- In case using DMB400 devices, do upgrade first the PlugnCast server version to 3.10.38 before upgrading Gekkota to the latest version (ex: 4.10.10 beta58 and above)
- After having chosen your language in PlugnCast, set the language of your devices in the according language as well (WebUI/Regional) to raise the device status values in the appropriate language
>##### **MODELS PACKAGE TO INSTALL**
- 3.46 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of language
	- *German*
- Change: embeds Playzilla 4.10.14
- Change icon for
	- registered device status
	- target status
- Change: the default display time per image is now 5 seconds minimum (it applies to Gekkota4 devices)
- Change: add possibility to not display the error message *content temporarily unavailable* when the media is not supported
- Fix: security issue regarding *DirectoryTraversal* attack types
- Fix: firmware update was not working when Gekkota delivery server and Gekkota installation server was different
- Fix: it was not possible to wake-up device screen in case the playout does not contain any standby/wake-up task
- Fix: prevent the creation of resources with the same name across multiple connected user accounts
- Fix: sometimes the language "preferred language of the Web browser" was not loaded properly when changing user
- Fix: error HTTP 500 could be raised when creating a directory and when the absolute directory path name length is between 247 and 259 characters
- Fix: error HTTP 500 could be raised when putting a file and when the absolute file path name length is between 236 characters
- Fix: sometimes recurrence change could not be taken into account after having refreshed the Web browser
- Fix: the background content is not played when a playfolder pointing on a not existing directory (no fall back) is played alone in a time slot
- Fix: the medias of the main loop could be not played when a playfolder alone in another zone pointing on a not existing directory (no fall back) was played
- Fix: playback is stuck when playing a playfolder pointing on a directory having only one media, and playfolder behaviour is *play only one media*
- Fix: support of icon for medias type .asf
- Fix: publication could fail when renaming a playfolder path by adding the character *#*
- Fix: preview could play the channel default media in some case
- Fix: error message (404) could be raised in preview when playing playfolder with recursivity
- Fix: AVCmd was not managed properly when using device standby/wake up

## `2017-02-17` V3.10.37
>##### **IMPORTANT**
- In case using DMB400 devices, do upgrade first the PlugnCast server version to 3.10.37 before upgrading Gekkota to the latest version (ex: 4.10.10 beta58 and above)
- When using PlugnCast in English, set the language of your devices in English as well (WebUI/Regional) to raise the device status values in English
>##### **MODELS PACKAGE TO INSTALL**
- 3.43 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of language modification (associated to a user)
	- *English*
	- *French*
	- *preferred language of the Web browser* (in the order of the Web browser languages list). The language is chosen in the list when the language is matching first one of the two languages
- Add support of time slot preview
    - due to security reasons implemented in some Web site, most of Web page cannot be previewed inside PlugnCast domain because framing is not supported. Instead a blank page is displayed while the media duration (when the URI of Web page is played inside the main zone, a hyperlink is suggested at the bottom of the screen to preview it)
    - an URI Web page whose scheme is http can only be previewed inside PlugnCast domain http (although it is not recommended to use PlugnCast in http). If not, an error message is raised : *This web page cannot be previewed by you browser. You are trying to preview a not secure http web page but your PlugnCast connection is https*
	- the flash model instance cannot be previewed on Google Chrome Web browser
- Change: embeds App Playzilla 4.10.13
- Change: PDF and URI default behaviour duration is set to 10 seconds
- Fix: it was not possible to drag n drop some specific directories into others specific directories
- Fix: slideMaker could not be previewed when its file name was containing special character (non ASCII character)
- Fix: in case the *.device-status* directory was removed, it wasn't restored automatically by the server after a server restart
- Fix: increase reactivity to detect new devices in a frontal
- Fix: *play during at most* was not working properly for Gekkota 4 (URI playfolder behaviour)
- Fix: error message HTTP 504 was not correct when pressing *reload the alias from the LDAP directory* button while the server LDAP directory is not available
- Fix: it was not possible to affect again a domain name to a LDAP user which has lost all its domains
- Fix: message please wait could be displayed forever when editing twice the ACL for a unregistered device
- Fix: playfolder with localized folder did not work properly (due to double slash character at the end of URI)

## `2017-01-27` V3.10.36
>##### **IMPORTANT**
- In case using DMB400 devices, do upgrade first the PlugnCast server version to 3.10.36 before upgrading Gekkota to the latest version (ex: 4.10.10 beta44 and above)
- For any reason, in case you had to downgrade PlugnCast G3 to version V3.10.34 (or below) and DMB400 players are used, it is recommended to downgrade first your device DMB400 to Gekkota V4.10.10 beta43 (or below) and remove all DMB400 devices from your domain, remove DMB400 device status file from PlugnCast file system (default *C:\Users\Public\Documents\Innes Plugncast Server\.frontals\.webdav\demo.plugncast.com\.device-status*). Ensure also to not use Mozilla Firefox *ESR* Web browser not compatible with version 3.10.34 (and below)
>##### **MODELS PACKAGE TO INSTALL**
- 3.42 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: embeds SlideMaker (V1.10.12) compliant with Smart TV WebOS (ex: LG)
	- It is required to create a new slide-show SlideMaker V1.10.12 so that it can work properly on WebOS target
- Fix: reboot task was not working properly for Gekkota 3 devices
- Fix: some URI of Web page could return unexpected error message "This content is not compatible with this platform (or device)" (now HTTP error is displayed inside the Firefox Web page)
- Fix: the base URI was not taken into account with some MAFF medias of the shared repository (consequently the preview could not work)
- Fix: playlist or playfolder could be not rendered properly in channel audio when the same playlist (same name) was present in both audio channel and visual channel

## `2017-01-23` V3.10.35
>##### **IMPORTANT**
- It is not recommended to use this version with Gekkota 3 devices because at this time, the task to program device reboot is not working properly. In this case, do prefer use 3.10.33
- In case using DMB400 devices, do upgrade first the PlugnCast server version to 3.10.35 before upgrading Gekkota to the latest version (ex: 4.10.10 beta44 and above)
- For any reason, in case you had to downgrade PlugnCast G3 to version V3.10.34 (or below) and DMB400 players are used, it is recommended to downgrade first your device DMB400 to Gekkota V4.10.10 beta43 (or below) and remove all DMB400 devices from your domain, remove DMB400 device status file from PlugnCast file system (default ```C:\Users\Public\Documents\Innes Plugncast Server\.frontals\.webdav\demo.plugncast.com\.device-status```). Ensure also to not Mozilla Firefox *ESR* Web browser not compatible with version 3.10.34 (and below)
>##### **MODELS PACKAGE TO INSTALL**
- 3.42 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: upgrade publication to Playzilla 4.10.12 (beta4)
- Change: support new namespace *xmlns="ns.innes.device-status"* in XML status of device DMB400 Gekkota V4.10.10 beta44 (and above)
- Fix: it was not possible to publish the playout created by default named *Playout* on DMB400 player
- Fix: calendar screen and playout screen was not displayed properly with a specific version of the Web browser Mozilla Firefox (Version ESR 45.4.0)
- Fix: when a media becomes unavailable, a message content temporarily unavailable could be raised and the medias sequence could be stuck afterwards (condition: only one media inserted in the main zone)
- Fix: empty zone could lead to an unexpected sequence behaviour
- Fix: background image could be not displayed when playing a transparent media
- Fix: in some case, default position for floating zone could be wrongly initialized making the display of the zone shifted (when transitions between medias are activated)
- Fix: default audio content could not work when default visual content was not running
- Fix:  playout download status value was displayed to *100%* too early (immediately after having downloaded few data Kbytes) and not after the whole playout downloading was completed (DMB400)
- Change: raise an error when trying to save a URI path file which is not containing a filename at the end
- Change: raise an error when trying to save a file whose name is empty

## `2017-01-06` V3.10.34
>##### **IMPORTANT**
- It is not recommended to use this version with Gekkota 3 devices because at this time, the task to program device reboot is not working properly. In this case, do prefer use 3.10.33
- Not compatible with Firefox ESR
- In case using DMB400, the PlugnCast V3.10.34 (and below) is not compatible with Gekkota 4.10.10 beta44 (and above)
- In case new installation, you have to rename the default playout (named "Playout by default") to anything you want to be able to publish it
- The device type ```Gekkota 3``` or ```Gekkota 4``` is set for a new device when detected  automatically by your PlugnCast server frontal. Do not switch the device type afterwards.
- When a device is created manually, pay attention to select the proper device type. At this time, choose ```Gekkota 4``` for DMB400 devices, ```Gekkota 3``` for all the other Innes devices
>##### **MODELS PACKAGE TO INSTALL**
- 3.40 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Changes: embeds Playzilla 4.10.10 beta3
- Add support of Gekkota 4 devices (for example device DMB400 with software version V4.10.XX)
>##### **COMPATIBILITIES**
- Gekkota OS V3.12.20 (or above)
- Gekkota OS V4.10.10 beta43 (or below)
- Gekkota RT V3.12.22 (or above)
- Mozilla Firefox or Google Chrome Web browser (cookies must be accepted on Web browser)

## `2016-11-30` V3.10.33
>##### **IMPORTANT**
- Once this version is installed, in case facing issue to connect to the PlugnCast WebUI, that means that your PlugnCast domain-repository is containing a localized folder based on variable value which is containing non ASCII character (ex: accentuated character). To solve the issue
	- Please contact support so that they can make the modification below or
	- Do it yourself:
		- Stop PlugnCast
		- Edit the file ```variable-folders.js``` of PlugnCast file system (default ```C:\Users\Public\Documents\Innes Plugncast Server\.profile\preferences```)
		- Convert it into UTF-8 format
			- ex: with Notepad++,
				- ```Encodage``` then ```Convertir en UTF-8 (Sans BOM)```
		- Save the file
		- Start PlugnCast
>##### **MODELS PACKAGE TO INSTALL**
- 3.39 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of these new PlugnCast inline commands:
	- ```plugncast.exe --help```
	- ```plugncast.exe -k resetroles```
	- ```plugncast.exe -k resetacl```
- Add ACL for the timeslots:
	- *Todo* and
	- *Calendrier journalier*
- Add support of resource owner modification
	- Button *Propriétaire* for the resource type
		- Frontals
		- Devices
		- Files
		- Directories
		- Calendars
- Add support of a new button *Copier l'URL et l'identifiant dans le press papier* to copy your frontal configuration (URL + id + password) (in order to paste it by example in device WebUI/server)
- Add support of ratio *16/9 (3840x2160)* (4K resolution) as a layer resolution
- Add support of permission edition by double-clic in ACL pop-up
- Add refresh button for the fonts library
- Add error message in case the indexation of an imported file has failed: *L'indexation de ce fichier n'est pas complète. Appuyer sur l'icône rafraîchir pour une mise à jour*
- Add support of WebVTT file (.vtt) (importation, edition, and adding as resource in a playout manifest)
- Add *sweep* button in ACL pop-up to clean filter string when adding a new user, users group or role
- Add support of several items selection (user, user groups, and role) (using CTRL key or SHIFT key) when changing ACL for a resource (does not mean it is possible to change the permissions for all these items all at once)
- Add a new item *Tous les appareils sélectionnés* in the global publish button list
- Add support of pathfile name pasting when a playfolder is edited
- Add last device connection (date&time) column into frontal settings screen
- Add option *Propager l’autorisation de voir les dossiers parents* (default activated in the ACL pop-up) to propagate recursively in the parent directories the *folder view* permission when some specific permissions are activated for a subfolder
- Add: ACL permission propagation of a given subfolder name of a localized folder to all the subfolders with the same name (folder name generated by the same variable value):
	- In the example below, in case some ACL permission is applied to *$()Dir1/DirVarName2*, the permission is also automatically applied to *$()Dir2/DirVarName2*
		- for example
			- $()Dir1               (based on the variable "Var")
				- DirVarName1
				- DirVarName2 (under ACL)
			- $()Dir2 				(based on the variable "Var")
				- DirVarName1
				- DirVarName2 (under ACL)
- Change: add flexibility in playfolder & URI to enter free text (like URL of Web page)
- Change: minimal number of character for frontal identifiant is now 3 characters
- Change: increase application loading timeout to support low bandwidth speed connections
- Change: raise an error message when an external frontal is created with a password but without username
- Change *sweep* icon by *delete* icon (target/variable)
- Change: rename default permission value name *Selon le rôle* by the value name *Héritier*
- Change: remove permission *identifiant* column from ACL pop-up when changing permissions
- Change the message when facing publication issue with URI/playfolder/playlist using variables for all your players when these variable has not been all associated to the selected player(s): *Les playouts de certains appareils utilisent des variables dont la valeur n'a pas été associée. Vérifier l'association des valeurs des variables pour les appareils suivants*. In this case, find out the player having this message *Le playout utilise des variables dont la valeur n'a été associée à aucun appareil* and resolve the issue by affecting to it a variable value
- Change: when connecting to PlugnCast server, the last global publish button selection is selected
- Change: global publish button is inactivated when entering in any edition mode
- Change: display *inconnu* keyword for device player name in target/publication/device/playout screen when the CMS configured for this player is different of PlugnCast G3
- Change: display the file path of sequence item as a tooltip when editing a calendar event sequence
- Change: support only one ACL button for the playouts whatever the channel type
- Change: all extensions in caps are transformed into lower case to avoid unexpected issue on media behaviour
- Change: it is not possible anymore to remove audio zone from audio channel
- Change: when an audio media is dropped in a calendar zone, the audio zone is automatically activated and selected to simplify the drag n drop
- Change: buttons organization in library (ACL, owner)
- Change: default timeslot *Todo* is now *6h00*, *every days*
- Change: default timeslot *Calendrier journalier* is now *20h00 to 7h00*, *every days*
- Change: remove *Durée initiale* field from media behaviour screen for URI, audio, video and flash media
- Change: remove device ACL rights when the device is removed from the frontal
- Change ACL dependencies when changing specific ACL permissions
- Change: when connected with URL localhost, in case the network interface chosen for the frontal is disappearing (for any system modification), the default one becomes the first one of the list of the interface proposed (frontal/propriety)
- Change information message *Attention, le répertoire n'est pas vide. Etes-vous sûr de vouloir le supprimer?* when removing not empty directory
- Fix: some unexpected conflicts could occur when there was zero minut between both calendar events
- Fix: media whose name was containing special characters could raise a download error (PlugnCast G3 Ubuntu)
- Fix: media indexation could not work when importing a media in the library (when the directory had been renamed just before) leading to indexation timeout expiration (PlugnCast G3 Ubuntu)
- Fix: support of openldap (PlugnCast G3 Ubuntu)
- Fix: ACL information message when dropping a directory into another directory (and ACL permission denied)
- Fix: copy/paste in the library could not work with *Ctrl + C*, *Ctrl + V* when *C* key (or *V* key) was pressed before *Ctrl* key
- Fix: user could be not disconnected automatically from PlugnCast server after the timeout expired while the Windows session is locked (Windows + *L*)
- Fix: in some case, all the files of a directory could disappear visually after a file drag'n drop (closed directory)
- Fix: when model form was copied manually in shared repository (example for PlugnCast W32 default directory for shared repository ```C:\Users\Public\Documents\Innes Plugncast Server\.shared\.repositories\<id>\.models\.medias```), 2 models of each could be seen in model repository. In case the model form of shared repository was chosen in the model repository, it was possible to create a model instance, but it was not possible to edit it afterwards
- Fix: file copy-paste in a same directory was not working
- Fix: in some case, downloading status tooltip could miss for some players
- Fix: in some case, renaming a media could not work (F5 could be required to solve the issue)
- Fix: the creation of a frontal built-in immediately after having deleted the previous one could not work except if the server is restarted
- Fix: a device could be still present in target view while the device has been removed from the frontal
- Fix: *frontal adding* button could not be active sometimes (when the last build-in frontal creation has been cancelled)
- Fix: remove inconsistent information message *Les permissions ne seront prises en compte qu'au moment de l'enregistrement de la configuration du domaine* when editing ACL for a device just registered
- Fix: delete the audio zone from layout when an playout type audio/video is transformed into playout type video
- Fix: user could be stuck in ACL interface after the Plugncast windows is resized
- Fix: media of other zone (floating zone, banner zone) could not be played properly when the main zone was containing no media (only one grid)
- Fix: (rare) publication error (message: *get response code 0 and 80520008 when trying to make directory*) with some playouts containing specific medias (case sensitivity issue)
- Fix: LDAP root containing a space character (ex: *dc=innes, dc=intranet*) was not taken into account properly making fail LDAP browsing (importing user, reloading LDAP directory alias)
- Fix: the button *save* was not present when the same playout is dropped again for a player
- Fix button *Quit and save* was not present when user group was being created and finally the user was clicking outside the user group creation screen
- Fix: a user could inactivate some permissions for its own group
- Fix: an URI could be played infinitely even its behaviour is *fix duration* (if the behaviour has been set previously to *infinitely*)
- Fix: video duration could be wrongly displayed (video preview) for video whose size is big (7GB)
- Fix: navigating in variable screen could lead to *Please wait* message displayed infinitely
- Fix: in some case, *Gio* (size measurement unit) was not appear in target/system/device *stockage* column value (used space/remaining space)
- Fix: create ACL for a frontal of a new domain not yet saved could lead to an unexpected error
- Fix: after having started to add a second external frontal, immediately deleted, clicking on an existing frontal was not displaying properly the properties of the frontal
- Fix: restore the hyperlink *Ouvrir le média* for MS-PowerPoint medias
- Fix: in some case, when clicking on an empty device group, the message *Aucun appareil sélectionné. Sélectionnez un ou plusieurs appareil(s) dans l'onglet* was not displayed
- Fix: possibility to import (and overwrite) a file whose name is already exist in the directory
- Fix: background pattern was missing when editing a layout
- Fix: when inserting a media in a recurring meeting (ex: 2th day), the media could be not copied for the whole days of the recurrence
- Fix: when pressing the button *supprimer les plages horaires passées*, an event could remain not deleted properly in case the user had the focus on this event
- Fix: a media could be played infinitely when chosen behaviour was *n* times (*n* is empty)
- Fix: playout drag and drop could failed sometimes when a new playout was affected the whole player list
- Fix: a user could not see a device renamed by another user
- Fix: is was not possible to empty some fields value of the model *MeetingRoom (Mono)*:
	- *A partir de*,
	- *Organisateur*,
	- *Participant(s)*
- Fix: audio track of audio zone and visual zone (playlist, playfolder) could be played simultaneously. Now the audio (playlist, playfolder) can not be rendered anymore in a main zone of visual channel or audio-visual channel
- Fix: some variable columns could miss when refreshing the domain
- Fix: *Please wait* message could be displayed infinitely when adding a font in the mask *Fil d'actualité*
- Fix: in some case, device groups of another domain could be displayed
- Fix: saving a new timeslot could not work properly if the creation of the previous one has been cancelled
- Fix: in some case, the device list could be not displayed in frontal screen
- Fix: when adding a new font whose size is too big (error 403 raised at the saving), the new font name was kept in the MeetingRoom form even after having cancelled the saving
- Fix: in some case, *modèle* value & last connection *date&time* of device just detected could not be displayed in frontal screen
- Fix unexpected message *ce playout a été modifié par un autre utilisateur* when transforming a audio-visual type playout containing .jpg (or .jpeg) medias into audio type playout
- Fix: in case only ACL modification is done in frontal screen, it is proposed the *Quitter* button (instead *Annuler et Quitter* button)
- Fix: when creating remote file with authentication in manifest, the message *un identifiant doit être saisi* could remain sometimes
- Fix: intrinsic duration property
-  of the mask *Fil d'actualité* was not properly displayed when the number of news to display was limited
- Fix: a part of the variables list could be not visible (target/publication) with laptop screens
- Fix: on some laptop, an unexpected scrolling bar could be displayed on the right of the screen Settings/Domains/Frontals/Devices
- Fix: a white screen could be noticed after login with some user having these permissions denied
	- cms.library.domainrepository.view and
	- cms.library.sharedrepository.view
- Fix: in some case, some directories could be close after domain refresh
- Fix: in some case, it could be impossible to add a media in a playout after having changed its  type
- Fix: the string [object Object] could be present in the role description after having cancelled some role modification just before
- Fix: publication error (*path is undefined*) when playout was containing empty URI
- Fix error #1009 could be raised when trying to remove linked media not existing in the library
- Fix: in some rare case, could face issue to edit a existing playfolder (hourglass does not keep turning)
- Fix: in some case, a default variable recently updated could not be affected to a player (variable column was emptied instead)
- Fix: it was not possible to delete a localized folder moved into a directory
- Fix: Web page URL copy-paste in URI edition zone did not remove unuseful space character at the beginning of URL making it not working properly
- Fix: using variable in a remote file of manifest could raise an edition error sometimes
- Fix: floating zone zIndex could be not saved properly
- Fix: in some case, a unexpected zIndex value could be noticed for the main zone

## `2016-07-27` V3.10.32
>##### **MODELS PACKAGE TO INSTALL**
- 3.34 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix publication error *resolvedPath not defined* when playout is containing URI with variable
- Fix random publication error *getAbsoluteSpec path, error .../... urn:innes:owl:digitaltv-receiver .../... nslsupportsQuery interface* even if the playout is not containing URN

## `2016-07-19` V3.10.31
>##### **IMPORTANT WHEN INSTALLING THIS VERSION**
- It is recommended to backup PlugnCast file system before upgrading to this version
- The variables of types integer, float, boolean are not supported anymore. They are kept in PlugnCast but becomes variable of type "localized" to keep compatibility
- The variables of types path and date are not supported anymore. These variables are removed
- Free text is not supported anymore when creating URI and playfolder. That will be done now with a drag'n drop of resource (domain repository, directory name, ressource, variable + extension, filename)
- To avoid publication issue with playfolder (or URI) using with variable, it is recommended to remove in linked media tab, the medias linked to the variable resolution (except when using xpath variable)
>##### **MODELS PACKAGE TO INSTALL**
- 3.31 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add repositories view features to contributor role
- Add support of opt-out (localized folder)
- Add support of new variable types
	- ```nom de fichier```
	- ```localisé```
	- ```texte```
	- ```json```
- Add possibility to import variables values from all registered players
	- Field1
	- Field2
	- Field3
	- Field4
	- Field5
	- UUID
	- Hostname
	- MAC
- Add support of user group
- Add possibility to export a directory as *tar.gz* archive (from PlugnCast server to PC with a Web browser) (WebUI)
	- ```https://<your_server_IP>/.frontals/.webdav/<your_domain>/?export```
- Add player device status information in Target/System view (monitor-monitoring, IP address and device variables)
	- Type d'id
	- HOSTNAME
	- MAC
	- UUID
	- Screen
		- ```Écran n°<i>```
			- ```Branché```
			- ```État```
			- ```Source d'entrée```
			- ```Idenfiant du fabricant```
			- ```Nom du produit```
			- ```Code du produit```
			- ```Numéro de série```
	- Adresses IP
		- ```Adresse IP n°<i>```
			- ```Origine```
			- ```Type IF```
			- ```Valeur```
	- field1
	- field2
	- field3
	- field4
	- field5
- Add "Screens" (monitor-monitoring) column in Target/Publication and Target/System
	- red (or green) square with the number of screens inside
		- status red when one of the monitors states is "power off" or "switch off by user", or when one of the monitor of the player is unplugged (video cable or not powered). Tooltip display:
			- ```Ecran n°<i>```
				- ```Branché```
				- ```Etat```
		- status green (for other cases)
 	- The feature monitor-monitoring must be activated in the player to be displayed on the user interface
		- note:  monitor-monitoring is supported on Gekkota version 3.12.31 (or above) but inactivated by default
- Add support of ACL
	- ACL permissions are some priority rights above the role which are applied for a given resource to
		- one or several users
		- one or several roles
		- one or several groups
	- These ACL permissions value are
		- keep value according to the role profile (default value)
		- force 'authorized'
		- force 'forbidden'
			- note: The ACL policy is always priority if its value is different of default role
			- note: When several ACL policies are applied for a given permission (ex: conflict between user ACL permissions and group ACL permissions), 'forbidden' is priority (compared to 'authorized')
	- The ACL can be applied to the resources below thanks to a specific button ```Edit the permissions...```
		- Library
			- domain repository (or shared repository)
				- files
				- directories (and/or subdirectories)
					- note for directory
						- the permission ```cms.library.domainrepository.folders.remove#children``` has to be authorized to be able to remove the subfolder as well
						- the permission ```cms.library.domainrepository.folders.view#children``` has to be activated to be able to view the subfolder as well
		- Playout
			- General permissions
			- Audio channel
			- Video Channel
			- Audio-Video Channel
		- Multimedia sequence
		- Frontal (Settings/```<your_domain>```)
			- built-in (internal)
			- external
		- By device
	- Note: when a user is deleted, a message is displayed asking to give a new owner for all the resources whose the user (to delete) owned
- Add support of new roles features
	- cms.acl.bypass: allow to ignore the applied ACL, only role permissions will be aplied to the current user
	- cms.acl.edit: allow to edit ACL, even if the current user is not the owner
	- cms.acl.owner.edit: allow to edit ACL when the current user is the owner of the resource
- Add *deny* icon when ACL is denied to modify a multimedia sequence of a calendar event
- Add support of variable in path file name of remote file (or remote directory) in manifest
- Add media behaviour option ```while and not more than XXh-YYm-ZZs``` (```pendant au plus XXh-YYm-ZZs```) for URI, playlist and playfolder
	- can be activated only when played n times (1X, 2X, ...)
- Add possibility to import default fonts of type ```fira``` (embedded in PlugnCast server file system)
	- the fira fonts are potentially mixed with those imported from OS file system
- Add support of variable in flash var (media behaviour)
- Add tooltip (containing planning summary) for planned task (standby, reboot player)
- Add tooltip (containing path file name) for library resource
- Change: last used domain is loaded by default when logging in to PlugnCast
- Change: Update file or folder paths used by URI or playfolder files. When a file or a path file is renamed in file system Windows or through PlugnCast library, the dependencies path file names are rightly updated (URI with variable)
 	- Note: old media previously created could not inherit of this change. In case working with old URI with variable, renaming a directory or a file could still lead to inconsistent linked media. So it is recommended to still check consistancy of linked media for *old* URI
- Change: remove support of variable of type
	- ```int```
	- ```float```
	- ```boolean```
	- ```string```
	- ```date```
	- when this version is installed, a specific migration script is launched to transtype the variables
		-   ```int``` to ```localisé```
		-   ```float``` to ```localisé```
		-   ```boolean``` to ```localisé```
- Change: playfolder creation can now support
	- automatically *folder creation* (as an option)
		- using of localized variable (as an option)
- Change: the building of URI is done by an easy drag'n drop of the resource from library (media with its path file name or variable)
	- Note: it is possible to drag the resource each other inside URI
- Change: free text is not supported for URI and playfolder
	- note: free text is still supported for URL
		- ex: http://www.innes.pro/{$custom:lang}/support
- Change: mandatory slash character is added in path file name at the back of each variable each time a new one is dropped
	- ex for playfolder
		- ```[Référentiel du domaine]/{$custom:localized}/{$deviceInfo:field1}/```
	- ex for URI
		- ```[Référentiel du domaine]/URI/{$deviceInfo:field1}/{$custom:filename3}```
		- ```[Référentiel partagé]/{ $custom:var_localized}/{$deviceInfo:field1}/{$custom:var_filename}.jpg```
- Change: playfolder can now be only made of
	- resource domain repository
	- resource directories
	- resource variables
		- ```localisé```
		- ```device info```
		- ```xpath```
	- note: ```texte``` and ```json``` variables cannot be used in playfolder
	- note: in case a URI contains a variable which can not be resolved in preview (because the variable does not exist anymore, or contains non value), the variable color inside the URI becomes orange
- Change: URI can now be only made of
	- resource domain repository directory
	- resource directories
	- resource variables
		- ```localisé``` (file extension selection is proposed when URI is finishing with localized variable)
		- ```device info``` (file extension selection is proposed when URI is finishing with device info variable)
		- ```xpath``` (file extension selection is proposed when URI is finishing with xpath variable)
		- ```nom de fichier``` (file extension selection is not proposed because the variable is embedding already an extension)
			- when a variable ```nom de fichier``` is used in URI pathfile name, it can be put only at the end of URI
			- when another variable ```nom de fichier``` is used in URI pathfile name, it replaces the previous one
	- note: ```texte``` and ```json``` variables can not be used in URI
- Change: manual adding of dependencies in linked file are not required anymore when creating playfolder with variable (or URI with variable) except when using xpath.
	- note for legacy playfolder/URI: due to variable using, some medias manually inserted in linked media tab should remain. These ones will not follow properly their automatic file renaming (or directory renaming). Consequently, they could cause publication or downloading error. To solve the issue review all the URI and playfolder and delete all the linked media related to the variable resolution (except when using xpath variable)
	- when xpath variable is used, a reminder message is displayed showing that the a medias (target media with variable xpath resolved) need to be inserted in linked media
	- when device info variable is used, the target filename can be resolved automatically only when the device info variable values has been imported from the player in PlugnCast (Library/Variable view). Otherwise the target file must be inserted in linked medias of the URI or playfolder
- Change: resource owner name is set each time a new resource (file, directory, playout, channel) is created
	- note: superadmin is set as owner for old resource previously created
- Change icon for ACL and Roles
- Change: default value  for tolerance duration is now 1 minute
- Change: cancel purge task when a publication task is launched (and reciprocally)
- Change: add 2 tab for frontal: *devices* and *properties* (settings/domains/frontal view)
- Change: SlideMaker is using now PlugnCast fonts instead of the 11 previous fonts (the previous fonts are not supported anymore and are transtyped to *default* font)
- Change: message "internet explorer is not supported"
- Change: empty player label is not supported anymore
- Change: media in layout is not supported anymore for audio zone
- Change: not possible anymore to use user interface when LDAP test is running
- Change: display frontal type in settings/frontal
- Change: default behaviour duration for a MS-Powerpoint media is 10 seconds (instead 1X)
- Change: message *Adobe Flash Player plugin is required*
- Change: standby task start time and end time can not have the same value
- Fix: sometimes when inserted in calendar, a new event could have a intrinsic duration larger than the one showed in the screen leading to unexpected conflict when editing the event or leading to problem to increase event duration by a drag'n drop
	- note: in case still facing problems with some events created before this version, delete and create again the event
- Fix: in some case, reboot and standby tasks were not starting at the right time (jet lag not taken into account)
- Fix: players with a device status containing "{" due to a script download error can be detected by PlugnCast (domain/frontal)
- Fix: message *Error: the file has not been locked: please retry* when importing file with large size (300MB or above)
- Fix: upload screen could not be closed when server is rebooting in the middle of uploading
- Fix: in some case, the Target/System screen was not computing the right available space on disk storage
- Fix: in some case, players list was not displayed in setting/frontal screen
- Fix: playfolder background color was not taken into account
- Fix: in some case, manifest could raise inconsistent anomaly when a playlist was updated
- Fix: publication issue *nslMIMEService.getTypeFromExtension*
- Fix unexpected overlap between multimedia sequences (especially when inserted in calendar time slot less than 1,5 hours)
- Fix: a message *please wait* was displayed infinitely when affecting a new playout (task or variable) to a player (recently removed from frontal)
- Fix: an old device recently registered could not be displayed in target/device view
- Fix: firmware named with mention *beta* was not properly sorted in alphabetic order
- Fix: URI do not work if the file extension is in upper case.
- Fix LDAP user filtering could make crash the server (Linux)
	Note: for filtering replace filter: ```(&(objectClass==user)(mail=*innes.pro) by filter [Avancé ] ```(objectClass=inetOrgPerson)```
- Fix: volume icon was following the real volume threshold (video media preview)
- Fix: sometimes some of the players could not be properly sorted in alphabetic order
- Fix: domain list display issue on small screens
- Fix: temporary IPV6 URL of PlugnCast frontal was present in the list of URL when connecting to PlugnCast WebUI as localhost
- Fix: purge status was removed before it is take into account by the player
- Fix: saving button could be unavailable when changing server configuration and role permissions *cms.settings.servers.edit* have been granted back
- Fix: default TODO task generated by PlugnCast was not working properly (until the time&day is changed)
- Fix: in some case, it could be not possible to save a new LDAP/SMTP/Proxy servers configuration

## `2016-04-08` V3.10.25
>##### **MODELS PACKAGE TO INSTALL**
- 3.31 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support of *Slide Maker*
	- Format: wgt (HTML5)
	- Object type
		- Text
			- 11 fonts,
			- shadow, bold, italics, underline
		- Pop-up
			- library of 23 samples
		- Image (gif, png, jpg, svg) (lower than 1 MB)
	- Object functions
		- Rotation
		- Transition
			- Fading
			- Escape on the top/bottom
		- Image cropping/uncropping (double click and drag the image)
		- Editable duration
		- Background colour / fonts colour
	- Diapo
		- Layer management (bring to front/bring to back)
		- Pan and scan / letter box for background image
		- Editable margin in %
		- Preview mode (with margin)
		- Zoom
		- Object place locking in the diapo
		- Hide menu
	- Timeline
		- Editable duration
		- Play/pause
		- Zoom
		- Media drag'n drop
		- Splitter to enlarge timeline view (decreasing diapo overview)
- Add support of configuration script name format:
	- ```<MAC>.configuration.js``` (lower case as well upper case for ```<MAC>```)
	- ```<hostname>.configuration.js``` (lower case as well upper case for ```<hostname>```)
	- ```<UUID>.configuration.js``` (lower case as well upper case for ```<UUID>```)
- Add publication button in target/variable view and target/task view
- Change icon test card to black colour
- Change: the extension of a an uploaded file is converted to lower case
- Change: target view screen title is changing each time a new group name is selected
- Fix: wrong behaviour when publishing playfolder which has been emptied
- Fix preview/edition issue with flash media (Google Chrome Web browser)
- Fix: variables could not be displayed properly in the target/variable view when creating a new variable and renaming it just after
- Fix: action status was not properly updated in target/system view
- Fix: in some rare case, problem to select variable value
- Fix: in some rare case, problem to drag n drop a playout in a playout column title
- Fix: purge was not working at all if one of the selected players had no playout
- Fix: button Save/Cancel could partially disappear when changing Web browser windows size
- Fix: test card icon was not display on target/publication view (while properly displayed on target/system view)
- Fix: flash preview issue with Microsoft Edge (MS Windows 10)
- Fix: SVG preview issue with Microsoft Edge (MS Windows 10)
- Fix: server could crash sometimes when consulting several PDF medias properties
- Fix: publication issue when a playout uses an script to execute which has been deleted in the library
- Fix: player could remains visible in target view in case it is deleted from domain and added again with same hostname
- Fix icon overlap display issue in case viewing on small Web browser Windows
- Fix unexpected publication error message *that is not defined* when using layout/canevas

## `2015-11-19` V3.10.24
>##### **IMPORTANT**
- Once this version is installed, new user accounts created with this version will not work properly in case downgrading to PlugnCast 3.10.23
>##### **MODELS PACKAGE TO INSTALL**
- 3.23 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add roles
	- *super administrator*
    - *general administrator*
    - *domain administrator*
    - *general editor*
    - *domain editor*
    - *customer support*
    - *contributor*
        - note: contributor role will find full sense in next PlugnCast version supporting Access Control List (ACL)
- Add factory reset for all the roles at once
- Add: configurable role permissions for the below functionalities
    - library view
        - domain repository
            - file management
            - folder management
            - fonts management
            - model management
        - shared repository
            - file management
            - folder management
        - variables
        - timeslot
    - playout view
        - playout channel
        - channel calendar event
        - playout layout
        - playout manifest
        - playout script
    - settings view
        - certificate
        - device middleware
        - device script
        - domain
        - frontal
        - max device edit
        - my account
        - role edition
        - server
        - user
    - target view
        - groups
        - publication
        - system
        - task
        - variable
- Add red circle stamp icon (with cross or slash inside) appearing close to the title in edition screen when some role permission is not fully granted (for a given functionality)
- Add workaround to make work properly upload for huge media (ex: hundred megabytes) when upload time duration is more than one minute (faced seen since Firefox Web browser version 37 and above)
- Improve: calendar rendering efficiency
- Change: default account login/password when calling command line ```plugncast.exe -k resetsuperadmins``` (login: *superadmin*, password: *superadmin*)
- Change: color of button when it has a direct action on player content (blue instead orange)
- Change error management in manifest: a parent directories displays sum of
	- the number of son files containing errors and
	- the number of error of all directories (sum of number of errors of all son directories)
- Change: can modify password and login independently
- Change: modify/save/cancel/action buttons icon becomes in red color in case some of the role permission for this functionality is not granted (a tooltip information message is indicating the missing role permissions)
- Change: super administrator profile is now displayed in roles view
- Change: when super administrator account is created, all the domain are selected
- Change: support multi-thread xquery
- Change: update player device status more often to avoid to keep displayed unconsistent player message
- Change: delete player device status from frontal server as soon as a device is deleted from server database
- Change: add slash character (/) at the end of URI when creating distant directory in manifest
- Change: do not valid distant directory in manifest in case login or password is missing and authentication is selected
- Change: new playout is automatically sorted in alphabetic order
- Fix version number update issue when mask instance is updated with a new mask version
- Fix overlap issue in user name display (setting/MyAccount view)
- Fix: able to display several status error messages for each device (targets view)
- Fix unexpected domain name displayed in bold in domain list
- Fix unexpected edition icon marker display in some case (libray view)
- Fix unexpected calendar event drop when dragged outside the calendar zone
- Fix: add security to prevent to create a distant file/directory since a file (manifest view)
- Fix: in case file drag'n drop, the file name was wrongly shortened in tool tip (Firefox Web browser)
- Fix *please wait* screen displayed forever in case domain is modified and network is not available (PlugnCast WebUI & PlugnCast server on same work station)
- Fix *please wait* screen displayed forever in manifest view for a playout containing a playfolder pointing to a distant media
- Fix *please wait* screen displayed forever at log in in case user account is corrupted on the server database (ex: in case server workstation is switched off savagely)
- Fix *please wait* screen forever when deleting 2 playouts (with the first one used for last publication)
- Fix manifest error resolving issue when modifying playlist
- Fix drop issue in last variable column for a variable whose name is containing more than 50 characters and in case splitter is moved
- Fix unexpected double scroll bar in calendar view
- Fix bad management of *save or cancel* pop-up when exiting library view

## `2015-10-15` V3.10.23
>##### **MODELS PACKAGE TO INSTALL**
- 3.20 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix wrong default variable propagation in group, player, playfolder and URI when the default variable was modified
- Fix LDAP user importation issue when using *search* button
- Fix orange color display issue when player is in edition mode
- Fix variable affectation cancelling fails the second time
- Fix impossibility to save variable affectation in case exactly the same variable has been affected
- Fix black triangle missing in variables list for the last created variable preventing to open/close the variable directory (target view)
- Fix unexpected blank variable table (in case previous checked variable are unchecked)
- Fix display rendering issue in library file system especially with some file containing Chinese characters (Google Chrome)
- Fix file alignment issue of an edited file in library (Google Chrome)
- Fix unexpected edition mode of the first variable of the list in case passing from library view (file in edition) to target view

## `2015-09-21` V3.10.22
>##### **MODELS PACKAGE TO INSTALL**
- 3.20 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix infinite screen *please wait* when creating a first scrolling text instance of the new model 1.10.14 supporting overlay or when upgrading existing scrolling text instance
- Fix certificates management the 23/09 (integration new certificate chain including rapid SSL) for SAAS and Off-premises solution on all customer servers allowing to not face some unexpected player deconnexion in https

## `2015-09-11` V3.10.21
>##### **IMPORTANT**
- Once this version is installed, it is highly recommanded to launch a new supported command line to make safe all the existing databases of your PlugnCast server domain:
	- ```plugncast.exe -k repairdbs -domain <plugncast_customer_domain>```
>##### **MODELS PACKAGE TO INSTALL**
- 3.19 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add command line ```plugncast.exe -k repairdbs -domain <plugncast_customer_domain>```
- Change layout minimal height (or width) to 96 pixels (instead of 192 pixels)
- Change region minimal height (or width) in a layout: 10 pixels (instead of 50 pixels) (for all region types)
- Change float region default size to : 96x96 pixels (instead 128x128 pixels)
- Change: in case the float region is dropped too close to the edge, the float region is automatically cropped (depending on the mouse position)
- Change: playouts main interface icon
- Change: frontal icon (settings/domain view)
- Change: *media by default* by *content by default* (playout/property view)
- Change: calendar region sequence medias are automatically removed when the region uses the layout region media
- Change: not possible to navigate in the calendar timeline when media by default is selected in audio region and channel is type audio
- Change: id of an obsolete playout affected to a player is not displayed anymore in target view
- Fix database reference counter range issue making the existing PlugnCast database corrupted
- Fix database size dynamic allocation issue
- Fix error message raised immediately after login: *fonts can not be fetched* making that fonts are not available anymore in library
- Fix model visibility issue when opening models library
- Fix edition issue on existing model media instance
- Fix playout saving issue with an error message raised with HTTP error 400
- Fix media with remote resource could not be updated with announced periodicity (range issue)
- Fix planning exception did not work
- Fix region handling when dropped outside viewport (grid composition)
- Fix calendar modification cancelling not working properly when planning popup is used
- Fix fonts are not imported in the appropriate domain in case more than one domain is existing
- Fix variable view configuration is not saved and restored properly when changing domain
- Fix region adjustment issue when using "height, width, x, y" text area at grid creation
- Fix media was inserted in wrong calendar region (of same type)
- Fix last selected group focus not applied when changing domain
- Fix fall back of URI or playfolder was always played (in case fall back is activated) even if media path could be resolved
- Fix publication issue with error message *During valuation of files to put, OnStopRequest could not find the local file...*
- Fix publication issue with error message *nsIMIMEService.getTypeFromExtension*
- Fix publication issue with error message *region is undefined* (for playout created before 3.10.21, playout renaming could be needed to solve completely the issue)
- Fix publication issue with error message *SyntaxError: JSON.parse: unexpected character*
- Fix playout saving issue with error message *invalid expression: syntax error, unexpected element content*
- Fix please wait message forever immediately after login (file path case sensitive on linux)
- Fix *Error0* error message when importing fonts with wrong format (error also raised when opened in Windows OS)
- Fix server crashed when adding unplayable WOFF fonts in playfolder
- Fix impossibility in some case to select one of the available software versions

## `2015-08-07` V3.10.20
>##### **MODELS PACKAGE TO INSTALL**
- 3.19 (or above)
>##### **IMPORTANT**
- For this version,
	- Web browser has to be closed and opened again after PlugnCast installation in order to be able to connect properly to the server
	- Once this version is installed, all the tasks *player restart*, *TV screen standby* are deleted. These tasks need to be created again by user if required
	- Playlists and playfolders using medias, linked medias or directories of shared repository need to be modified (remove and add again media of shared repository) else an error in manifest can be raised
	- It is not possible to return back to previous version of PlugnCast working properly due to compatibility break inserted on the data model in this version (task management, default variables management, playlists and playfolders using shared repository). For that reason, you should save the PlugnCast file system in order to be able to return back to 3.10.19
	- In order to activate player software release through PlugnCast G3, a special configuration on players has to be done. Please see release notes below
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add drag'n drop support for playout, variable & tasks towards one specific player or list of player
- Add property tab in playout view allowing to join a script to a playout (ex: ```enable-g3-addon-manager-http-downloader.js```)
- Add manifest tab in playout view allowing to
	- identify the list of the used medias with their proper size
	- identify easily the media facing a warning or error (stamped with a red error icon)
- Add remote file (or directory) in manifest view
- Add player version release support (target/system view)
	- support hosting of several versions by player family (setting/middleware and scripts view)
	- support pre-selection of version (or patch) to install
	- support player upgrade all at once
	- in order to support this functionnality, it is mandatory to have a gekkota version >= 3.12.20
	- in order to support software download, your gekkota player must be first configured for that :
		- connect to each WebUI player, and configure the 'Softwares update and installation server' section. Url should be like that : ```https://<machine_IP>/.frontals/.webdav/<domaine>/.setup/```
		- if you have several players, on which WebUI is not easily available, an alternative solution is to use a special script to join to your playout (at least once by player) (see INFORMATION chapter).
- Add auto-configuration script download support (target/system view)
	- support hosting of several auto-configuration scripts  (setting/middleware and scripts view)
	- supported naming formats
		- ```<uuid>.configuration.js``` (<uuid\> is UUID in lower case letter),
		- ```<hostname>.configuration.js```,
		- ```<mac>.configuration.js``` (<mac\> is MAC adress without separators in lower case letter)
		- ```configuration.js```
- Add system tab (target view) allowing to launch new actions on players
	- purge playout
	- update software version
	- download auto-configuration script
	- delete pending action (purge, update, download auto-configuration file)
	- display some specific icon status when some of above action is pending
- Add system tab (target view) allowing to view some player datas
 	- display player status icon (fail soft mode, test pattern, no content, playing, player not responding, mode system)
	- serial number
	- model
	- player embedded software version (middleware)
	- date&time of last configuration script sent to player
	- remaining available free space on player
- Add SSL certificates support (settings view)
	- trusted certificates
		- import .crt certificates
		- display certificates attribute
		- delete certificates
	- server certificates (for on-premises PlugnCast G3 server)
		- creation wizard for a new certificate generation (validity date, domain) and automatic loading
		- display certificates attribute
		- import .p12 certificate with password
- Add .ics as supported resource extension
- Add LDAPs server support
- Add model type column in frontal/devices (settings view)
- Add scrolling bar for region list (playout/layout/region)
- Add flashvar support in URI media behaviour
- Add simulated resolution output width support for html media (widget, maff, url) in media behaviour
- Add *please wait* information message when (un)selecting all players
- Add *daily calendar* icon (used to program a monitor standby/wake-up) (library view)
- Add *todo* task icon (used to program a player restart) (library view)
- Change: postpone user deconnection at timeout expiration (30 min) in case download request is pending
- Change: audio region is systematically created for audio channel
- Change: add automatically '-' separator and transform in lower case the MAC address when adding a new player
- Change: group view (target view)
- Change: variable/task view (target view)
- Change: calendar event is created by default with the selected grid
- Change: dimension of each region (x,y,dx,dy) chosen by user are saved and apply for next grid creation
- Change: move icon *new file from a model* into *new file* menu
- Change: use *UUID* parameter instead *label* parameter for medias and directories of shared repository
- Change: error message when formular is not found: *the formular can not be found "name.form.swf" (Error #2035 [ioError])*
- Change: publication by group splitted in 2 user steps: first select group, then publish
- Change: set default focus on text region when modifying playout name
- Change: combobox *format* has been widened in model selector screen
- Change: do not scroll automatically to calendar *current time* slide when navigating between different playout
- Change: when PlugnCast URL is using localhost, a list of predefined frontal URL are now available in the list
	- ```http://<ipv6>/.frontals/.webdav/domain/```
	- ```http://<ipv4>/.frontals/.webdav/domain/```
	- ```http://<computer_name>/.frontals/.webdav/domain/```
- Change: obsolete items are deleted when playout is renamed
- Change: message: *this user has no domain* by this *user is not associated to a domain*
- Change: mouse wheel event in user presence detection algorithm
- Change: phantom player appear in bold italic type in target interface
- Change: refresh button is inactive when frontal is in edition mode (parameter interface)
- Change: allow domain finalization when facing character fonts loading error
- Improve error/information message in setting/frontal
- Improve WebUI rendering in case window resize (avoiding button overlap)
- Fix moving vertical splitter in library could make appear empty&white screen
- Fix audio of audio channel was not played in priority compared to audio of visual channel
- Fix unexpected huge memory leak causing server crash when deleting a domain of PlugnCast
- Fix random video preview issue ending by message "media can be played in this browser" (Firefox browser)
- Fix login/password did not work with some special characters
- Fix edition issue for JS file (file was empty)
- Fix risk of user preferences corruption when Laptop is facing low battery
- Fix add attribute timeslot in order to avoid to prompt message "timeslot can not be retrieved" (ensure that database migration is always well done)
- Fix message *Adobe Flash plugin required* when opening flash formular while Adode plugin flash is well reactivated
- Fix full screen rendering issue for some widget, video & SWF media with Firefox browser
- Fix rare issue when saving URI description
- Fix RSS (with MAFF format) preview when proxy is activated
- Fix MAFF formular could not be opened when internet connection was not available
- Fix publication issue rising this message *get response code 0 and status 80004005 when trying to remove*
- Fix player creation fails when immediately done after frontal built-in creation
- Fix blocking issue when font used in media has no psname, neither fontfamily, neither fontfilename
- Fix please wait forever when modifying a group rule twice
- Fix please wait forever immediatley after login with Google Chrome version 39.0
- Fix add workaround to avoid rare unexpected negative slot (event start older than event stop)
- Fix add workaround to avoid main region overlapping over main region of the day after (for example event 00h00 to 00h00 whereas slot is mentionning 18h00 to 00h00)
- Fix drop list display when creating group by variable with more than 4 variables
- Fix media are disappearing from calendar temporarily when modifying event recurrence then cancelling modification
## `2015-06-16` V3.10.19
>##### **MODELS PACKAGE TO INSTALL**
- 3.17 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change WebUI deconnexion timeout to 30 minutes (instead of 10 minutes previously)
- Fix important slowness noticed in PlugnCast navigation when calendar contains much playouts with much events in a week
- Fix publication issue when using audio channel with audio area
- Fix server crash when playing a specific power point
- Fix add workaround to prevent unic ID to be attributed to several medias (causing for example publication issue, or handling of unexpected media in calendar area)
## `2015-03-03` V3.10.18
>##### **MODELS PACKAGE TO INSTALL**
- 3.13 (or above)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add scrolling in group interface
- Change default duration for powerpoint to 1X (instead duration in second)
- Change tooltip of library button: *import content*
- Change tooltip of calendar button: *display current week*
- Change tooltip of button import: *clean all event in the past*
- Change fonts management (name display) in case a font can not be supported: "?" instead "unknown"
- Change remove resolution property in sequence/behaviour
- Fix random device checking issue when "all" device are checked
- Fix encoding issue in URN TV
- Fix area deletion failure if shared between several layout
- Fix "shared referential" could appear twice after refresh
- Fix file name alignment between library and layout/background image (after a file rename)
- Fix login name display in WebUI (part of name was hidden)
- Fix modify button was inactive despite of media is selected (when trying to change one media behaviour of calendar event medias list)
- Fix default PNG extension for HTML file in URI was set instead of iFrame
- Fix artefact issue on PlugnCast installer icon
- Fix random URI description saving issue at first URI creation
- Fix playout renaming issue whose content medias have been removed through the library
- Fix random issue in calendar recurrence (OK button was inactive)
- Fix display issue when renaming: part of text input was blank
- Fix display issue when renaming: focus was not displayed at the end of text input
- Fix random *duration* property value display issue in library when stressing navigation between following tabs: Content/Editor/Linked Files General
- Fix MAFF preview display issue (not aligned with video)
- Fix fullscreen display centering issue
- Fix preview issue with model package (rich text area, text area by file, custom models)
- Fix viewer toolbar color (greyed) in case MAFF modification
- Fix issue to take account of new model version (in case model instance is modified through general tab or linked files tab)
- Fix display issue for video in portrait (laptop screen size)
- Fix random linked medias issue in *text area by file* model (implying model package 3.13)
- Fix compatibility issue of rich text model (implying model package 3.13)
	- Note: it is recommended to delete legacy *rich text* model instance and create a new one
- Fix error raised "an error has occurred when saving additional data" when trying to modify MeetingRoom - Multi (Firefox browser)
- Fix error code 500 wrong management with media using remote content (service proxy)
>##### **WILL BE ADDED IN NEXT RELEASES**
- In case last domain deletion is requested by user (and publishing purge is not done just before), message "wait a moment please" is displayed forever. Also consequently important memory leak could be noticed making unstable the system hosting PlugnCast
## `2015-01-30` V3.10.17
>##### **MODELS PACKAGE TO INSTALL**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to change PlugnCast certificate (```plugncast.exe -k resetssl```)
- Add calendar week selection
- Add protection to avoid domain/repository deletion (WebUI end & server end)
- Add download button (to get media from PlugnCast server to station hosting WebUI)
- Add accurate message (date&time event start) in case event conflict
- Add refresh button for MAFF/WGT previsualization
- Add an error message if space character is used at the beginning or at the end of filename or directory name
- Add space character filtering when used at the end of frontal name
- Add space character filtering when used at the end of URI (or inserted after a copy-paste)
- Add orange color when phantom player is found
- Add last modification time in media property
- Add week selection feedback
- Add support of media description in property (carriage return supported)
- Add support of linked media in HTML
- Add sweeper icon in calendar view to delete all previous events
- Add warning message (playback not supported) in case preview of media with password
- Add user warning message in case Internet Explorer is used (Web browser not supported)
- Add HTTP tag detection in URL for frontal name
- Add support of URI with special characters
- Add warning message in case fake or unconsistent external frontal is used (with device attached to the external frontal)
- Add domains list column for users
- Add devices list refresh button in frontal/device interface
- Add device label name in publication error
- Add time difference (server/PC, server/device) in device status
- Add responsive preview behavior (wgt, html, maff) (preview is representative of real rendering)
  (defaut preview is a 1920x1080 container if size property is not defined)
- Keep user number container/button if no domain is selected
- Change decrease minimal height size from 64 pixels to 50 pixels for layout region
- Change increase size of video viewer control bar
- Change playfolder domain_repository to [referentiel du domaine]
- Change default MAFF behavior : X1
- Change base URI selection from linked media view to general view
- Change playout interface: tab Canal audio, tab Canal visuel, tab Canal audio-visuel, tab Habillage
- Changed playout interface: add tab Manifest, add tab Propriétés
- Improve library directories opening time
- Fix unexpected file (or directory) deletion (if selected) when event is deleted with suppr. keyboard key
- Fix black screen issue the last day of an event (using setting Until)
- Fix random issue to move recurrent event
- Fix URI name with special characters
- Fix deadlock when working with domain interface and in case one of used player is version <= 3.10.XX
- Fix publication issue when passing from summer time to winter time
- Fix random display issue at first SWF model creation
- Fix background loaded in manifest even if not checked
- Fix support special character in TXT/CSV/HTML/JSON/TSV/JS/XML
- Fix visual artefact Firefox & PDF preview (icon, text cropped) (especially on laptop)
- Fix variable list display issue (in case more than 14 variables) when group by variable is modified
- Fix playout name display in device status interface
- Fix text cropping with some PDF preview
- Fix group player update (list and number) in case modification
- Fix file extension does not change according to extension file modification
- Fix indetermnistic video viewer aspect ratio for portrait video
- Fix device name list homogeneity between target/group and target/device
- Fix issue in case fonts deleting
- Fix issue in case stressing layout area modification
- Fix root cause for error message *Erreur du serveur: une contrainte d'integrite n'a pas ete respectee*
- Fix root cause for error message *PUBLICATION: URI is null*

## `2014-12-15` V3.10.16
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix unstability of UI fonctionality in case all value of a variable are deleted
	- variable UI Screen or file UI screen not displayed
	- impossible modification of URI impossible
- Fix support linked medias with special characters
- Fix support SWF & MAFF with linked media
- Fix INNES SWF models previsualization supported
- URI with linked media supported (was blocking publication)

## `2014-12-11` V3.10.15
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add default value for variable value and previzualisation value
- Add possibility to set duration by page to few second or anytime (interactive)
- Change Message readness improvement in case ressource conflict is detected (multi-users)
- Change icon for "group digital signage" and "playout"
- Change playfile moved and merge into URI (linked media not supported)
- Change PDF control bar in case small screen
- Fix *ReferenceError: devices is not defined* error raised in some case at publication
- Fix dragndrop between directories (locked directory)
- Fix accessibility to onthology interface
- Fix publication for linked media for SWF "Texte defilant par fichier"
- Fix publication status pertinence and publication status (instead status never ending)

## `2014-10-31` V3.10.14
>##### **IMPORTANT**
- In case previous PlugnCast server version was installed, due to mix of the "layouts" interfaces into "playouts" interface, this version implements an automatical database migration that is realized immediately at first start-up PlugnCast V3.10.14 server. Consequently,
 - Unused layout will be lost
 - Previous shared layouts are automatically duplicated as much as there was playouts using them in order to use independently "one" layout for "one" playout.
- Note: If user faces trouble to modify the layout independently, please RESTART again the server to solve the issue.
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support LDAP user
- Add domain naming restriction
 - Special string are not supported anymore in domain name (only "-" and ".")
 - Automatical renaming into not CAPS string (when CAPS string are used by user)
- Changed mixed "layouts" interface into "playouts" interface (implying database migration targets, groups, layouts)
- Add support powerpoint with extra fonts (ex: celticmd)
- Add drag&drop support when video is being previzualized
- Add tool tips in interface
- Add support playback SWF, MAFF and WGT with their internal duration
- Add select all users
- Add same device management on several frontal
- Add possibility to select all calendar events at a time to change properties
- Add defaut value and default previsualization for variable
- Add support player group by variable (OR,AND)
- Add connected users number (+ refresh button)
- Improve time performances to
	- Rename playlist and playfile (previously up to 15 sec)
	- Import file in media referential (previously up to 30 sec)
	- Rrename audio or video canal (previously up to 60 sec)
	- Modify layout settings (previously up to 30 sec)
	- Develop directory with (previously up to 45 sec)
	- Refresh library tree (refresh)
	- Load secondary huge domain (from main domain) (previously up to 90 sec)
	- Publish/update status regarding unregistered device
- Fix support media with special characters in calendar event
- Fix root cause of error message *Task UI Run method hads been stopped with an error* after entering new device with a MAC address (ensuring that address MAC is formatted AA-BB-CC-DD-EE-FF)

## `2014-10-20` V3.10.13
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix support empty domain at PlugnCast start-up (default configuration for firzt installation)

## `2014-10-03` V3.10.12
>##### **CONSTRAINTS**
- NOT POSSIBLE TO USE V3.10.12 for a first installation of PnC (empty domain not supported) => only for upgrade
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support command line: ```plugncast.exe -k resetsuperadmins``` (to restore default admin profile)
- Change color picker redrawing
- Fix issue in property management (SWF, PDF, PPT, picture and fonts thumbnails)
- Fix path variable issue with special characters
- Fix *error 1009* [ex: MAFF model "Education information"]
- Fix frontal renaming, deletion robustness issue
- Fix wrong playout saving (when unexpected disconnected from database)
- Fix playout name UI refresh after renaming
- Fix event deletion issue in calendar (wrong element was deleted from calendar)
- Fix display issue when using 4/3 layout
- Fix device labelling & registration robustness issue
- Fix screen wake up (after screen standby)
- Fix publication issue when powerpoint name is containing "&"
- Fix playfile / playfolder when using variable (device_info, personalized, xpath)
- Fix URI media type image
- Fix publication issue TargetVariables is undefined (when using variable)
- Fix *Erreur --domain-- existe deja* when renaming frontals
- Fix authentification issue when modifying identifiant
- Fix linked medias reference for INNES model
- Fix login/password with special characters

## `2014-09-19` V3.10.11
>##### **CONSTRAINTS**
- NOT POSSIBLE TO USE V3.10.11 for a first installation of PnC (empty domain not supported) => only for upgrade
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add "Veuillez patientez" pop-up when modifying domain
- Add variables management (+ compliancy between 3.10.10 beta 4 and 3.10.11)
- Change design to manage efficiently several devices (more than 50 devices) in device interface
- Change groups by variables (optimization)
- Change design to improvement domain management (clean obsolete devices, device label and device register)
- Improve playout management regarding grids independancy between domains
- Improve drag&drop in calendar
- Fix event disappearing when moved inside a calendar
- Fix wrong property management in powerpoint 2003 (ppt)
- Fix publication deadlock when facing connexion issue with external frontal

## `2014-09-05` V3.10.10
>##### **CONSTRAINTS**
- For people who have installed an alpha or beta version (<=beta4), there is an incompatibility for variables. So, you have to remove all custom variables and re-create them.
- For the field-type variables, the value will be hiden (but is still here); this behaviour will be fixed in V3.10.11 version.
>##### **MODELS PACKAGE**
- 3.11B
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
