# Link some device variables to a MS-PowerPoint media

#### **SUMMARY**
The aim of this documentation is to explain how to make a MS-PowerPoint media having links to some device variables. Once published on the device, the MS-PowerPoint media is displaying the device variable value of the device on which it is played. The type of device variable values are:
| Device variable types                  | Description                      | Default value           | Can be changed
|:--|:--|:--|:--
| ```MAC```                              | device MAC address               | value stored at factory | no
| ```UUID```                             | device UUID                      | value stored at factory | no
| ```HOSTNAME```                         | device hostname                  | value stored at factory | yes
| ```field<i>``` (```<i>``` from 1 to 5) | variable present by defaut       | empty                   | yes
| ```Custom variable```                  | variable not present by default* | *                       | *

*The custom variable name and value need to be created by the user, as well as the variable value affectation to the device. For further information, read the PlugnCast user manual.

Each time a device variable value is used in the MS-PowerPoint media, a link has to be done between the object text input and the device variable name.

The supported device variable formats are respectively:
| Variable type | MS-PowerPoint link name pattern
|:--|:--
| MAC | ```$deviceInfo:mac```
| UUID | ```$deviceInfo:uuid```
| HOSTNAME | ```$deviceInfo:hostname```
| field1 to field5 | ```$deviceInfo:field1```, ```$deviceInfo:field2```, ```$deviceInfo:field3```, ```$deviceInfo:field4```, ```$deviceInfo:field5```
| custom variable |```$custom:<variable_name>``` (for example: ```$custom:City```)

If a same variable value need to be used twice, 2 links need to be created with 2 different names. The best practise is to name the links in this case as shown below:

| Variable type    | MS-PowerPoint link name pattern
|:--|:--
| MAC              | ```{$deviceInfo:mac}_1```, ```{$deviceInfo:mac}_2```
| UUID             | ```{$deviceInfo:uuid}_1```, ```{$deviceInfo:uuid}_2```
| HOSTNAME         | ```{$deviceInfo:hostname}_1```, ```{$deviceInfo:hostname}_2```
| field1 to field5 | ```{$deviceInfo:field2}_1```, ```{$deviceInfo:field2}_2```
| custom variable  | ```{$custom:<variable_name>}_1``` (for example ```{$custom:City}_1```)

For further information, download the MS-PowerPoint example below and publish it like this on your device (without editing it).
Due to MS-PowerPoint issue, opening the MS-PowerPoint media is breaking all the existing links. To workaround, make the links again and save the MS-PowerPoint.

#### **COMPATIBILITY**
- Gekkota 4.12.10
- Screen Composer 3.20.15
	- Playzilla 4.12.10
- PlugnCast 3.10.51
	- Playzilla 4.11.13

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
| Description                                                                      | Version |                 |
| :------------------------------------------------------------------------------- | :-------| :-------------- |
| MS-PowerPoint example (EN)                              | 001E    | [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/powerpoint_variable_example-001E.pptx) |
#### **TO LINK A TEXT INPUT TO A DEVICE VARIABLE**
- In MS-PowerPoint
	- Select a text input
	- Go in the MS-PowerPoint menu ```File > Information > Properties > Advanced properties```
		- Paste the appropriate name link
			- for example ```{$deviceInfo:mac}_1``` to display the MAC address
		- Check the option ```Link to content```
		- Press on ```Add``` button
- Warning before viewing your final configuration
	- before returning to the menu ```File > Information > Properties > Advanced properties``` to view your final configuration, think to unset the focus from any input texts using a variable, else some the link of this text input will be automatically broken
- Save your MS-PowerPoint and publish it on your different devices.


