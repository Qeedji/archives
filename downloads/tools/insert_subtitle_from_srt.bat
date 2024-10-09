@echo off
REM Launch the script for transcoding to tryptic with 3 different files
ffmpeg.exe -i inputfile.mp4 -vf subtitles=subtitiles.srt outputfile.mp4