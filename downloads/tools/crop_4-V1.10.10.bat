@echo off
echo --------------------------------------------------
echo Script to cut a video 3240x1920 to 4x1920x1080
echo --------------------------------------------------
set input_file=%1%
if %input_file% NEQ "" GOTO next1
echo No input file !!!
goto abort

:next1

echo Input file : %input_file%
echo -----------------------------------------
echo Start transcoding process, please wait...
echo -----------------------------------------
set output_file=%~n1_1.mp4
echo Output file %output_file% ...
ffmpeg -i %input_file% -loglevel "warning" -filter:v "crop=1920:1080:0:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%output_file%"
set output_file=%~n1_2.mp4
echo Output file %output_file% ...
ffmpeg -i %input_file% -loglevel "warning" -filter:v "crop=1920:1080:1920:0" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%output_file%"
set output_file=%~n1_3.mp4
echo Output file %output_file% ...
ffmpeg -i %input_file% -loglevel "warning" -filter:v "crop=1920:1080:0:1080" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%output_file%"
set output_file=%~n1_4.mp4
echo Output file %output_file% ...
ffmpeg -i %input_file% -loglevel "warning" -filter:v "crop=1920:1080:1920:1080" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%output_file%"

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