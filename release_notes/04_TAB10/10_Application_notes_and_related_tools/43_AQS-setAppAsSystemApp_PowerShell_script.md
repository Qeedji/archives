# AQS-setAppAsSystemApp Powershell script
*RELEASE NOTE*

This PowerShell script allows to generate a `app-list-signed.xml` file from a `app-list.xml` containing the applicationId of APKs to be granted as System App. The content of the generated `app-list-signed.xml` file can be then copied in a configuration script so that the APK, using `AQS` or `AOSP` features requiring `system user` execution rights, can be executed on the `AQS` device.

## `2022-09-05` AQS-setAppAsSystemApp~001B.zip [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/aosp/powershell-script/AQS-setAppAsSystemApp/delivery/AQS-setAppAsSystemApp~001B.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `xml` file name definition in the PowerShell command
>##### **COMPATIBILITIES**
- AOSP Qeedji System 9.10.10 beta11 (or above) for
    - TAB10s device
- AOSP Qeedji System 9.10.10 beta3 (or above) for
    - AMP300 device

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
For further information, refer to the *TAB10s* and *AMP300* developer manual.

# OLD VERSIONS HISTORY
***********************************************************************

## `2022-08-08` AQS-setAppAsSystemApp~001A.zip
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
>- Initial version
>##### **COMPATIBILITIES**
- AOSP Qeedji System 9.10.10 beta11 (or above) for
    - TAB10s device
- AOSP Qeedji System 9.10.10 beta3 (or above) for
    - AMP300 device
