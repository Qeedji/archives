# Qeedji PowerPoint Publisher for Media Player

#### **SUMMARY**
The goal of application note is to explain how to install and use the *Qeedji PowerPoint Publisher for Media Player* PowerPoint addin.

##`2022-08-04` V1.11.10 [download (nt_ia64)](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia64-setup-1.11.10.msi) [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_addin/qeedji_powerpoint_publisher_for_media_players-nt_ia32-setup-1.11.10.msi)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for AQS for device
	- AMP300
	- TAB10s
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
	- *.pptx
- Gekkota 4.12.10 (or above) for device
	- DMB400
	- SMA300
	- DME204
- AQS 9.10.10 (or above) for device
	- AMP300
	- TAB10s

#INFORMATION
***********************************************************************

#### **STATUS REPORT**
The *Publishing status report* is showing whether the publishing for each device has succeeded or not:

- ```Publishing succeeded```: the publication has succeeded
- ```Publishing failure (Error: 503)```: the publishing has failed. Please double check the network connection between your PC and the device

*Publishing status report* example:
```
1/7 - Publishing on device: AMP300 (192.168.1.84)
    Publishing succeeded

2/7 - Publishing on device: DMB400-F1 (192.168.1.140)
    Publishing succeeded

3/7 - Publishing on device: SMA300-F1 (192.168.1.88)
    Publishing succeeded

4/7 - Publishing on device: TAB10s (192.168.1.85)
    Publishing succeeded

5/7 - Publishing on device: SMA300-H2 (192.168.1.38)
    Publishing succeeded

6/7 - Publishing on device: SMA300-WWAN (192.168.1.91)
    Publishing succeeded

7/7 - Publishing on device: dmb400-t3 (192.168.1.173)
    Publishing succeeded


Publishing completed
    Warning - Unable to find the following fonts: Fira Sans Condensed Light, Proxima Nova Semibold, Proxima Nova
```

The *Publishing status report* is showing also whether the MS-PowerPoint media can be rendered with the right fonts.
In case some fonts can not be found on the Windows OS, a message ```Warning - Unable to find the following fonts``` is displayed followed by the missing fonts names. To solve the rendering issue, install the missing fonts on your Windows OS and publish again.

Windows fonts location:

- The default Windows font are installed here: ```C:\Windows\Fonts```.
- The custom fonts installed by the user are installed here: ```C:\Users\<username>\AppData\Local\Microsoft\Windows\Fonts```

#### **ADD A CUSTOM FONT**
Retrieve the appropriate custom font (.ttf most of time). Double click on it to install it on your Windows OS. Publish the PowerPoint again.

#### **REPLACE A CUSTOM FONT BY ANOTHER ONE IN THE WHOLE POWERPOINT DOCUMENT**
If you don't manage to retrieve the font, you can decide to replace the missing custom font by another one, existing this time, in the whole PowerPoint document.
In this case, use the ```Home > Replace > Replace Fonts``` PowerPoint menu.

#### **ADDIN UNINSTALLATION**
To remove the ```Qeedji PowerPoint Publisher for Media Player```addin from your Windows OS, use the ```Add or remove programs``` Windows menu, then remove the program ```Qeedji PowerPoint Publisher for Media player```.

#### **MISCELLANEOUS**
- The scheme ```https://``` is not supported in this version
- When the App ```Qeedji PowerPoint Publisher for Media Player``` is not supported by a device (older OS, Smart monitor), the message below is displayed
```
Information
The App "Qeedji Powerpoint Publisher for Media players" is not supported on this device
```
- In some rare cases, this message could be prompted when opening MS-PowerPoint. In this case, do ignore the message by clicking *No*:
```
Powerpoint has problems with the Qeedji complement.
If the problem persists, disable this add-on and check for updates. Do you want to disable it now? (yes/no)
```

