# Img2slate (PPTX, XLSX)
*RELEASE NOTE*

The `Img2Slate` tools allow to generate contents for the office labels for each employee of your company having a SLATE106 installed at its office. The content information is generally the respective:

- employee's name,
- employee's job position,
- company logo,
- room name,
- internal phone number, ...

The content can be generated:

- either since a `MS-PowerPoint` file (one slide per employee)
- or since an `Excel` file

Prerequisite: To use this tools, each SLATE106 devices need to be paired to a `SMH300` hub(s). For further information, read the SMH300 user manual

## `2019-06-25` img2slate-V1.11.12.zip [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/img2slate/Img2slate-V1.11.12.zip)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITIES**
- Gekkota OS V4.11.11 for SMH300 device
- Pictureframe 1.11.10

#INFORMATION
***********************************************************************
#### **UNZIP**
- Unzip the archive ```Img2slate-V1.11.12.zip``` locally on your computer
#### **HUB.PPK**
- the `\img2slate\common-sender.cmd` is configured to write some .PPK picture whose name is `hub.ppk`, meaning for SMH300 device in V4.11.11 (or above)
#### **OFFICE LABEL WITH A MS-POWERPOINT FILE**
- If you wish to create some office labels content for your company employees by using **MS-PowerPoint**, go in the `\img2slate\img2slate1` directory:
	- Open the `Names-Positions.pptx` MS-PowerPoint file, whose the slide resolution is 800 pixel x 600 pixel
		- Associate one slide per each company employee having a SLATE106 device installed at its office
			- Note: the slide number has to match the index of the SLATE106 on the SMH300 hub
		- Fill for each slide your company employees values (names, job position, room name, company logo) then customize the slide as far as wished [rendering example](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/img2slate/pptx-rendering.BMP)
			- Note: keep in mind that the resolution of the SLATE106 is 800x600. That means that too thin line may not appear on the SLATE106 device
		- When finished, save the MS-PowerPoint file into the format: `Device Independent Bitmap (*.bmp)` format (then choose `All the slide`)
			- note: the appropriate .bmp images (one image per slide) are store in the `/Names-Positions` directory (name of the MW-PowerPoint file)
	- Execute `generator.cmd` to generate as much .PPK as there are .BMP file
	- Execute `sender.cmd` to send all the .PPK on your SMH300 hub
		- Warning: edit first `sender.cmd` to check that the IP address is properly set for SMH300 hub(s)
		      ``` @set FOLDERIMAGE=Names-Positions
                  @set TYPEIMAGE=BMP
                  @set URLHUB[0]=192.168.1.0
				  @set URLHUB[1]=192.168.1.1
                  @set NBHUB=1
                  ../common-sender.cmd
              ```
#### **OFFICE LABEL WITH A EXCEL FILE**
- If you wish to create some office labels content for your company employees by using a **MS-Excel file**, go in the `\img2slate\img2slate2`
	- Open the `slate.xlsx` MS-Excel file,
		- Fill the first sheet with the company employees values like names, job position, room name, company logo [rendering example](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/img2slate/xlsx-rendering.PNG)
		- Save your logo into the filename logo.png
	- Execute `picture_builder.hta` to generate as much .PNG file as these is lines in the Excel file
	- Execute `generator.cmd` to generate as much .PPK as there are .PNG file
	- Execute `sender.cmd` to send all the .PPK on your SMH300 hub
		- Warning: edit first `sender.cmd` to check that the IP address is properly set for SMH300 hub(s)
				```
				@set FOLDERIMAGE=slate
				@set TYPEIMAGE=PNG
				@set URLHUB[0]=192.168.1.0
				@set URLHUB[1]=192.168.1.2
				@set NBHUB=1
				../common-sender.cmd
				```

# OLD VERSIONS HISTORY
***********************************************************************

