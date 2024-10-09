# SignMeeting GESROOM
*RELEASE NOTE*

*Attention not compatible with Screen Composer V3.20.10*

##`2015-06-09` V1.11.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-gesroom/signmeeting_gesroom-screen_composer-setup-1.11.17.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add confirmation screen when pressing "Room is empty" button
- Add support "book now"
- Add option to come back to background screen when no alarm is present ("book now" button stays available)
- Add: return to main screen when timeout "no user activity" of screen "book a meeting" has expired (based on IDLE api)
- Add more debug traces for debug (try/catch especially when meeting is finished)
- Change show errors only when initializing server connection
- Change: alarms for mono are now fixed (not configurable)
- Change user error message when associating a same ressource twice to a player
- Change (multi-portrait) default displayed lines number is 15 (instead of 14) when banner is present
- Fix (multi) random banner display issue when logo is activated (linked media management)
- Fix error message not displayed when the player not properly configured
- Fix "Book now" button availability issue when playing with navigation menu
- Add possibility to set position of the banner at the top (or at the bottom) of the screen.
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
- User manual (EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-gesroom/signmeeting-gesroom-calendar-user-manual-002A_en.pdf)
#### **CSS FILE FOR TAB STYLE**
- CSS File [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/theme_css_generic_V1.10.11.css)
#### **NOTE FOR CONFIRM MY PRESENCE**
- Button "Confirm my presence" from architecture 1.11.XX is not supported
#### **NOTE FOR ATTACHMENT**
- Option display "Attachment" from architecture 1.11.XX is not supported
#### **NOTE FOR RESOURCE DESCRIPTION**
- Resource description can not be displayed in GESROOM version
#### **UPGRADE VERSION**
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

##`2014-10-17` V1.10.51 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-gesroom/signmeeting_gesroom-screen_composer-setup-1.10.51.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Compatibility with Screen Composer 3.11.x
