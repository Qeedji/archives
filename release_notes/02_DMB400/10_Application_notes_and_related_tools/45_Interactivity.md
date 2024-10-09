# Interactivity

#### **SUMMARY** `2019-11-13` (last update)

The goal of this application note is to explain how to activate the interactivity with device to support user interaction with:

- USB keyboard
- Innes remote control
- Monitor remote control
	- if CEC is supported
	- to know the key values managed by your monitor remote control, refer to the monitor datasheet
- Touch screen monitor

#### **COMPATIBILITIES**
- Gekkota OS 4.12.10 (or above)
	- DMB400
	- SMA300

#### **KEYBOARD OR REMOTE CONTROL INTERACTIVITY**
The ```innes.hid.keyboard-event.*.authorized``` user preference needs to be set to *true* to support the user interactivity with USB keyboard or infrared remote control.

#### **TOUCH SCREEN**
The ```innes.hid.pointer-event.*.authorized``` user preference needs to be set to *true* to support the user interactivity for example with touch screen devices.

The interactivity with user touch:

- is supported for Web page but
- is not supported for MS-PowerPoint.

When using a touch screen peripheral, the drag and the scrolling are supported properly.

Warning: when using Playzilla 4.XX.YY, it is required to run a playout script `Scrollbar restore` to display the scroll bar along the Web page. For further information refer to the appropriate playout script release note.

#### **APP**
To be interactive with keyboard or monitor remote control, the media has to be played with the behavior ```interactivity``` option activated. For more information, refer to your App publishing software.

For the App ```Qeedji PowerPoint publisher for Media players```, there is no behavior ```interactivity``` option in the ```Settings > Advanced``` menu because the MS-Powerpoint media is always played with the behavior ```interactivity``` option activated.



