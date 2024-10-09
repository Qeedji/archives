# App SignCom for Screen Composer G4

## `2024-10-09` V1.14.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screen_composer-addin-1.14.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for HTML widget with overlay for AOSP device
>##### **COMPATIBILITIES**
- Screen Composer 4.13.10 (or above)
- AQS 9.10.20 (or above)
    - for TAB10s devices
    - for AMP300 devices
- Gekkota OS V5.12.11 (or above)
    - for DMB300 devices
- Gekkota OS V5.11.12 (or above)
    - for DMB400 devices
- Gekkota OS V4.14.16 (or above)
    - for DMB400 devices
    - for SMA300 devices
- Gekkota OS V4.13.13 (or above)
    - for SMT210 devices
- Gekkota OS V4.13.10 (or above)
    - for DME204 devices
- Gekkota RT V4.14.13 (or above)
    - for MS-Windows PC
- Gekkota OS V3.12.57 (or above)
    - for DMB300 devices
    - for DMC200 devices
- Gekkota RT V3.12.59 (or above)
    - for MS-Windows PC
>##### **KNOWN LIMITATIONS**
- Not yet supported
    - support for *next*, *previous* and *go to page* user interactivity for medias with pagination
- Not supported
    - Gekkota OS/RT V4.13.XX (and below) when the App is containing playfolder with Microsoft 365 services account
    - *scripts to execute* compatible with the *Playzilla* App

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**

User manual SignCom 1.13.10~002A (FR) for INNES Screen Composer 4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/screen-composer-signcom-usermanual-1.13.10~001A_fr.pdf)

User manual SignCom 1.13.10~002A (EN) for INNES Screen Composer 4.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/screen-composer-signcom-usermanual-1.13.10~001A_en.pdf)

User manual SignCom 1.10.11~002D (DE) for INNES Screen Composer 4.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/screen-composer-signcom-usermanual-1.10.10~002D_de.pdf)
#### **POWERSHELL SCRIPTS FOR AZURE ACTIVE DIRECTORY APPLICATION SUPPORT**
- For SignCom 1.10.13 (and above)
    - PowerShell script for Azure Active Directory Application support 1.10.17 [download](https://github.com/Qeedji/archives/blob/master/downloads/scripts/powershell/Powershell_Innes_AAD-1.10.17.zip)
        - Compatible with PowerShell 5.1 (deployed on MS-Windows 10)
#### **MS-POWERPOINT PAGINATION & GEKKOTA 3 DEVICES**
- The  ```Enforce on media with pagination a page progression with a default page duration``` SignCom option is not working when it is running on Gekkota 3 devices
#### **AUDIO**
- Audio volume control is not supported for these media:
    - PDF,
    - PowerPoint,
    - HTML page (HTML video element),
    - Widget.
#### **INFORMATION MESSAGE**
SignCom displays an error message: ```Content temporarily unavailable *path filename* (code <n>)```
| `code <n>` | Information
|:----------|:----------
| code 404 (HTTP error code 404 = file not found) | Re-publish the content on the device, taking care to check that the media actually exists in your library or your playlist does not refer to media that no longer exists
| code 403 (HTTP error code 403 = cannot be accessed) | remote file is no longer available
| code 401 (HTTP error code 401 = authorization required) | access to this media requires authentication that is not resolved by the login and password entered
| code 0 (unsupported media) | this media type is not supported at all by this device type. &sup2;
| code 1 (an error occurred with your media when inserting into *dom*) | an error occurred with your media when playing it &sup1;
| code 2 (error when activating the viewer) | An error occurred with your media when playing it &sup1;
| code 3 (media repeat error) | An error occurred with your media when playing it&sup1;
| code 4 | Media not supported by your device. Remove this media from your content and re-publish.
| code 5 (Control XHR error event) | Change media behaviour (once, fixed duration, or infinite) and re-publish
| code 6 (Event stop or timeout on XHR of control) | Modify media behaviour (once, fixed duration, or infinite) and re-publish

SignCom displays an error message: ```This content *path filename* is not compatible with this device```: to solve the problem, remove this media not supported by your device from your content and publish again your App.

For further information, check the list of supported medias on your device in the *qeedji-supported-medias-and-performances.pdf* file.

&sup1; For further information, check the medias supported by your device

&sup2; For further information, contact *support@innes.pro*

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2023-11-30` V1.13.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screen_composer-addin-1.13.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the *Simple web server* services accounts in URI
	- *domain/identifier/password for a basic authentication*
	- *identifier/password for a basic authentication*
	- *identifier/password for a Web page form*
- Add support for *deviceInfo* variable and the *custom* variable of type *relative URL* in URI
- Fix: some content of some Web page available in https:// was not displayed at all on AOSP devices when that content was coming from a server available in http://
- Fix: when a playfolder was playing the content of an empty folder, the layout of the App was not effective
>##### **COMPATIBILITIES**
- Screen Composer 4.12.10 (or above)
- AQS 9.10.16 (or above)
    - for TAB10s devices
    - for AMP300 devices
- Gekkota OS V5.12.11 (or above)
    - for DMB300 devices
- Gekkota OS V5.11.12 (or above)
    - for DMB400 devices
- Gekkota OS V4.14.16 (or above)
    - for DMB400 devices
    - for SMA300 devices
- Gekkota OS V4.13.13 (or above)
    - for SMT210 devices
- Gekkota OS V4.13.10 (or above)
    - for DME204 devices
- Gekkota RT V4.14.13 (or above)
    - for MS-Windows PC
- Gekkota OS V3.12.57 (or above)
    - for DMB300 devices
    - for DMC200 devices
- Gekkota RT V3.12.59 (or above)
    - for MS-Windows PC

## `2023-01-10` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screen_composer-addin-1.12.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support, for Qeedji System AOSP 9 devices, for *Microsoft 365* and *CIFS* services accounts
- Add support, for Qeedji System AOSP 9 devices, for *deviceInfo* variable type and *deviceInfo* variable type in URL of playfolders that are using *Microsoft 365* and *CIFS* services accounts
- Fix: the App was not starting to play the medias on AOSP devices when two following playfolders were present in the calendar timeslot
- Fix: on Qeedji System AOSP 9 devices, the reboot task and the standby task could not work properly after an inter-media transition has occured
- Fix: when a playfolder, that had nothing to play, was played at first in the calendar timeslot, the others medias located on others zone of the layout were not displayed
- Fix: in summer daylight saving time, when the MS-Windows time was set manually and the daylight saving time was inactivated, the calendar timeslot could display a calendar timeslot with its start time and its end time shifted of one hour
- Fix: some layout option in widget based on older version of *RSS feeds-horizontal banner* content models could make that it could not display the news
- Fix: in some case, the selected value for the *region transition* field of the *Create a region* pane could be hidden by the *region transition* type list
- Fix: in some case, the selected value for the *transition between medias* field of the *Create a region* pane could be hidden by the *transition between medias* list
- Fix: on Qeedji System AOSP 9 devices, in some case, the font style of widgets based on content models was not rendered

## `2022-08-19` V1.11.12 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screencomposer-setup-1.11.12.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some case, the reboot task was not effective on AQS devices
- Fix: in some case, the standby task was not effective on AQS devices

## `2022-08-02` V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screencomposer-setup-1.11.11.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: the code of the index.html file embedded in the widget based on content models could be displayed in overlay on AQS devices when the widget was hosted in a folder containing special characters
- Fix: the fonts of some widgets based on content models was not rendered on AQS devices


## `2022-06-24` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screencomposer-setup-1.11.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for services accounts
    - M365
    - CIFS
- Add support for AQS 9.10.10 for device
    - AMP300
    - TAB10s
- Fix: the title of the manifest tab was not visible after scrolling
- Fix: in some cases, no grid area was displayed inside the intersection of a horizontal banner and a vertical banner
- Fix: some content model could not work properly when the URI basis was containing a *#* character

## `2022-03-18` V1.10.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screencomposer-setup-1.10.11.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for variable with the following types
    - `Custom` variables type
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
- Add support for media behaviour pictogram
- Fix: the date of the calendar timeslot preview could be wrong when the preview date value was entered with the keyboard
- Fix: when the *duration* metadata was added by the user, it was not taken into account in unitary preview or in calendar timeslot preview

## `2021-11-30` V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/app-signcom/signcom-screencomposer-setup-1.10.10.appi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
