# Mkv video reencoding with MKVToolNix in case header stripping

The *Matroska* standard offers the possibility to compress the headers (*Header stripping*).
For further information about *Header stripping*, visit the [Matroska Web site https://www.matroska.org/news/compressed-headers.html](https://www.matroska.org/news/compressed-headers.html).

## Media info software and stripped header
A video analysis with *MediaInfo* software allows to show that the video has *Header stripping* [MediaInfo analysis with a video example](https://github.com/Qeedji/archives/blob/master/downloads/tools/Media_info-video_example_with_stripping.jpg)

## Header stripping not supported by the DMB400
Unfortunately, the DMB400 device, like several other competitor devices, do not support this aspect of Matroska standard. When these kind of video .mkv video with *Header stripping* is played, a decoding error is returned: *Content temporarily unavailable (code 4)*.

## MKVToolNix software
To work around, use the *MKVToolNix* software to generate your .mkv video with the header unstripped.
[Tutorial https://wiki.serviio.org/doku.php?id=header_com](https://wiki.serviio.org/doku.php?id=header_com)

