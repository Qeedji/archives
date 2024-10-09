@echo off
echo --------------------------------------------------
echo Script to transcode a video 3240x1920 to 1824x1080
echo --------------------------------------------------
set extra=_1824
set input_file=%1%
if %input_file% NEQ "" GOTO next1
echo No input file !!!
goto abort

:next1

set output_file=%~n1%extra%.mp4
echo Input file : %input_file%
echo Output file will be : %output_file%
echo -----------------------------------------
echo Start transcoding process, please wait...
echo -----------------------------------------
ffmpeg -i %input_file% -loglevel "warning" -filter_complex "nullsrc=size=1824x1080,geq=r=0:b=0:r=0 [background]; [0:v] setpts=PTS-STARTPTS, scale=1824x1080 [center]; [background][center] overlay=shortest=1:x=0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%~n1%extra%.mp4"

echo -----------------
echo Trancoding ended.
echo -----------------
goto exit

:abort
echo -------------------
echo Trancoding aborted.
echo -------------------

:exit
pause