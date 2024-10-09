# Img2slate (PPTX, XLSX)
*RELEASE NOTE*

The `Img2Slate` tools allow to generate a content for the office labels for each employee of your company having a SLATE106 installed at its office. The content information is generally:
- the employee's name, 
- the employee's job position, 
- the company logo, 
- the room name, ...

The content can be generated:
- either since a MS-PowerPoint file (one slide per employee)
- or since an Excel file 

Prerequisite: To use this tools, each SLATE106 devices need to be associated to a SMH300 hub(s). For further informaton, read the SMH300 user manual  
    
##`2019-06-25` img2slate-V1.11.12.zip [download](application-notes/img2slate/img2slate-V1.11.12.zip){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version	 
>##### **COMPATIBILITIES**
- Gekkota OS V4.11.11 for SMH300 device

#INFORMATION
***********************************************************************
#### **UNZIP**  
- Unzip the archive img2slate-V1.11.12.zip locally on your computer
#### **OFFICE LABEL WITH A MS-POWERPOINT FILE**
- If you wish to create some office labels content for your company employees by using **MS-PowerPoint** [view rendering](application-notes/img2slate/img2slate-V1.11.12.zip){.free-downloads}, go in the `\img2slate\img2slate1` directory;
	- Open the `Names-Positions.pptx` MS-PowerPoint file, whose the slide resolution is 800 pixel x 600 pixel
		- Associate one slide per each company employee having a SLATE106 device installed at its office
			- Note: the slide number has to match the index of the SLATE106 on the SMH300 hub
		- Fill for each slide your company employees values (names, job position, room name, company logo) then customize the slide as far as wished [rendering example](application-notes/img2slate/pptx-rendering.jpg){.free-downloads}
			- Note: keep in mind that the resolution of the SLATE106 is 800x600. That means that too thin line may not appear on the SLATE106 device
		- When finished, save the MS-PowerPoint file into the format: `Device Independent Bitmap (*.bmp)` format (then choose `All the slide`)
			- note: the appropriate .bmp images (one image per slide) are store in the `/Names-Positions` directory (name of the MW-PowerPoint file)   
	- Execute `generator.cmd` to generate as much .PPK as there are .bmp file 
	- Execute `sender.cmd` to send all the .PPK on your SMH300 hub
		- Warning: edit first `sender.cmd` to check the ip address set for SMH300 hub(s)
		      ``` @set FOLDERIMAGE=Names-Positions
                  @set TYPEIMAGE=BMP
                  @set URLHUB[0]=192.168.1.0
				  @set URLHUB[1]=192.168.1.1
                  @set NBHUB=1
                  ../common-sender.cmd
              ```
#### **OFFICE LABEL WITH A EXCEL FILE**
- If you wish to create some office labels content for your company employees by using a **MS-Excel file**, go in the `\img2slate\img2slate2`
	- Open `slate.xlsx`, 
		- Fill the first sheet with the company employees values like names, job position, room name, company logo [rendering example](application-notes/img2slate/xlsx-rendering.jpg){.free-downloads}
		- Save your logo into the filename logo.png
		- Execute `picture_builder.hta` to generate as much .PNG file as these is lines in the Excel file
		- Execute `generator.cmd` to generate as much .PPK as there are .png file
		- Execute `sender.cmd` to send all the .PPK on your SMH300 hub
			- Warning: edit first `sender.cmd` to check the ip address set for SMH300 hub(s)
				```
				@set FOLDERIMAGE=slate
				@set TYPEIMAGE=PNG
				@set URLHUB[0]=192.168.1.0
				@set URLHUB[1]=192.168.1.2
				@set NBHUB=1
				../common-sender.cmd
				```

#OLD VERSIONS HISTORY
***********************************************************************

