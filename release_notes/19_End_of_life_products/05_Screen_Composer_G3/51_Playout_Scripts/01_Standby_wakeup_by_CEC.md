# Standby or wake up through HDMI/CEC

#### **SUMMARY**
When executed by the device, this script permits to:
- set the active HDMI source through HDMI/CEC at a programmable time
- set the monitor in standby through HDMI/CEC at a programmable time
- wake-up the monitor through HDMI/CEC at a programmable time

It can be used when your specific monitor does not support AVCommand (DDC/CI, LAN, RS232 DTE) but do support properly the CEC


Your monitor has to support properly the CEC(&sup1;)(&sup2;):

- (&sup1;) for SAMSUNG monitors, the CEC activation is often made through the *Anynet* OSD menu
- (&sup2;) for LG monitors, the CEC activation is often made by using the *Simplink* key of the remote control

## `2019-02-26` Script V1.10.12 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/cec/CEC-V1.10.12.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITY**
- Gekkota 4.11.10
- Screen Composer 3.20.14
- PlugnCast 3.10.50


#INFORMATION
***********************************************************************
- Import the script in your library
- Insert the script in the `Script to execute` panel
- Edit the script and change the programmed time
```
    /* Standby mode (hours:minutes) */
  	var standbyTime = "18:00";

  	/* Wake up the screen (hours:minutes) */
  	var onTime = "9:00";

  	/* Set active HDMI source (hours:minutes)*/
  	var activeSrcTime = "9:01";
```
