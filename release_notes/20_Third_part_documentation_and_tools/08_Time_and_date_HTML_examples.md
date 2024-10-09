# Time and date (HTML file example)

#### **SUMMARY**
- The goal of this application note is to give some HTML file examples able to display
	- date of the day or
	- time of the day or
	- date + time of the day

- You have to modify the HTML file according to your needs:
	- Modify the fonts and background style according to your needs:
		- HTML extract
			- ```#dateDIV
				{
					font-family: Arial;
					font-style: italic;
					font-weight: bold;
					color:black;
					/*background-color:rgb(255,0,255);*/
					text-align:center;
					height:100%;
				}```
	- For more information about CSS properties (font-style, font-weight, and so on), please refer to ```https://www.w3schools.com/cssref/``` (CSS properties chapter)
	- The date format is *dd/mm/yyyy* (ex: ```24/10/2016```) or *dd month_in letter year* (```24 octobre 2016```)
	- When months are displayed in letter (```monthInLetter = true``` by default), they are displayed in French (if required, translate each month name according to your language and replace in the file). In order to diplay the months in number, set ```monthInLetter = false```
	- When day are display (```printDay == true``` by default), they are displayed in French (if required, translate each day name according to your language and replace in the file). In order to not diplay the day, set ```printDay == false```
	- In case background color is not set (value by default), the background is transparent
	- It is recommended to use a banner aspect ratio to not impact the font size
		- The HTML is containing a formula with the variables ```textRatio``` and ```marginPercent```. The formula is decreasing automatically the font size when the zone width is too small. Their value are depending on the HTML which is used. You can settle this value according to your need
	- Three colour formats are supported
		- text:
			- ex: ```red;```, ```yellow;```, ```blue;```, and so on
		- RGB (red value from 0 to 255, green value from 0 to 255, blue value from 0 to 255)
			- ex: ```rgb(255,0,255);```
		- RGB hexa:
			- ex ```#FE0A56;```
	- The separator between date and time is the dash character (``` - ```). You can modify it according to your need
	- Time is displayed with 24h format

#INFORMATION
***********************************************************************
## `2016-10-26` V1.10.11
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- HTML Date & time V1.10.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/date-et-heure-V1.10.11.zip)
	- Add display option: day in letter (French language)
- HTML Date V1.10.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/date-V1.10.11.zip)
	- Add display option: day in letter (French language)

# OLD VERSION
***********************************************************************
## `2016-10-24` V1.10.10
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- HTML Date & time V1.10.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/date-et-heure-V1.10.10.zip)
	- Initial version
- HTML Date V1.10.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/date-V1.10.10.zip)
	- Initial version
- HTML Time V1.10.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/tools/heure-V1.10.10.zip)
	- Initial version





