# Qeedji PowerPoint Publisher for SLATE

#### **SUMMARY**
Simply by using your MS-PowerPoint software, the *Qeedji PowerPoint publisher for SLATE* PowerPoint Add In allows to publish the slides of your MS-PowerPoint presentation on your SLATEs paired to a `SAP10e` device or to a `SMH300` hub. 
   
##`2024-10-08` V1.11.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia64-setup-1.11.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia32-setup-1.11.10.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `Export` function for SLATE206a device as well as SLATE106 device  
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
    - MS-PowerPoint extension: `.pptx`
- Gekkota OS 4.13.14 (or above) for SMH300 device
- Pictureframe 1.11.12 (or above) for SLATE106 device
- WIS 1.10.10 for SLATE206 device
- Regular 1.11.10 (or above) for SAP10e device   
 
#INFORMATION
***********************************************************************

To export the App to `SLATE206` device: 

- connect the `SLATE206` device to your computer with an USB-C cable,
- open your PowerPoint presentation,
- select the wished slide and hide all the other slides,
- on the `Qeedji` ribbon, press on the `Export PPK` button,
- select the device target radio button: 
	- *SLATE106 (monochrome)*,
	- *SLATE206 (7 colors)*,
- select the *Selected slide* radio button, 
- select the `USB mass storage` of the `SLATE206` device,
- when the operation is finished, unplug the `SLATE206` device from your computer to update the device with your slide content 
 
For further information about use and depending on your needs, refer to the appropriate user manual

- [SMH300 user manual](http://www.innes.pro/en/support/index.php?SMH300/Firmware_and_documentation_for_SMH300)
 
- [SAP10e regular user manual](http://www.innes.pro/en/support/index.php?SAP10e/Regular)

- [SAP10e generic_server user manual](http://www.innes.pro/en/support/index.php?SAP10e/Generic_server)

PowerPoint template with sections 001B [download](application-notes/qeedji_powerpoint_publisher_for_slates/medical-practice_qeedji-template-with-sections.pptx){.free-downloads}  

PowerPoint template without sections 001B [download](application-notes/qeedji_powerpoint_publisher_for_slates/medical-practice_qeedji-template-without-sections.pptx){.free-downloads}  

Before installing a new MS-PowerPoint add-in version, it is advised to:
- close MS-PowerPoint then 
- uninstall the previous MS-PowerPoint add-in version.

The device discovery by UPnP may not work when the IP address of your computer is static instead of DHCP
  
In case the version of the MS-PowerPoint add-in in the About pane is not corresponding the MS-PowerPoint add-in version just installed, try to disconnect from Office 365 then sign in again

#OLD VERSIONS HISTORY
***********************************************************************

##`2022-11-03` V1.10.12 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia64-setup-1.10.12.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia32-setup-1.10.12.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `Export` function 
- Fix: the PPK content for a given index was updated even when the slide having this index was hidden

##`2021-01-14` V1.10.11 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia64-setup-1.10.11.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia32-setup-1.10.11.msi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for `SAP10e` devices  
- Change: when publishing on several devices at a time, the MS-PowerPoint section detection is done every 10 SLATEs
>##### **COMPATIBILITIES**
- MS-Windows 10, MS-Windows 8.x
- MS-Office 2010, MS-Office 2013, MS-Office 2016, Office 365
    - MS-PowerPoint extension: `.pptx`
- Gekkota OS 4.13.14 (or above) for SMH300
- Pictureframe 1.11.11 (or above) for SLATE106
- Regular 1.10.10 (or above) for SAP10e    

##`2019-10-17` V1.10.10 [download (nt_ia64)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia64-setup-1.10.10.msi){.free-downloads} [download (nt_ia32)](application-notes/qeedji_powerpoint_publisher_for_slates/qeedji_powerpoint_publisher_for_slate-nt_ia32-setup-1.10.10.msi){.free-downloads}
- Initial version
