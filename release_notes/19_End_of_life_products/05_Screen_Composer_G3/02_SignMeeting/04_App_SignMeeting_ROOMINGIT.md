# SignMeeting ROOMING IT
*RELEASE NOTE*

##`2019-06-17` V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-roomingit/signmeeting_roomingit-screen_composer-setup-1.13.10.appi)
>##### **IMPORTANT**
- For users having existing `SignMeeting` projects in the previous version `SignMeeting 1.12.XX`,
    - Install `Screen Composer V3.20.15`
    - Open your existing SignMeeting project, import the new App `SignMeeting version 1.13.10`
    - To complete the migration, **edit the SignMeeting's form** as usual. Save the form by pressing on the `Finish` button and close the form.
    - Edit the SignMeeting's form once again to check the version shown in the form.
        - The label version **V1.13.10** on the top right corner of the form indicates that the migration has been completed [see the version](https://github.com/Qeedji/archives/blob/master/downloads/SignMeeting_upgrade_to_V1.13.10.jpg)
        - In case the version is still 1.12.XX, go in the Screen Composer menu ```Settings > Preferences > Project and App``` and click on the App version ```Upgrade``` button. For further information, contact support@innes.pro
	- Warning: some legacy custom-script V1.12.XX which are allowing for some customer to create some custom button may be not compatible with the SignMeeting V1.13.10 because some of them are using some deprecated xpf function. The customers which are using custom scripts are invited to use the new ones in the version 1.13.10 available for download below in the part **CUSTOM SCRIPTS FOR EXTRA BUTTONS EXAMPLE**. . In case your script is not available here, contact support@innes.pro to get the custom script in the new version 1.13.10.
    	- Custom buttons examples :
        	- ```Maintain/Resume```,
        	- ```Open/Close the door```,
        	- ```Open/Resume```
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for Gekkota 4 devices
- Add support in the `Room Label` layout for ```Check In``` button to confirm a meeting, and ```Check Out``` button to free the room resource
- Add support for screen saver feature
    - `Room screen` layout:
        - `Background content when there is no current meeting nor near future meeting`
            - `Show the screen saver after <x> min, and leave <y> min before the start of the next meeting`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactiv marker`
                    - Label to display <free text>
                - note: if no custom CSS has been applied, the default "Innes" logo appears on the default screen saver
    - `Summary screen by event` & `Summary screen by resource` layouts:
        - `Background content when there is no current or future meeting`
            - `Label to display when no screen saver`
            - `Show the screen saver after <x> min`
                - `Image or video media to display`
                    - *file selection*
                - `Use an interactiv marker`
                    - Label to display <free text>
- Add support for a background image in each Main page tab of each layout
    - `Summary screen by event`
    - `Summary screen by resource`
    - `Room screen`
- Add support in the `Main page` tab of the `Room screen` layout for a default message to be displayed when there is no meeting
    - `Text when there is no current meeting`
    - `Text when there is no next meeting`
- Add support new version of custom CSS supporting
    - a new default background
    - new button colours
    - a specific rendering customization per device based on their devices `MAC`, `UUID` or `Hostname` identification method value or on their `FIELD<1..5>` variable value
	- an optional background image in the notification screen (`notificationpage_background` value in custom CSS)
- Add support for an option to display or not each label (*Room Screen* layout)
- Add support for modifying the *Menu* button title of the main screen (*Room Screen* layout)
- Add support for modifying the *Notification* button title of the main screen (*Room Screen* layout)
- Add support for USB smart card reader
- Add *badgeID* value as the default value for the LDAP filtering *cross reference attribute* field
- Add new date formats
   - *ddd d mm yyyy* (ex: Thu 23/12/2019)
    - *dddd d mmmm yyyy* (ex: Thursday, December 23, 2019)
    - *dd mmmm yy* (ex: May 23, 19)
- Change: in German regionality, the date format containing slash characters (ex: `dd/mm/yyyy`) is displayed in a date format containing dots (ex: `dd.mm.yyyy`)
- Change: the default CSS colour for the current meeting of the `Room Screen` layout is now dark grey (instead of black)
- Change:
    - The `Scenario` tab permitting to set a default media to play has been deleted from App SignMeeting letting taking place a screen saver feature
    - The default message when there is no meeting has been removed from the individual device configuration and added in the `Main page` tab of the `Summary screen by event` and `Summary screen by resource` layout. The user has to enter a new label if required.
    - The `background content` has been removed from the individual device configuration and added in the `Main page` of each layout
- Fix: the request windows value used for data cache was one day too much
- Fix: sometimes, the second next meeting was not displayed in *RoomLabel* layout
- Fix: in some cases, a registered player could not appear in the SignMeeting form
- Fix; in some cases, a SLATE106 device could have a wrong index
- Fix: the label of the *Notification* button could be too large
- Fix: add possibility for several SLATE106 device to display the meeting information of a same room
>##### **COMPATIBILITIES**
- Rooming It 6.X
- Screen Composer V3.20.15 (or above)
- Gekkota 3.12.57 (or above)
    - *Summary screen by event*: DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
    - *Summary screen by resource*: DMC200, SMT210, SMA200, SMP200, SMA300, DMB300, WINDOWS platforms
    - *Room Screen*: SMT210
    - *Room Label*: SMH300
- Gekkota 4.11.10 (or above)
    - *Summary screen by event*: SMT210, SMA300, DMB400, DME204
    - *Summary screen by resource*: SMT210, SMA300, DMB400, DME204
    - *Room Screen*: SMT210
    - *Room Label*: SMH300
- LDAP V3 (used by Windows Server 2000/Active directory and above Windows Server version)
- Briva LDAP
- CSS 1.13.10
- Custom Script 1.13.XX

#INFORMATION
***********************************************************************

#### **DOCUMENTATION**
- SignMeeting Rooming IT User manual (1.13.10-021A/EN) [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signmeeting-roomingit/signmeeting-roomingit-user-manual-1.13.10-021A_en.pdf)
#### **CSS FILE FOR SIGNMEETING 1.13.XX**
- CSS File V1.13.10 for *Room Screen* layout  [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_screen/signmeeting_theme_room_screen_1.13.10.css)
- CSS File V1.13.10 for *Room Label* layout [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/room_label/signmeeting_theme_room_label_1.13.10.css)
- CSS File V1.13.10 for *Summary screen by resource* layout [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/summary_screen_by_resource/signmeeting_theme_summarization_by_resource_1.13.10.css)
#### **CUSTOM SCRIPTS FOR EXTRA BUTTONS - EXAMPLE**
- meetingControlDistech V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistech_1.13.10.js)
- meetingControlDistechWithAuth V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDistechWithAuth_1.13.10.js)
- meetingControlDoor V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlDoor_1.13.10.js)
- meetingControlSM V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes-signmeeting/custom-js/meetingControlSM_1.13.10.js)



