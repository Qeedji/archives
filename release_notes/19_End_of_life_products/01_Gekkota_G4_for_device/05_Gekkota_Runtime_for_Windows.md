# Gekkota Runtime
*RELEASE NOTE*

To avoid any unexpected network trouble when working with Gekkota RT, it is recommended to inactivate all the other LAN interfaces of your player MS-Windows (LAN Bluetooth, virtual LAN...) than the main MS-Windows Ethernet LAN interface.

## `2022-12-20` V4.14.13 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-4.14.13.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *Microsoft 365* services accounts
- Add support for *CIFS* services accounts
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/`
- Fix: in some case, the device could finalize the App content downloading coming from *XPF* server only after a device reboot
- Fix: the `_` character was not supported in the *Name* input of the *Logs* pane in the *Maintenance* menu of the device configuration Web interface
- Fix: in some case, the audio channel could start several dozens of seconds after the visual channel has started (App mode in *Pull WebDAV - xpf compatibility*)
- Fix: the App newly published was not taken into account as soon as the App was containing a playfolder using a Microsoft 365 services account
- Fix: since recent YouTube streaming modification, the device was rebooting when playing Web TV URI
- Fix: in some case, the date shown in the Web user interface was wrong

>##### **KNOWN LIMITATIONS**
- These video containers may not be supported: *.asf*, *.wmv*, *.vob*, *.mpg*, *.mpeg*, *.m2v*, *.avi*, *.ts*
- Some *.mov* video may not be supported
- UDP video playback is not supported
- Screen wall capabilities: not communicated

#INFORMATION
***********************************************************************

#### **RECOMMENDED CONFIGURATION**
- MS-Windows 10 (or MS-Windows 7),
- Core i7 (or i5),
- RAM: 4 GB (or more),
- Hard disk: 128 GB (or more),
- Graphics card: depends on your needs (video decoding hardware performances, screen wall capabilities, ...). For further information, contact your computer reseller and check this point.

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2022-04-06` V4.14.10 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-4.14.10.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for GAP App (`.gap` extension) downloading in the *Pull WebDAV* mode of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for GAP App (`.gap` extension) loading in the *Local deposit* mode of the *App* pane of the *Configuration* menu of the Web user interface
- Add support for `launcher.cacheManager` Web IDL to pause/resume downloading of GAP App
- Add support for `utils.preferencesManager` Web IDL to add new custom preferences
- Add support for `ioManager` Web IDL to get remote file and install it in file system
- Change: after a reboot, the default URL entry for the Web page is now `http://<device_ip_addr>/.playout/`
- Change: when a `.gap` extension is detected in the URL field of the *Pull WebDAV* radio of the *App* pane of the *Configuration* menu, the slash character is not automatically added at the end of the URL
- Change: update the list of embedded trusted root certificates
- Change: it is now possible to copy the EDID value from the *Screens* pane of the *Information* menu of the Web user interface
- Change: renamed the button label *Purge the App* into *Uninstall the App* in the *App* pane of the *Configuration* menu of the Web user interface
- Change: when coming straight from factory or after having pressed on the *Factory preferences settings* button,
	- the *Status server* checkbox and the *Software and configurations installation server* are not activated anymore in the *Server* pane of the *Configuration* menu of the Web user interface
	- the *Use this URL for Status server and software and configurations installation server* checkbox is not activated anymore in the *App* pane of the *Configuration* menu of the Web user interface
- Fix: the following character string `#&` was not displayed properly in the Web user interface
- Fix: unexpected carriage return was noticed in text areas having space characters with some Web page
- Fix: some PDF document could take too much time to be displayed when using interactive widget to open it
- Fix: some Web page could be not displayed anymore
- Fix: after a App content updating by a USB mass storage insertion in the device, the state value of the launcher HTML tag in the device status was not updated with the right value

## `2021-05-03` V4.13.15 [download for Windows 7+](https://github.com/Qeedji/archives/blob/master/downloads/gekkota-rt/gekkota_rt-nt_ia32-setup-4.13.15.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version supporting a HTML Web configuration interface
