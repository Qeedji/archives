# Playout restart by UDP

#### **SUMMARY**
- When executed by the device, this script permits to restart the playout each time a specific UDP  message value is received by the player
- Both UDP port and message value can be configured

## `2018-11-23` Script V1.10.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/playout-scripts/playout-restart-by-udp/Playout-restart-by-UDP-V1.10.11.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: was not working with Playzilla 4.10.18 (and above)
>##### **COMPATIBILITY**
- Gekkota 4.10.15 (or above)
- Playzilla 4.10.20 (or above)

#INFORMATION
***********************************************************************
- Step 1
	- Fill properly the "UDPport" integer value in the file *Playout-restart-by-UDP-V1.10.10.js*
		- ex:
			- var UDPport = ```<UDP_PORT>```;
			- var commandName = "```<COMMAND_NAME>```";
- Step 2
	- In Plugncast G3,
		- Add the script *Playout-restart-by-UDP-V1.10.11.js* in your library then
		- Drop the script *Playout-restart-by-UDP-V1.10.11.js* in the property tab of your playout (into the Window *Script to execute*
		- Publish the content
- Step 3
	- With a software (not provided bey Innes), send the appropriate UDP message on the network

# OLD VERSIONS
***********************************************************************

## `2017-10-18` Script V1.10.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/playout-scripts/playout-restart-by-udp/Playout-restart-by-UDP-V1.10.10.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
- Playzilla 4.10.17 (or above)
