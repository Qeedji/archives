# SignWay Demo
*RELEASE NOTE*

**With these version, the Excel resources needs to be downloaded and dropped again in your manifest**

## `2024-10-08` V2.10.10_beta7 [download](app-signway/signway_demo-screen_composer-addin-2.10.10_beta07.appi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES** 
- Screen Composer V4.13.10 (or above)
- Gekkota RT 4.14.10 (or above)
- Gekkota OS 4.14.15 (or above) for device
	- DMB400
- Gekkota OS 5.11.10 (or above) for device
	- DMB400

#INFORMATION
***********************************************************************
#### **EXCEL RESOURCES**
- People_directory 002A 
	- FR [download](app-signway/002A/FR/signway_demo-people_directory.xlsx){.free-downloads}
	- DE [download](app-signway/002A/DE/signway_demo-people_directory.xlsx){.free-downloads}   
- Room_directory 002A [download](app-signway/002A/signway_demo-room_directory.xlsx){.free-downloads}
- Keywords 002A [download](app-signway/002A/signway_demo-keywords.xlsx){.free-downloads}  
#### **PC REQUIREMENTS TO RUN GEKKOTA RT**
- MS-Windows computer  
	- Intel Core i7 
	- 8 GB DDR
	- Touch screen
	- MS-Windows 10 Pro
	- WLAN or LAN interface
#### **GEKKOTA RT INSTALLATION**
- On the MS-Windows interactive computer, 
	- Connect the computer to your local network with an Ethernet cable 
	- Keep activated only one Ethernet network interface and note its IPV4 address 
	- Download the [Gekkota RT 4.14.10](http://www.innes.pro/en/support/index.php?Gekkota_G4_for_device/Gekkota_Runtime_for_Windows) and execute the installer *gekkota_rt-nt_ia32-setup-4.14.10.exe*
	- After MS-Windows restart, Gekkota RT 4 starts and display the content *Information - No content* 
#### **SIGNWAY: INSTALLATION, CONFIGURATION AND PUBLICATION WITH SCREEN COMPOSER**
- On your MS-Windows workstation,
	- Download the App SignWay V1.10.17
		- File name: *signway_demo-screen_composer-setup-1.10.17.appi*
	- Download the Excel resources
		- People directory V1.10 
			- signway_demo-people_directory.xlsx (FR or DE)
		- Keywords V1.10
			- signway_demo-keywords.xlsx
		- Room directory V1.10
			- signway_demo-room_directory.xlsx
		- **Warning: do not change the Excel file names**  
	- Install ```Screen Composer 3.20.15``` and open it 
		- Create a new project 
			- project name: *SignWay demo1* (for example)
			- project type: ```Gekkota4 MS-Windows```
			- Press on the *Next* button and select the App ```SignWay Demo - 1.10.17``` 
				- if not already installed, press on the green cross button *Import an App* and choose the App downloaded just above: *signway_demo-screen_composer-setup-1.10.17.appi*. Select the App ```SignWay Demo - 1.10.17```			
			- Press on the *Finish* button
		- In the menu ```Setting > Preferences > devices```, press ```Auto-detect```, and wait for a while. Then register the Gekkota 4 MS-Windows by checking the device found		
		- Click on ```Configure SignWay Demo 1.10.17``` hyperlink to edit the form 
			- Set the ```Delay before going back to the welcome page``` value 
			- Change the ```URL for the page general information``` by yours 
				- default URL value : https://www.innes.pro/ 
			- Save 
		- Add the Excel resources as linked medias in the manifest:
			- Import the Excel resources into your repository using the *Add medias* button   
			- Then drag'n drop the 3 Excel resources from the ```My repository``` tab (on the left) to ```Manifest``` tab (on the right) 
		- Publish 
			- If the publication is OK, the App SignWay should start on the MS-Windows computer
#### **DEFAULT BUILDINGS MAPS**
- The SignWay App Demo is working with buildings maps examples. For custom use, they need to be completely customized:
	- Will be required in this case        
		- A *.pdf or *.png building map for each building level by keeping a unique identifier by room for each level
		- Other technical & design requirements should be filled for the customer building maps to work properly with SignWay
	- For more information, contact sales@innes.pro

#PREVIOUS VERSIONS
***********************************************************************

## `2021-05-03` V1.10.17 [download](app-signway/signway_demo-screen_composer-setup-1.10.17.appi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Remove support for license for Demo App
>##### **COMPATIBILITIES** 
- Screen Composer G3 V3.20.15 (or above)
- Gekkota RT 4.14.10 (or above)

## `2018-12-11` V1.10.13 beta12 [download](app-signway/signway_demo-screen_composer-setup-1.10.13_beta12.appi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for resolution responsivity in landscape mode 
	- minimal: 1200x800 (for example touch tablet devices)
	- maximal: 1920x1080 
- Add support for standby task and reboot task 
- Change: remove the breadcrumb title of the top of the screen for smaller resolution whose width is lower than 1600 pixels      
- Change: remove the support for license for SignWay Demo
- Fix: the way to go to a people office could be not found accross building especially when one building exit was linked to several building inputs
>##### **COMPATIBILITIES** 
- Screen Composer G3 V3.20.15 (or above)
- Gekkota RT 4.10.18 beta3 (demo version)

## `2018-09-27` V1.10.13 beta5 (demo) [download](app-signway/signway_demo-screen_composer-setup-1.10.13_beta5.appi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change the license format

## `2018-09-06` V1.10.13 beta3 (demo) [download](app-signway/signway_demo-screen_composer-setup-1.10.13beta3.appi){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Inital version for demo
>##### **COMPATIBILITIES** 
- Screen Composer G3 V3.20.14 (or above)
- Gekkota RT 4.10.14 beta2 (demo version)