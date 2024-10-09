echo ffmpeg -vcodec copy -ss 00:01:00 -t 00:02:00 -i the_hobbit_dts_ac3.mp4 the_hobbit_dts_ac3_1min_a_2min.mp4
ffmpeg -ss 00:01:00 -i the_hobbit_dts_ac3.mp4 -to 00:02:00 -c copy the_hobbit_dts_ac3_1min_a_2min.mp4
pause