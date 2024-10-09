# Img2ppk

#### **SUMMARY**
- The aim of this documentation is to explain how to generate .ppk image from a bitmap image (.bmp) using the `img2ppk.exe`software
- The .ppk images are suitable for SLATE106 devices

## `2018-04-10` V1.11.11 [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/img2ppk-V1.11.11/img2ppk.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *.png in img2ppk graphical interface

#INFORMATION
***********************************************************************
- Input bitmap characteristics:
	- `*.bmp`
	- 800 X 600 pixels
	- RGB, 24bits
	- 16 millions colors
- Output ppk characteristics
	- `*.ppk`
	- 800 X 600 pixels
	- grey colors, 4-level

- Note for ```.bmp```: So after the .bmp image conversion, the rendering of the output image .ppk may be degraded. In case the input bitmap image does not match 800 X 600 pixels, the conversion is resizing the image by keeping the image ratio

- Note for ```.png```: the conversion is not supported so the required format for the input image is 800x600 px

For more information about how to display an image on a SLATE106, refer to SLATE106 user manual.

#### **COMPATIBILITIES**
- MS-Windows 7, MS-Windows 10

#### **DOCUMENTATION**
| Description         | Information
| :-------------------------------------------------------------------------------  |
| Test image bitmap  800x600 | [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/img2ppk-V1.10.10/test_image_800x600.bmp)

# OLD VERSIONS HISTORY
*********************************************************************************************************

## `2018-07-02` V1.11.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/img2ppk-V1.11.10/img2ppk.exe)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for *png* image as well as *.bmp* as input file when used as inline command
	- the required format for input *.png* image is 800x600 px
	- copy the img2ppk and the images png or bmp into your directory (ex: test) and launch img2ppk as described. The .ppk image is created in the same directory with the same name.
		- Launch:
			- c:\test\> ```img2ppk image_800x600.png```
		- Result (if there is no error printed in the console)
			- c:\test\> ```image_800x600.ppk```

## `2018-06-12` V1.10.10 [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/img2ppk-V1.10.10/img2ppk.exe)
- Initial version





