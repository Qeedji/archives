@echo off
echo ------------------------------------------------------------------------------
echo Script to transcode 3 videos 1920x1080 portrait and mix to a 1824x1080 tryptic
echo ------------------------------------------------------------------------------
set extra=_tryptic
set input_file1=%1%
set input_file2=%2%
set input_file3=%3%
if %input_file1% NEQ "" GOTO next1
echo No input file !!!
goto abort

:next1
if "%input_file2%" EQU "" (set input_file2=%input_file1%)
if "%input_file3%" EQU "" (set input_file3=%input_file2%)

set output_file=%~n1%extra%.mp4
echo Input file for left : %input_file1%
echo Input file for center : %input_file2%
echo Input file for right : %input_file3%
echo Output file will be : %output_file%
echo -----------------------------------------
echo Start transcoding process, please wait...
echo -----------------------------------------
ffmpeg -i %input_file1% -i %input_file2% -i %input_file3% -loglevel "warning" -filter_complex "nullsrc=size=1824x1080,geq=r=0:b=0:r=0 [background]; [0:v] setpts=PTS-STARTPTS, scale=608x1080 [left]; [1:v] setpts=PTS-STARTPTS, scale=608x1080 [middle]; [2:v] setpts=PTS-STARTPTS, scale=608x1080 [right]; [background][left] overlay=shortest=1:x=0 [background+left]; [background+left][middle] overlay=shortest=1:x=608 [background+left+middle];  [background+left+middle][right] overlay=shortest=1:x=1216" -an -sn -b:v 10000000 -f mp4 -c:v libx264 "%~n1%extra%.mp4"


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