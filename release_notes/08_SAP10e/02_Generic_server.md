# Generic_server for SAP10e
*RELEASE NOTE*

Once paired to up to 10 SLATEs, the **generic_server** application allows to:

- connect to a remote file server containing suitable PPK contents,
- update up to 10 SLATEs contents,
- preview the 10 SLATEs contents and watch their synchronization status.

##`2023-06-06` V1.12.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/generic_server/V1.12.10/bm0032_generic_server-sap10e-setup-1.12.10.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: in some rare cases, it was not possible to reach the device on the local network
- Fix: in some case, the device was not restarting automatically after having clicked on the *restore factory preferences* button in the device configuration Web user interface
>##### **COMPATIBILITIES**
- SAP10e device
- Qether 1.12.10 (or above)
>##### **LIMITATIONS**
- the DNS suffix is not yet supported. So the entire domain in the data source server must be entered

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
User manual 1.12.10~002A_en [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/generic_server/V1.12.10/sap10e-generic-server-user_manual-1.12.10~002A_en.pdf)
#### **QEEDJI POWERPOINT PUBLISHER FOR SLATE**
[Link to Qeedji PowerPoint Publisher for SLATE](https://www.qeedji.tech/en/support/index.php?SAP10e/Qeedji_PowerPoint_Publisher_for_SLATE)
#### **QETHER**
[Link to Qether tool](https://www.qeedji.tech/en/support/index.php?SAP10e/Qether)
#### **CONFIGURATION SCRIPT TEMPLATE**
`000000000000.js` template 001A for `generic_server` V1.11.10 (or above) [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/generic_server/V1.11.10/configuration-script-template/000000000000.js)

#OLD VERSIONS HISTORY
***********************************************************************

##`2022-11-15` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/sap10e/generic_server/V1.11.10/bm0032_generic_server-sap10e-setup-1.11.10.bin)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
