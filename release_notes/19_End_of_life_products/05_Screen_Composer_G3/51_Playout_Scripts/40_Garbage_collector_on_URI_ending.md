# Garbage collector on URI ending

#### **SUMMARY**
Some Web page viewed properly on PC computers owning a large amount of volatile memory may not be played after a while when played several time on a device. To work around, running this playout script is forcing the device the free the memory previously required each time the playing of the Web page has ended.

##`2019-07-29` callGCatEnd-V1.10.10.js [download](https://github.com/Qeedji/archives/blob/master/downloads/playout-scripts/garbage-collector-on-URI-ending/callGCatEnd-V1.10.10.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
>##### **COMPATIBILITY**
- PlugnCast V3.10.51
	- Playzilla	V4.11.11 (or above)
- Screen Composer V3.20.14
	- Playzilla	V4.10.20 (or above)
- Gekkota OS 4.11.11 (or above)

#INFORMATION
***********************************************************************
- Import the script in your library,
- Insert the script in the playout manifest then
- Publish the playout content on your device
- Connect on the device configuration Web interface and set the user preference
	- ```browser.cache.memory.enable``` = *false* (instead of *true* by default)
	- ```javascript.options.mem.max``` = *72* (instead of *-1* by default) (!! example of value. Indeed, the value is depending on the Web site architecture)
