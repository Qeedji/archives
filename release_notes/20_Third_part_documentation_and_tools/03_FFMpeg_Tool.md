# FFMpeg Tool

#### **SUMMARY**
- The goal of this application is to explain how to get FFmpeg 64-bit (or 32-bit) Static and how to use it

#### **HOW TO GET FFMPEG STATIC 64/32 bits**
- Once ffmpeg is installed on your PC, it permits to manipulate video and apply some action on it (video split, changing metadata, and many others functions...).
- FFMpeg static build for Windows is a binary .exe available for download on ```https://ffmpeg.zeranoe.com/builds/```
	- You have to choose between 32 and 64 bits (depending on your PC Windows OS configuration)
		- Example of archive name for 64 bits : ```ffmpeg-20160418-git-13406b6-win64-static.7z```
- Once downloaded on your PC, extract the archive with 7zip software in a local directory of your PC.
- Install then one of the script below in the directory where is situated the FFmpeg binary (```bin/ffmpeg.exe```). In case no script is available for download, create a file .bat and copy the command line  in it.
- The scripts are given as examples. You have to edit and modify them to match your needs (for example: video name)
- Finally, double click on .bat to execute your script
- The list of ffmpeg functions is very huge. Please refer to ffmpeg official site for more information
- Innes can not be responsible of video degradation in case wrong using of these scripts
#### **METADATA**
- FFMpeg: set metadata table at the beginning of the video
	- ```ffmpeg.exe -i myVideoInput.mp4 -map 0 -c copy -movflags faststart myVideoOutput.mp4```
#### **EXTRACT A VIDEO SAMPLE (t1 to t2)**
- FFMpeg: extract a part of a video from t1 (X1h:0Ym:Z1s) to t2 (X2h:Y2m:Z2s) [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/extract_a_part_of_video_T1min_to_T2min-V1.10.10.bat)
	- ```ffmpeg -ss 00:01:00 -i myVideoInput.mp4 -to 00:02:00 -c copy myVideoOutput_4.mp4```
#### **SPLIT SPACIALLY 1 (4K) to 4 (FULL HD)**
- FFMpeg: split spatially a video mp4 3840x2160 (standard 4K) in 4 videos mp4 1920x1080 (standard Full HD) [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/crop_4-V1.10.10.bat)
	- Quarter Top-Left
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1920:1080:0:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_1.mp4```
	- Quarter Top-Right
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1920:1080:1920:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_2.mp4```
	- Quarter Bottom-Left
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1920:1080:0:1080" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_3.mp4```
	- Quarter Bottom-Right
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1920:1080:1920:1080" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_4.mp4```
#### **SPLIT SPATIALLY 1 (TRYPTIC) to 3 (FULL HD)**
- FFMpeg: split spatially a video mp4 3240x1920 into 3 videos mp4 1080x1920 (standard Full HD) [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/crop_3_tryptic-V1.10.10.bat)
	- Left
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1080:1920:0:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_1.mp4```
	- Middle
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1080:1920:1080:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_2.mp4```
	- Right
		- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter:v "crop=1080:1920:2160:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput_3.mp4```
#### **DOWNSCALE A TRYPTIC VIDEO (to custom resolution)**
- FFMpeg: downscale: transcode a video  3240x1920 (specific) to 1824x1080 (custom resolution) [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/transcode_3240p-V1.10.10.bat)
	- ```ffmpeg -i myVideoInput.mp4 -loglevel "warning" -filter_complex "nullsrc=size=1824x1080,geq=r=0:b=0:r=0 [background]; [0:v] setpts=PTS-STARTPTS, scale=1824x1080 [center]; [background][center] overlay=shortest=1:x=0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput.mp4```
#### **MERGE SPACIALLY 3 (custom resolution) to 1 (tryptic custom resolution)**
- FFMpeg: transcode 3 video portrait to tryptic [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/tryptic_for_3_files-V1.10.10.bat)
	- ```transcode_portrait_to_tryptic.bat 1.mov 2.mp4 3.mp4```
	- transcode_portrait_to_tryptic.bat [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/transcode_portrait_to_tryptic-V1.10.10.bat)
		- ```ffmpeg -i 1.mov -i 2.mp4 -i 3.mp4 -loglevel "warning" -filter_complex "nullsrc=size=1824x1080,geq=r=0:b=0:r=0 [background]; [0:v] setpts=PTS-STARTPTS, scale=608x1080 [left]; [1:v] setpts=PTS-STARTPTS, scale=608x1080 [middle]; [2:v] setpts=PTS-STARTPTS, scale=608x1080 [right]; [background][left] overlay=shortest=1:x=0 [background+left]; [background+left][middle] overlay=shortest=1:x=608 [background+left+middle];  [background+left+middle][right] overlay=shortest=1:x=1216" -an -sn -b:v 10000000 -f mp4 -c:v libx264 myVideoOutput.mp4```
#### **INSERT SRT SUBTITLES IN A VIDEO**
- FFMpeg: insert SRT subtitles in a video [download](https://github.com/Qeedji/archives/blob/master/downloads/tools/insert_subtitle_from_srt-V1.10.10.bat)
	- ```ffmpeg.exe -i inputfile.mp4 -vf subtitles=subtitiles.srt outputfile.mp4```
