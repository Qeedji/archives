# PlugnCast G2
*RELEASE NOTE*

##`2015-08-03` Studio V2.51.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix preview of Meeting Room Models. Note : if https is needed for connection to plugncast, it uses http instead.
- Fix crash when clicking on button Help/About PlugnCast Studio/Installation detail
- Fix PlugnCast Studio which does not start with Java 1.5
>##### **COMPATIBILITIES**
- Gekkota RT V3.12.59 (or above)
- Gekkota OS V3.12.58 (or above)
	- for SMA300
- Gekkota OS V3.12.57 (or above)
	- for DMB300
	- for DMC200
	- for SMP200
	- for SMA200
- Gekkota OS V4.12.13 (or above)
	- for DMB400
- Gekkota OS V4.12.11 (or above)
	- for SMA300
- Gekkota OS V4.12.10 (or above)
	- for DME204
- Gekkota OS V4.11.12 (or above)
	- for SMT210
- Middleware G2 Playzilla V2.51.10 (or above)
- Java 1.5 (or above)

##`2015-03-12` Server V2.50.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix compatibility with Gekkota G3
- Fix install Visual studio 2008 redistribuable for openssl version 1.0.1j
>##### **COMPATIBILITIES**
- Gekkota RT V3.12.59 (or above)
- Gekkota OS V3.12.58 (or above)
	- for SMA300
- Gekkota OS V3.12.57 (or above)
	- for DMB300
	- for DMC200
	- for SMP200
	- for SMA200
- Gekkota OS V4.12.13 (or above)
	- for DMB400
- Gekkota OS V4.12.11 (or above)
	- for SMA300
- Gekkota OS V4.12.10 (or above)
	- for DME204
- Gekkota OS V4.11.12 (or above)
	- for SMT210
- Middleware G2 Playzilla V2.51.10 (or above)
- Gekkota G3

#INFORMATION
***********************************************************************
#### **USER MANUAL**
- User manual (EN)
- User manual (FR)
#### **USER GUIDE CANAL SELECTION ON GPIO**
- User guide (FR)
#### **SPECIFIC KEYPAD (4 keys) MANAGEMENT**
- User guide (FR)
#### **DESKTOP + PLUGNCAST ON THE SAME PC**
- When using Playzilla-Desktop G3 with PlugnCast G2 on the same PC, use Studio version >=2.50.35
#### **MS-OFFICE 2010**
- When Office2010 is installed on the host PC, the file 'PPTVIEW.EXE' is removed (Powerpoint viewer 2007). Consequently Powerpoint files preview is not possible anymore. To workaround this issue you have to manually restore 'PPTVIEW.EXE' on the PC (usually under the directory:
	- 'C:\Program Files\Microsoft Office\Office12'
#### **MS-WINDOWS 10**
- The preview of MS-PowerPoint medias may not work when using MS-Windows 10 (or above). To work around:
	- use MS-Windows 8.X (or below) or
	- work with PlugnCast G3
#### **MULTI-DECODING**
- The multi-video decoding is not supported when using PlugnCast G2

#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2015-05-19` Studio V2.51.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support wgt archive
- Change embedded Gekkota V3.12.18 (for preview)
- Change navigation architecture (based on HTML) (ex: Drag n drop, …)
>##### **WILL BE CORRECTED IN A NEXT RELEASE**
- Fix Meeting Room preview with Studio
- Fix crash when clicking on button Help/About PlugnCast Studio/Installation detail
- Fix PlugnCast Studio which does not start with Java 1.5
>##### **COMPATIBILITIES**
- Playzilla V2.50.20 (or above)
- Compliant with Gekkota G3 (or Playzilla G3)
- Java 1.6 (or above)

##`2014-04-29` Studio V2.50.41
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add flashvars management for flash files
- Change rename a field of download task for a better comprehension (linked medias and containers synchronisation)
- Change rename some fields of the containers' comportment  for a better comprehension
- Change remove task validity dates (because not implemented)
- Fix fonts not well detected for powerpoint, pdf and flash files
- Fix a corruption of .pptx file when changing the slide duration
- Fix transparency property of .txt files, to be rendered in a playzilla G3
- Fix a graphical trouble while editing variables with a low resolution display
- Fix a focus trouble after the end of the waiting shell

##`2014-11-25` Server V2.50.31
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change increase openssl version (1.0.1j)
>##### **MODELS PACKAGE**
- V3.10.17

##`2014-07-29` Server V2.50.30
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change SSL configuration with RSA 2048 instead of RSA 512
- Change SSL key exchange in DHE instead of RSA
- Fix adding functionnality in efolder in case another http port is used (other than 80)
>##### **MODELS PACKAGE**
- V3.10.17 (compatible with playzilla G3)


##`2014-03-31` Server V2.50.29
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix very rare trouble with certain server which can provoque several servers failures (WSManagement problem)
>##### **MODELS PACKAGE**
- V3.10.15 (compatible with playzilla G3)


##`2013-12-17` Studio V2.50.40
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix trouble when creating/deleting players group with several players
- Fix internal feature about font metadata
>##### **MODELS PACKAGE**
- V3.10.11 (compatible with playzilla G3)


##`2013-11-30` Studio V2.50.39
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for files type .csv and .tsv
- Change Playzilla 2.50.84
- Fix connexion issue in https mode with java 1.7 update 40
>##### **MODELS PACKAGE**
- V3.10.11 (compatible with playzilla G3)


##`2012-11-19` Studio V2.50.38
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support svg files
- Add support flash transparency
- Add percentage of downloading
- Add the file name when downloading a firmware
- Fix troubles while using playzilla G3 on tab Network
- Fix an eternal blocking on very rare cases
>##### **MODELS PACKAGE**
- V3.10.11 (compatible with playzilla G3)


##`2012-11-19` Server V2.50.28
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with playzilla G3
>##### **MODELS PACKAGE**
- V3.10.11 (compatible with playzilla G3)


##`2012-10-12` Server V2.50.27
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add fix for efolder V1.10.22
>##### **MODELS PACKAGE**
- V1.10.21 (compatible with playzilla G3)


##`2012-09-04` Studio V2.50.37
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to view flash which version is > 10
- Add medias transition tunning for G3 playzilla (on channel property)
- Change the task 'update the time schedule' :
	- add a check box to be able to tune the automatic update of medias
	- the automatic update is for linked medias and containers medias
	- default value is to update medias each 5 minutes
	- You can increase this value or choose not to update it, for the server to have less connections
- Fix a trouble on domains with the character '_'
- Fix a crash while visualizing certain uris. Now, it shows an extra window
>##### **MODELS PACKAGE**
- V1.10.21 (compatible with playzilla G3)


##`2012-07-26` Studio V2.50.36
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix blocking situation while generating a new model, on recent MS-Windows 7 platforms
>##### **MODELS PACKAGE**
- V1.10.21 (compatible with playzilla G3)


##`2012-07-16` Server V2.50.26
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add rotatelogs utility
- Fix trouble when insert by efolder files with space character (efolder)
- Fix drag and drop trouble (efolder)
>##### **MODELS PACKAGE**
- V1.10.21 (compatible with playzilla G3)


##`2012-05-16` Studio V2.50.35
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change Playzilla 2.50.81
- Change Containers are updated each 5 minutes by default
- Fix Studio doesn't use anymore a shared playzilla
- Fix compatibility regression with JAVA 5
- Fix restart Studio during players content upload
- Fix NTLM authentication with JAVA 7
- Fix start date for task executions, with could be before 01/01/1970
- Fix Studio which doesn't start, on rare configurations, with a dependancy library with jvm
>##### **MODELS PACKAGE**
- V1.10.18 (compatible with playzilla G3)


##`2012-01-06` Studio V2.50.34
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with JAVA 7 (JRE 7, JDK 1.7)
- Fix in task edition, many players presence could hide some parts of the edition window
- Fix in container rules, the week-in-month, which could be wrong (=6 for the 2011 30th August)
- Fix a trouble in scene import
- Fix a crash when creating a group for a player which has a variable associated
>##### **MODELS PACKAGE**
- V1.10.18 (compatible with playzilla G3)


##`2011-10-24` Server V2.50.25
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add PHP Soap extension
- Add PHP SqlServer
>##### **MODELS PACKAGE**
- V1.10.18 (compatible with playzilla G3)


##`2011-07-13` Studio V2.50.33
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change use Playzilla 2.50.75
- Change size of properties window is constant
- Fix a group of players deletion
- Fix zones sizes which could be too large
- Fix use an audiovisual scene on an audio channel and vice-versa
>##### **MODELS PACKAGE**
- V1.10.5 (compatible with playzilla G3)


##`2011-07-08` Server V2.50.24
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add an upload service for efolder use (maximum 2GB files, efolder >=1.10.16)
>##### **MODELS PACKAGE**
- V1.10.5 (compatible with playzilla G3)


##`2011-06-30` Studio V2.50.32
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add compatibility with MS-Windows 7 and 64 bits versions
- Add https connection method
- Add baseuri notion for medias (linked medias)
- Add choice between a background color or the background color of the scene (text files)
- Add choice between a background color or the background color of the scene or keeping the background color of the media (for flash files and containers)
- Add the task type between [] (for tasks)
- Change default preview ratio (16/9 when unknown)
- Fix trouble when publishing on very large network of players : ressource was locked
- Fix too much data sent on the network
- Fix trouble when creating a folder with ':' character
>##### **MODELS PACKAGE**
- V1.10.5 (compatible with playzilla G3)


##`2011-05-05` Studio V2.50.27
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add json type variables
- Change containers are updated according to the planning of the 'update the time schedule' task
- Change medias are added in alphabetical order
- Fix containers : metadatas were not visible with efolder
- Fix when editing containers after deleting a user
- Fix when deleting exceptions dates
- Fix random trouble when switching environment
- Fix default start date to 01/01/1970 instead of 15 days before
- Fix trouble on containers edition when using deletion by mouse
>##### **MODELS PACKAGE**
- V1.10.5 (compatible with playzilla G3)


##`2011-03-03` CD-ROM V2.50H (Server V2.50.23, Studio V2.50.26)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add new function in editor containers playlist
- Add maff  and xml models
- Fix possibility to rename subdirectory
- Fix possible trouble copy/paste in calendar
- Fix possible trouble to add scene in calendar
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix possible blocking if great publication
- Fix possibility to have red round player in monitoring Studio
>##### **MODELS PACKAGE**
- V1.10.5 (compatible with playzilla G3)


##`2010-10-28` CD-ROM V2.50G (Server V2.50.22, Studio V2.50.24)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to edit all text file (.html .xml .txt .js .json...)
- Change media with intrinsic duration no define : Studio display "1x" (instead 10s) and media is completely played.
- Fix issue to rename file with a unknow extension
- Fix random trouble to deleting priority message
- Fix random issue to obtain same name for masks files
- Fix random trouble to access permission file
- Fix random trouble when copy/paste greater file in medias
- Fix canal name with xml special characters


##`2010-07-08` CD-ROM V2.50F (Server V2.50.22, Studio V2.50.23)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support files media greater then 2 Go
- Add (CTRL+A) and (CTRL+C) functions in calendar
- Add copy/paste function in calendar for recurrent scenes
- Fix deleting exeptions when reloading calendar
- Fix modification fonts for flash media
- Fix display trouble in update firmware player task


##`2010-06-07` CD-ROM V2.50E (Server V2.50.21, Studio V2.50.21)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix smil generation for flash media, no set 'background' parameter
- Fix URI with character '#'


##`2010-06-07` CD-ROM V2.50D (Server V2.50.21, Studio V2.50.20)
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix possible trouble to creating user
- Fix possible trouble to editing container


##`2010-05-27` CD-ROM V2.50C (Server V2.50.20, Studio V2.50.20)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support to medias pdf, maff, mhtml, https, xls, xlsx, flv, f4v and json
- Add audio scenes
- Add audio channel
- Add selection of scene background color
- Add selection of which zone terminates the scene
- Add conversion of a directory to a container
- Add connection with proxy : http proxy (with or without https tunnel), socks proxy
- Change executable name from 'Innes Studio' to 'Innes PlugnCast Studio'
- Change visual modifications (color)
- Change directory '.configuration' moved to APPDATA
- Improve (optimization) server
- Fix powerpoint compatibilities (imply installing SP2)
- Fix trouble when modifying the time in powerpoint2007 (suppress infinite loop and take the new time)
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add notion of super-administrator
- Add contributor notion : 'FTP/DAV' user
- Fix applet installation trouble

##`2009-03-04` CD-ROM V2.50B (Server V2.50.10, Studio V2.50.11)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add possibility to set the duration of each media
- Change zoom Calendar
- Fix possible black screen on player when using audio zone
- Fix trouble with MS-Windows 64 bits
- Fix possible trouble access permission file. Moving the directory .configuration to a user location (studio\.configuration)
- Fix possible trouble to deleting "canal"


##`2009-12-14` CD-ROM V2.50A (Server V2.50.10, Studio V2.50.10)
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add metadatas and thumbnail (fro new views for medias) (2.5 Generation)
- Add scene filtering for scenes organization (2.5 Generation)
- Add new media type: container, for advanced playlist rules, and shared resources (2.5 Generation)
- Add shared folders and external folders (2.5 Generation)
- Add support SMIL3 standard, with intrinsic medias duration and xpath (2.5 Generation)
- Fix random communication trouble which involves null-sized files
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- New masks models, rework applet views


##`2009-07-01` CD-ROM V2.11L [Server V2.10.18, Studio V2.11.19]
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add WebApp applet


##`2009-07-01` CD-ROM V2.11K [Server V2.10.17, Studio V2.11.19]
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change rename WebApp -> Applet
- Fix trouble when installing in directory different than the default one


##`2009-06-24` CD-ROM V2.11J [Server V2.10.16, Studio V2.11.19]
>##### **STUDIO BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix application blocking when using scene properties
>##### **SERVER BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add LDAP authentification
- Add webapp manager (Not completely functionnal)
