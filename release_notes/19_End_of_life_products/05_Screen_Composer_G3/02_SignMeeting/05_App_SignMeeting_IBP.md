# SignMeeting IBP
*RELEASE NOTE*

*Attention not compatible with Screen Composer V3.20.10*

##`2015-06-09` V1.11.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ibp/signmeeting_ibp-screen_composer-setup-1.11.17.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add a confirmation screen when pressing "Room is empty" button
- Add support "book now"
- Add option to come back to background screen when no alarm is present) ("book now" button stays available)
- Add more debug traces for debug (try/catch especially when meeting is finished)
- Change show errors only when initializing server connection
- Add: return to main  screen when timeout "no user activity" of screen "book a meeting" has expired (based on IDLE api)
- Change: alarms for multi are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" and "confirm my presence" button availability issue when playing with navigation menu
>##### **WILL BE CORRECTED IN NEXT VERSION**
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated
	- Book now is not available
- Fix: In case managing several rooms & there is no meeting in all rooms (room screen) & return to background if no meeting is activated & display room names *all* is activated
	- Book now is not available
	- Room name is not displayed on header
>##### **COMPATIBILITIES**
- Screen Composer V3.11.12 *Not compatible with Screen Composer V2.xx.yy*
- Screen Composer V3.20.11 (or above)
- SMT210 platform (in mono-mode)
- DMC200, SMT210, SMA200, SMA300, SMP200, DMB300, WINDOWS platforms (in multi-mode)

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- User manual (EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ibp/signmeeting-ibp-calendar-user-manual-001A_en.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_sm_generic_V1.10.10.css)
#### **NOTE FOR ATTACHMENT**
- Option display "Attachment" from architecture 1.11.XX is not supported
#### **NOTE FOR RESOURCE DESCRIPTION**
- Resource description can not be displayed in IBP version
#### **UPGRADE VERSION**
- Version upgrading is only possible since 1.10.51
- In order to upgrade:
	- open Screen Composer,
		- click on SignMeeting link to configure the app
		- make a modification (ex Title) and
		- click on "finish" button
		- click again on SignMeeting link (version modification should be noticed)
#### **DATASOURCE HOSTED ON DISTANT SERVER**
- Some slowness could be noticed when booking (or cancelling) a meeting in case datasource is referring to distant server with poor reaction capability
#OLD VERSIONS HISTORY
*********************************************************************************************************

##`2014-11-25` V1.10.53 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-ibp/signmeeting_ibp-screen_composer-setup-1.10.53.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix all features for the standard version

##`2014-10-02` V1.10.51
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix server connection

##`2014-09-29` V1.10.50
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix 2 files not present

##`2014-09-23` V1.10.49
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
