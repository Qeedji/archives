# Tvheadend 4.3-InnesPatched1

The ```Tvheadend 4.3-InnesPatched1``` is a patched version of the ```TVheadend 4.3``` application. The Innes patch is allowing to support the DVB-T to UDP gateway feature, which is not supported in the ```TVheadend 4.3```.

Innes has submitted this software patch as contributor to the TVheadend communauty in September 2019 so that is it integrated soon in a next official ```TVheadend``` release. Waiting this, the patched version ```Tvheadend 4.3-InnesPatched1``` is available for download below. Follow the procedure to install it.

##`2019-10-15` Tvheadend 4.3-InnesPatched1 [download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/raspberry-pi_patches/tvheadend_4.3-InnesPatched1~raspbianstretch_armhf.deb)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DVB-T to UDP gateway feature
	- Based on ```TVheadend``` application, version 4.3
>##### **COMPATIBILITIES**
- Raspberry Pi 3 Model B+:
	- OS: Raspbian GNU/Linux 9.4 (stretch)
	- SD card: provided by Raspberry
	- Extension card: DVB TV µHAT
- Raspberry Pi 4 Model B:
	- OS: Raspbian GNU/Linux 10 (buster)
	- SD card: provided by Raspberry
	- Extension card: DVB TV µHAT

#INFORMATION
***********************************************************************
#### **RASPBERRY PI**

##### **RASPBERRY PI: INSTALLATION**
- Mount properly the extension card ```DVB TV µHAT``` on the Raspberry Pi main board,
- Connect the different peripherals to the Raspberry Pi
	- The power supply,
	- An ethernet cable,
	- A mouse,
	- An USB keyboard and
	- An HDMI monitor
- Connect the DVB-T antenna to the RF connector of the ```DVB TV µHAT``` extension card
- Follow the instructions on the monitor:
	- Set the *Country* (Country/language/timezone),
	- Enter a new password for your Raspberry Pi,
	- Configure the Wifi interface (if supported by your Raspberry Pi),
	- Check and update Raspberry software (can take several minutes...),
	- Reboot

##### **RASPBERRY PI: GET IP ADDRESS**
To know the Rapberry Pi IP address, open a terminal windows and enter :
```
ifconfig
```

##### **RASPBERRY PI: GET OS VERSION**
To know the OS version of your raspberry, open a terminal window and enter:
```
lsb release -a
```

#### **TVHEADEND**

##### **TVHEADEND 4.3-INNESPATCH1: INSTALLATION**
Open the Chromium Web browser from your Raspberry Pi (Raspberry GUI > menu *Internet*), and download ```Tvheadend 4.3-InnesPatched1``` on the Raspberry with the button above.
The download is authorized only if you are allowed to. You are invited so to enter first your Innes website connection identifiers. For further information, contact sales@innes.pro.

The file ```tvheadend_4.3-InnesPatched1~raspbianstretch_armhf.deb``` is copied in the default directory ```/home/pi/Downloads```

Open a terminal prompt (menu *Accessories* then *Terminal*) and type the linux commands:
```
sudo su
cd /home/pi/Downloads
apt install ./tvheadend_4.3-InnesPatched1~raspbianstretch_armhf.deb
```
When asked, press ```Y``` to continue the installation.

To complete the ```Tvheadend 4.3-InnesPatched1``` application installation like any TVheadend application, follow the instruction:

- Enter a TVheadend username of your choice (then press enter)
- Enter a TVheadend password of your choice (then press enter)

*Note preciously these connection identifiers which will be required later*

It is shown that the ```Tvheadend 4.3-InnesPatched1``` application configuration Web interface can be accessed with the URL:
```
​http://<raspberry-pi_ip_addr>:9981/extjs.html
```

Wait for the end of the installation.

When the installation is completed, you can remove the .deb temporary file:
```
rm tvheadend_4.3-InnesPatched1~raspbianstretch_armhf.deb
```

##### **TVHEADEND GUI**
The ```Tvheadend 4.3-InnesPatched1``` application configuration Web interface can be accessed with the URL:
```
​http://<raspberry-pi_ip_addr>:9981/extjs.html
```

Innes does not bring support for the TVheadend application using. So you are invited to visit official Web site or TVheadend tutorials. For any question, contact sales@innes.fr
```
https://www.raspberrypi.org
https://tvheadend.org/
https://kodi.wiki/view/Tvheadend
```

##### **TVHEADEND FIRST INSTALLATION**
From any computer, type the following URL into your web browser to connect to the TVheadend configuration interface:
```​http://<raspberrypi_ip_addr>:9981/extjs.html```

When never launcher before, you are invited to follow a first installation procedure.

Follow the different steps:

- **Language**: Set the *language* then press *Next*.

- **Access control**: If required, enter the *Network names*, the *Administrator* connection identifiers and a *User* connection identifiers. *If you don’t have specific preferences, leave ​'Allowed network​' blank, and enter an asterisk (​*​) in the ​'username' ​and 'password' ​fields. That will let anyone connected to your local network access ```TVheadend```.*.
Press *Next*.

- **Tuner and network**: For ​```Network 3``` (`Tuner: Sony CDX2880 #0 : DVB-T #0`), choose `DVB-T Network`​ for `Network type`. Press *Next*.

- **​Assign predefined muxes to networks**: Select the TV stream to receive and decode. For *Network 1*​ (*DVB-T Network*), choose `Pre-defined muxes`​. Select a apropriate local TV transmitter. Press *Save&Next*.

- **The multiplex scanning is launched** in a background task. After about two minutes, you should see something like:
	- *Found muxes: <n>*
	- *Found services: <m>*
At least one AV service has to be found to make work properly the DVB-T to UDP gateway. If 0 service has been found, check the signal quality by improving your DVB-T antenna connection. And try again. Is is possible to launch a multiplex scanning later. For more information, read the appropriate appendix below.
Press *Next*.

- **Service mapping**: In the next window *Service mapping*, select the three options:
	- `Map all services`​,
	- `​Createprovider tags​` and
	- `Create network tags`

Press *Next*. You can see a list of the TV channels that can be watched.

Innes does not bring support for the TVheadend application using. So you are invited to visit official Web site or TVheadend tutorials. For any question, contact sales@innes.fr
```
https://www.raspberrypi.org
https://tvheadend.org/
https://kodi.wiki/view/Tvheadend
```

##### **TVHEADEND: GET VERSION**
To know the ```TVheadend``` version, in the ```TVheadend``` GUI, go to the menu *About*.
The version is ```Tvheadend 4.3-InnesPatched1```

#### **TVHEADEND 4.3-INNESPATCH1: CUSTOM COMMAND TO START ONE OR SEVERAL UDP STREAMS**
To start streaming a TV channel over UDP, enter the following URL in a Web browser:
```http://<raspberrypi_ip_addr>:9981/udpstream/start/channelnumber/<local_channel_number>?address=<udp_dest_addr>&port=<udp_port>```

With
```
<raspberrypi_ip_addr> = IP address of the Raspberry Pi main board
<local_channel_number> = local channel number of the TV channel
<udp_dest_addr> = destination IP address of the UDP stream. It can be a multicast address
<udp_port> = UDP destination port
```

You can find the local channel number of your service in the ```TVheadend``` GUI in the menu ```Configuration > DVB Inputs > Services``` [view example](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/raspberry-pi_patches/TVheadend_local_channel_number.jpg)

It is possible to start several UDP stream at a time with the conditions that the service to stream are hosted on the same multiplex:

For example:

```
http://192.168.1.133:9981/udpstream/start/channelnumber/21?address=224.1.1.1&port=1111
```
Then
```
http://192.168.1.133:9981/udpstream/start/channelnumber/22?address=225.1.1.2&port=1112
```

To check the number of opened UDP streams, go to the menu ```Status > Connections```. There is one line per opened UDP stream.

#### **TVHEADEND 4.3-INNESPATCH1: CUSTOM COMMAND TO STOP A UDP STREAM**
To stop an UDP stream, enter the following URL in a Web browser:
```
http://<raspberrypi_ip_addr>:9981/udpstream/stop/channelnumber/<local_channel_number>?address=<udp_dest_addr>&port=<udp_port>
```
For example:
```
http://192.168.1.133:9981/udpstream/stop/channelnumber/21?address=224.1.1.1&port=1111
```

#### **TVHEADEND 4.3-INNESPATCH1: START A UDP STREAM AUTOMATICALLY AFTER BOOTING UP**
To start automatically an UDP stream as soon as Raspberry Pi boot has reboot, you have to modify the custom file ```/lib/systemd/system/tvheadend.service```:

Open a terminal window, and enter the appropriate command like explained.

Change the file read/write permissions:
```
sudo chmod a+w /lib/systemd/system/tvheadend.service
```

Edit the file ```/lib/systemd/system/tvheadend.service``` and uncomment the following line:
```
ExecStartPost=/usr/bin/curl "http://127.0.0.1:9981/udpstream/start/channelnumber/<local_channel_number>?address=<udp_dest_addr>&port=<udp_port>"
```
Replace the values to match your data, with:
```
<local_channel_number> = local channel number of the TV channel
<udp_dest_addr> = destination IP address of the UDP stream. It can be a multicast address
<udp_port> = UDP destination port
```

For example,
```
ExecStartPost=/usr/bin/curl "http://127.0.0.1:9981/udpstream/start/channelnumber/25?address=224.1.2.5&port=1235"
```

**TVheadend HTTP server readiness delay**:

If the connection does not start automatically, that means that:

- either the ```DVB TV uHAT tuner``` is not locked. In this case, check the stream status
- or the HTTP server was not yet ready to receive the HTTP command. To increase the delay before declaring that the TVheadend HTTP server is ready to receive HTTP command, change the value in seconds (ex: 20 seconds instead of 10 seconds by default).
```
ExecStartPort=/bin/sleep 20
```
Warning: Some TVheadend background tasks like the *initial EPG Grab at startup* or the network *start-up scan* may delay also the TVheadend HTTP server readiness of several minutes. When they are running, these background tasks appear in the table of the TVheadend menu ```Status > Subscription```. It is advised to inactivate them so that the feature TVheadend DVB-T to UDP can run immediately after boot-up. For further information, read the appropriate appendix below. If you want to keep these background tasks anyway, you can enjoy to fine tune upper value for this delay.

Save the file ```/lib/systemd/system/tvheadend.service``` and reboot the Raspberry Pi.

#### **TVHEADEND: APPENDIX TO RELAUNCH A DVB-T MULTIPLEX SCANNING**
- Go to the ```TVheadend``` menu ```Configuration > DVB Inputs > TV Adapters``` and check the parameters
	- For example:
		- `Tuner: Sony CDX2880 #0 : DVB-T #0`
			- *Parameters*:
				- *Basic settings*
					- *Enable*: true
					- *Name*: `Tuner: Sony CDX2880 #0 : DVB-T #0`
					- *Over the air EPG*: true
					- *Network*: `DVB-T Network`
					- *Power save*: false
					- *LNA*: false
				- *Advanced settings*:
					- *Priority*: 0
					- *Streaming priority*: 0
					- *Initial scan*: true
					- *Idle scan*: false
					- *Free subscription weight*: 0
					- *Linked input*: -
					- *Maximum PIDS*: 32
					- *Allow all PID*: true
					- *#tune repeats*: 3
					- *Skip initial bytes*: 0
					- *Input buffer*: 188000 bytes
					- *Status period*: 1000 ms
					- *Signal multiplier*: 100
					- *SNR multiplier*: 100
					- *Force odd status*: false

Note: In case bad RF DVB-T conditions, you can change the *tune repeats* to 3 instead of 1. Think to increase the HTTP server readiness delay according to (ex: 10 additionnal seconds)

- Go to the ```TVheadend``` menu ```Configuration > DVB Inputs > Networks```
	- Press Add to add a network
		- For example:
			-  Line 1:
				- *Basic settings*:
					- *Enabled*: true
					- *Network name*: `DVB-T Network`
					- *Create bouquet*: false
					- *Pre-defined mux*: `--Generic--: auto with167KHzOffsets`
				- *Advanced settings*:
					- *Provider Network name*: F
					- *Network ID (limit scanning)*: 0
					- *Network discovery*: disable
					- *Ignore provider's channel numbers*: false
					- *SAT>IP source number*: 0
					- *Character set*: -
				- *Expert settings*:
					- *Skip startup scan*: false
					- *Idle scan muxes*: false
					- *Use service IDs as channel numbers*: false
					- *EIT Time offset*: UTC
	- Select the line 1 and press on Force scan
		- For example:
			- Line 1:
				- The column *#muxes* = 155
				- The column *scan queue*: is decreasing form 155 to 0 when the scanning of the multiplex is in progress
				- The column *#services* is increasing as soon as new services are found on the multiplex scanned with success
- Go to the ```TVheadend``` menu ```Configuration > DVB Inputs > Muxes```
	- You can see the list of found multiplex (call also muxes)
- Go to the ```TVheadend``` menu ```Configuration > DVB Inputs > Services```
	- You can see the list of found services on the different multiplex scanned with success
	- Press on the button `Map services`
		- For example:
			- *Basic settings*
				- *Services*: let as default (ex: `DVB-T Network/473.833MHz/F3....`
				- *Map encrypted services*: true
				- *Merge same name*: false
				- *Use fuzzy mapping if merging same name*: false
				- *Tidy the channel name such as removing trailing HD text*: false
			- *Advanced settings*
				- *Check availablility*: false
				- *Create type-based tags*: true
				- *Create provider name tags*: true
				- *Create network names tags*: true
			- Press on the button `Maps services` to validate

#### **TVHEADEND: APPENDIX TO INACTIVATE STARTUP SCAN**
Once scanning is successful, inactivate the *start-up scan* background task which may delay the TVheadend HTTP server readiness:

- go in the menu ```Configuration > DVB Inputs > Networks```
	- Select the first line
		- Press Edit to modify a network setting
			- *Expert settings*:
				- Set to true the field *Skip start-up scan*
#### **TVHEADEND: APPENDIX TO INACTIVATE EPG GRABBER**
Once scanning is successful, inactivate the *EPG grabber* background task which may delay the TVheadend HTTP server readiness:

- go in the menu ```Configuration > Channel/EPG > EPG Grabber```
	- *OTA (Over The Air) Grabber settings*
		- Set to false the field *Force initial EPG Grab at startup*

#### **TVHEADEND: APPENDIX TO CHECK TUNER/DEMODULATEUR STATUS**
To see the tuner status (lock frequency, BER, SNR, bandwidth), go in the menu ```Status > Stream```. Check that:

- the BER (Bit error rate) is low
- the SNR (Signal to Noise ratio) is consistent (in dB)  and evaluated regularly
- the Signal strength (in dBm) is consistent and evaluated regularly

[view tuner status](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/raspberry-pi_patches/TVheadend_check_tuner_status.jpg)

#### **TVHEADEND: APPENDIX TO CHECK RUNNING SUBSCRIPTIONS**
To see the running subscriptions, go in the menu ```Status > Subscriptions```. The feature ```DVB-T to UDP gateway``` is the subscription whose the title is ```UDP```.

[view running subscriptions](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/raspberry-pi_patches/TVheadend_check_subscriptions.jpg)

#### **TVHEADEND: APPENDIX TO CHECK RUNNING CONNECTIONS**
To see the running connections, go in the menu ```Status > Connections```. The feature ```DVB-T to UDP gateway``` is the connections whose the type is ```UDP```.

[view running connections](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/raspberry-pi_patches/TVheadend_check_connections.jpg)

Innes does not bring support for the TVheadend application using. So you are invited to visit official Web site or TVheadend tutorials. For any question, contact sales@innes.fr
```
https://www.raspberrypi.org
https://tvheadend.org/
https://kodi.wiki/view/Tvheadend
```
