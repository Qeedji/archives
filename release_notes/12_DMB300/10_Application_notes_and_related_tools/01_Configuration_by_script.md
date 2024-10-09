# Configuration by script
*RELEASE NOTE*

##`2023-09-05` V1.12.13 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.12.13/delivery/example_000000000000-V1.12.13.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- enableSwapDisk()
	- disableSwapDisk()
- Fix: the setUrlLauncherWebserver() function was not working for the *Identifier/password for a Webpage form* value
>##### **COMPATIBILITIES**
- Gekkota OS 4.14.15 (or above) for
    - DMB400 device
    - SMA300 device
- Gekkota OS 4.13.10 (or above) for
    - DME204 device
- Gekkota OS 4.14.15 (or above) for
    - SMH300 device
- Gekkota OS 4.13.13 (or above) for
    - SMT210 device
- Gekkota RT 4.14.13 (or above) for
    - MS-Windows PC
- Gekkota OS 5.12.10 (or above) for
    - DMB300 device
    - DMB400 device
- Gekkota OS 3.12.57 (or above) for
    - DMB300 device
    - DMC200 device
    - SMA200 device
- Gekkota RT 3.12.59 (or above)
    - MS-Windows PC

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
- Configuration by script user guide (006A/EN) [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.16/delivery/Configuration-by-script-application-note-006A_en.pdf)
- Configuration by script user guide (006A/FR) [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.16/delivery/Configuration-par-script-note-d'application-006A_fr.pdf)
- GPIO application note (004A/EN) [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.13/delivery/Use-of-GPIOs-application-note_004A_en.pdf)
- GPIO application note (004A/FR) [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.13/delivery/Utilisation-des-GPIOs-Note-d'application-004A_fr.pdf)
#### **INSTALLATION ERROR MESSAGE DISPLAYED WHEN INJECTING SCRIPT JS**
- An installation error is raised when a function activated in the configuration-by-script is not supported by the middleware or when a syntax error has been inserted in the *.js* configuration script by the user. You can check the JavaScript line error in the device status.xml after the installation of the *.js* configuration script has failed
- The function setHostname() is not supported with Gekkota RT

#OLD VERSIONS HISTORY
***********************************************************************

##`2023-04-21` V1.12.12 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.12.12/delivery/example_000000000000-V1.12.12.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- UrlLauncherCredentialIdentifierPasswordWithWebPageForm()
	- PowerBiCredentialMicrosoft365OAuthApp()
	- PowerBiCredentialMicrosoft365OAuthUser()
	- setPowerbiOnlineViewer()
	- setPowerbiOnlineViewerPageDuration()
	- setPowerbiOnlineViewerPageNumbers()
	- setPowerbiOnlineViewerTransparentBackground()
- Change: rename CredentialNone() function by UrlLauncherCredentialNone()
- Change: rename CredentialUserPassword() function by UrlLauncherCredentialIdentifierPasswordBasicAuth()
- Change: rename CredentialUserPasswordDomain() function by UrlLauncherCredentialIdentifierPasswordBasicAuthDomain()

##`2023-02-01` V1.12.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.12.11/delivery/example_000000000000-V1.12.11.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for DMB300 Gekkota OS 5.10.11 for:
	- setPhoenixGPIOfunction()
	- setPhoenixGPIO()
- Add support for DMB300 Gekkota OS 5.10.11 for:
	- setJackGPIO()

##`2022-12-19` V1.12.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.12.10/delivery/example_000000000000-V1.12.10.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions supported by the *Gekkota 5* middleware
    - setUrlLauncherWebserver()
    - setUrlLauncherCifs()
    - setUrlLauncherMicrosoft365()
    - uninstallApp()
    - CredentialNone()
    - CredentialUserPassword()
    - CredentialUserPasswordDomain()
- Add support for these new functions to support *Gekkota 5* middleware
    - isUpperG4()
    - isG5()

##`2022-09-14` V1.11.34 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.34/delivery/example_000000000000-V1.11.34.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: Add support for the *checkCompatibility()* function at the beginning of the script preventing it to be executed on other OS than *Gekkota 3* and *Gekkota 4*

##`2022-04-06` V1.11.33 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.33/delivery/example_000000000000-V1.11.33.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to configure the GAP server
	- setGAPserver (URL, credential_login, credential_pw)
	- setGAPserverHeartbeat (heartbeat)
- Fix: the function setAddonServerHeartbeat(heartbeat) was not working

##`2021-09-20` V1.11.32 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.32/delivery/example_000000000000-V1.11.32.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to set the way (*port* and *http*/*https* scheme) to access to the device WebDAV server and to the device Web user interface
	- enableWebserverHttps(port);
	- enableWebserverHttp(port);
	- disableWebserverHttp();
	- disableWebserverHttps();

##`2021-05-12` V1.11.31 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.31/delivery/example_000000000000-V1.11.31.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Remove the *aHeartbeat* parameter for the functions below
	- setPlugnCastG3("http://<ip_addr>/.frontals/.webdav/<domain>/", "login", "password");
	- setStatusServer("http://<ip_addr>/.frontals/.webdav/<domain>/.device-status/", "login", "password");
	- setAddonServer("http://<ip_addr>/.frontals/.webdav/<domain>/.setup/", "login", "password");
	- setPlugnCastG2("http://<ip_addr>/");
- Add support for new functions to set the heartbeat (aHeartbeat value in minute, minimum value: 1)
	- setPlugnCastG3Heartbeat(aHeartbeat);
	- setStatusServerHeartbeat(aHeartbeat);
	- setAddonServerHeartbeat(aHeartbeat);
	- setPlugnCastG2Heartbeat(aHeartbeat);
- Modify the function to set the heartbeat so that they set effectively the heartbeat with a random part value = aHeartbeat x (45 + random[0-30])) seconds

##`2020-12-10` V1.11.30 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.30/delivery/example_000000000000-V1.11.30.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for function to install the *EnOcean* push button devices on SMH300 hub
	- `SetHubServerPushButton()`
- Add support for function to install the *EnOcean* sensor devices on SMH300 hub
	- `SetHubServerSensor()`
- Change: this function to pair SLATEs is now only compatible with SMH300 embeddding Gekkota OS 4.13.14 (or above)
	- `SetWpanHubServerConfiguration()`

##`2020-09-29` V1.11.29 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.29/delivery/example_000000000000-V1.11.29.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions
	- setNoProxyForDeliveryServer(true)
	- setNoProxyForStatusServer(true)
	- setNoProxyForSoftwareAndConfigurationInstallationServer(true)

##`2020-08-06` V1.11.28 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.28/delivery/example_000000000000-V1.11.28.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the new function ```setUtcTime("<date_string>");``` to set system OS date and time (UTC)
    - the support for this function requires Gekkota OS 4.13.11 (or above)
- Add support for Gekkota RT 4.YY.ZZ middleware

##`2020-04-27` V1.11.27 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.27/delivery/example_000000000000-V1.11.27.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to activate the `802.1X` security on LAN interface
    - setLanSecurity(lan, lan-security, eap-security);
- Add support for new functions to support `WPA-Enterprise` or `WPA2-Enterprise` on WLAN interface
    - setWLanModeInfraWithEap(wlan, "your-SSID", false, "WPA2", pairwise-wpa-security, wpa-group-security, eap-security);
- Add support for new function to define the `capture video output` width
    - setScreenshotMaxWidth(960);
- Add support for new function to create a periodic `reboot task`
    - widthsetRebootManagerCalendar(rebootManagerCalendar);
- Change WLAN functions by adding SSID broadcast information
    - setWLanModeAdhoc(wlan, "Qeedji", false, 0);
    - setWLanModeInfra(wlan, "your-SSID", false);
    - setWLanModeInfraWithKey(wlan, "your-SSID", false, "WEP", 0, 0, "9876543210");
     - setWLanModeInfraWithKey(wlan, "your-SSID", true, "WPA", Ci.nsISystemWpaSecurity.ENCR_TKIP, Ci.nsISystemWpaSecurity.ENCR_TKIP, "");
     - setWLanModeInfraWithKey(wlan, "your-SSID", false, "WPA2", Ci.nsISystemWpaSecurity.ENCR_CCMP, Ci.nsISystemWpaSecurity.ENCR_CCMP, "");
- Change setPowerManagerAvcmdDelay() function to support DME204 device
- Change setPowerManagerLevels() function to support DME204 device

##`2019-10-31` V1.11.26 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.26/delivery/example_000000000000-V1.11.26.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to activate or not the CEC feature
	- setCecIsActivated(true)
- Add support for new functions to activate or not the DDC-CI profile on HDMI output
	- AvCmdActivateProfile(avCmdDdcCi);
	- AvCmdDesactivateProfile(avCmdDdcCi);
- Add support for new functions to activate or not the DDC-CI features
	- AvCmdIsActivatedPowerMode(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedVideoInput(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedVolume(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedMute(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedBrightness(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedBacklight(avCmdDdcCi, true); /* or false */
	- AvCmdIsActivatedCustomCommands(avCmdDdcCi, true);
- Add support for new functions to activate or not CEC profile for TV on HDMI output
	- AvCmdActivateProfile(avCmdCec); /* or false */
	- AvCmdDesactivateProfile(avCmdCec); /* or false */
- Add support for new functions to activate or not CEC features
	- AvCmdIsActivatedPowerMode(avCmdCec, true); /* or false */
	- AvCmdIsActivatedVideoInput(avCmdCec, true); /* or false */
- The content of this function has been uncommented back and slightly modified so that the Javascript is interpreted properly with Gekkota 3.XX.YY as well as Gekkota 4.XX.YY
	- SetWpanHubServerConfiguration(aConfiguration)

##`2019-08-28` V1.11.25 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.25/delivery/example_000000000000-V1.11.25.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to activate or not the test card display with a keys press combination
	- enableTestCardKeyEvent()
	- disableTestCardKeyEvent()
	- *note: compatibility: all devices except SMT210, DME204 and SMH300*
- Add support for a new function to configure the value for the different energy profiles
	- setPowerManagerLevels("min" , 0,  true,   0,   0,   0, 100);
		- Parameter 1 : Energie profiles: "min" (low power), "low", "high", "max" (high power)
		- Parameter 2 : Screen standby : 0: standby, 1: ON
		- Parameter 3 : Sound: true muted; false: unmuted
		- Parameter 4 : Volume: from 0: min. volume to 100: max. volume
		- Parameter 5 : Brightness: from 0: min. brightness to 100: max. brightness
		- Parameter 6 : Backlight: from 0: min. backlight to 100: max. backlight
		- Parameter 7 : Opacity: from 0: min. opacity to 100: max. opacity
- Add support for new function to create a power manager task allowing to activate an energy profile in a day period
	- setPowerManagerCalendar(powerManagerCalendar)
	- setPowerManagerAvcmdDelay(150)
- Add support for new function for DME204
	- enableStreamerProtocolRtp("224.1.2.3", 1234, 7, 64); //  destination IP address, destination port, number of TS packet per IP (1 to 7), time to live (1 to 255)
	- enableStreamerProtocolRtmp("192.168.1.16/live", "myStream"); // RTMP server, stream key
	- setStreamerAudioSamplerate(48000);

##`2019-07-30` V1.11.23 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.23/delivery/example_000000000000-V1.11.23.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: restore compatibility for Gekkota 3 devices (except SMH300)
- Change: the content of the function *SetWpanHubServerConfiguration* is temporary commented and make nothing by default
	- For SMH300, to restore the behavior of this function with Gekkota OS 4.11.11 (or above), delete the lines containing TEMPORARY COMMENTED in the function SetWpanHubServerConfiguration

##`2019-06-20` V1.11.22 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.22/delivery/example_000000000000-V1.11.22.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SMH300/Gekkota 4 device
- Add support for:
	- the variable
		- WpanHubServerConfiguration
	- the function
		- SetWpanHubServerConfiguration(WpanHubServerConfiguration)
- Change: remove
	- the variables:
		- slateConfiguration
		- authenticationType
		- authenticationPincode
		- testcardEnabled
	- the functions:
		- enableSlate106TestCard()
		- disableSlate106TestCard()
		- setSlate106Pincode()
		- disableSlate106Pincode()
		- getSlate106AuthenticationPincode()
		- getSlate106AuthenticationType()
		- setHubSrvConfiguration(slateConfiguration)
		- setPairedslate106()
		- setMaintenanceMode()
		- setPictureFrameWakeupHeartBeatMode()
		- setPictureFrameWakeupHeartBeatPeriod()
		- setPictureFrameWakeupHeartBeatWeekdaysMask()
		- setPictureFrameWakeupHeartBeatDayInterval()
- Remove support for SMH300/Gekkota 3 device

##`2019-03-20` V1.11.21 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.21/delivery/example_000000000000-V1.11.21.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to support the Playlog feature:
	- setPlaylog("http://<webdav_server_ip_addr>/...", "login", "password", "23:00")
	- setPlaylogExtended("http://<webdav_server_ip_addr>/...", "login", "password", "23:00", 20, 5, 60, 10)
	- disablePlaylog()
- Add support for functions to set the App mode:
	- setAppModePushArchive()
	- setAppModePush()
- Fix: some functions could not work with Gekkota 3 RT

##`2019-02-19` V1.11.20 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.20/delivery/example_000000000000-V1.11.20.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a new function to activate/inactivate the soundcard
	- setSoundCardIsActivated(true)
		- true: the sound card is activated
		- false: the sound card is inactivated
- Add support for new functions to activate/inactivate the pointer interactivity
	- enableHidPointer()
	- disableHidPointer()
- Add support for new functions to activate/inactivate keyboard interactivity
	- enableHidKeyboard()
	- disableHidKeyboard()

##`2018-12-05` V1.11.19 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.19/delivery/example_000000000000-V1.11.19.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for SMT210 Gekkota4 device for the function setPhoenixGPIO()
- Add support for SMT210 Gekkota4 device for the function setJackGPIO()

##`2018-08-29` V1.11.18 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.18/delivery/example_000000000000-V1.11.18.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for dme204 device
- Add some functions for dme204 devices
	- setEncoderVideo("1280x720 (HD)", 30);
		- resolution values:
			- "1280x720 (HD)"
			- "1024x768"
			- "1024x576"
			- "720x576 (PAL)"
			- "720x480 (NTSC)"
			- "352x288 (CIF)"
			- "176x144 (QCIF)"
		- framerate values:
			- 25, 30, 50 and 60
	- setEncoderVideoH264("high", "4", "CABAC");
 	- setEncoderVideoBitrateConst(10000);
	 	- min (kbps): 1000
	 	- max (kbps): 24000
	- setEncoderVideoBitrateVariable(10000, 15000);
		- range for bitrate (kbps): 1000, ..., 23999
		- range for bitrate peak (kbps): 1001, ..., 24000),
		- bitrate < bitrate peak
	- enableEncoderAudio ("MPEG1 Layer2");
		- values:
			- "MPEG1 Layer2"
			- "MPEG4 AAC-LC"
	- disableEncoderAudio ();
	- setEncoderAudioBitrateConst(256);
		- values:
			- 64, 96, 112, 128, 160, 192, 224, 256, 320, 384
	- setEncoderAudioBitrateVariable(300, 500);
		- MPEG4 AAC-LC bitrate value: 128, ..., 511
		- MPEG4 AAC-LC bitrate peak: 129, ..., 512
		- bitrate < bitrate peak
	- setStreamerOutputASI();
		- setEncoderService("Qeedji TV", 257, "Qeedji TV");
			- service name: free text, default "Qeedji TV"
			- service ID: 1, ... 65535
			- service provider name: free text, default "Qeedji TV"
		- setEncoderNetwork("Qeedji Network", 8442);
			- network name: free text, default "Qeedji Network"
			- network ID: 0, ..., 65535
		- setEncoderTransportStream(1);
			- transport stream ID: 0, ..., 65535
		- setEncoderLcn(1);
			- logical channel number: 1, ..., 999
		- setEncoderNitVersion(26);
			- nit table version: 0, ..., 31
		- enableEncoderVisibleService(); or disableEncoderVisibleService();
		- enableEncoderMultiServices(); or disableEncoderMultiServices();
	- setStreamerOutputEthernet();
		- enableStreamerProtocolUdp("224.1.2.3", 1234, 7, 64);
			- destination IP address: (default value "224.1.2.3")
			- destination port: (default value: 1234)
			- number of TS packet per IP
				- values: 1, ..., 7 (default value: 7)
			- time to live
				- values: 1, ..., 255 (default value: 64)
		- enableMulticastOutputOnLAN1();
		- enableMulticastOutputOnLAN2();
		- enableMulticastOutputOnLAN1LAN2();
- Change the default value for these 3 functions
	- setPlugnCastG3( "http://<ip_addr>/.frontals/.webdav/<domain1>/", 1, "admin", "admin");
	- setStatusServer("http://<ip_addr>/.frontals/.webdav/<domain1>/.device-status", 1, "admin", "admin");
	- setAddonServer( "http://<ip_addr>/.frontals/.webdav/<domain1>/.setup", 1, "admin", "admin");

##`2018-03-12` V1.11.17 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.17/delivery/example_000000000000-V1.11.17.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: rename
	- enableSlates106TestCard() by enableSlate106TestCard()
	- disableSlates106TestCard() by disableSlate106TestCard()
	- setSlates106Pincode(1234) by - setSlate106Pincode(1234)
	- disableSlates106Pincode() by disableSlate106Pincode()

##`2018-02-20` V1.11.16 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.16/delivery/example_000000000000-V1.11.16.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a new functions
	- enableTestCard()
	- disableTestCard()
	- enableSlates106TestCard()
	- disableSlates106TestCard()
	- setSlates106Pincode(1234)
	- disableSlates106Pincode();
	- setHubSrvConfiguration(*slateConfiguration*)
- Modify
	- setAudioOutput()
		- Add test of SMA300 device
	- setJackGPIO()
		- Add test of SMA300 device

##`2017-11-09` V1.11.15 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.15/delivery/example_000000000000-V1.11.15.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for a new function
	- setHttpAdaptiveStreamingMaxBitrate(n)

##`2017-08-30` V1.11.14 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.14/delivery/example_000000000000-V1.11.14.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Delete obsolete code line

##`2017-08-11` V1.11.13 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.13/delivery/example_000000000000-V1.11.13.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new video decoder settings functions
	- setDecodingGroupIsEnable(true); // ---- This one to authorize video multi-decoding (requires using of Screen Composer 3.12.20 or PlugnCast 3.10.39)
	- setDecodingGroupIsEnable(false); // ---- This one to authorize video mono-decoding
	- setDefaultVideoRenderer("overlay"); // default mode to support Ultra HD and enhanced hardware interlacing filter for TNT MpegTS video
	- setDefaultVideoRenderer("gpu"); // to enhance video transition and increase number of video decoding to more than 2 videos
- Add support for Wlan function (if Wlan supported)
	- enableWLan(wlan);
	- disableWLan(wlan);
	- enableDhcpv4(wlan); // for DHCP
	- disableDhcpv4(wlan); // for static IP address
	- setIPv4StaticAddress(wlan, "192.168.1.2", "255.255.255.0", "192.168.1.6");
	- setIgmpVersion(wlan,3); // ---- for IGMP V3
	- setIgmpVersion(wlan,2); // ---- for IGMP V2
	- setWLanModeAdhoc(wlan, "Qeedji", 0); // ---- one for mode Adhoc, SSID Qeedji, channel 0
	- setWLanModeInfra(wlan, "Qeedji"); // ---- for mode Infra, SSID Qeedji, no security
	- setWLanModeInfraWithKey(wlan, "Qeedji", "WEP", "9876543210"); // ---- for mode Infra, SSID Qeedji, security WEP with key 9876543210
	- setWLanModeInfraWithKey(wlan, "Qeedji", "WPA", "9876543210"); // ---- for mode Infra, SSID Qeedji, security WPA with key 9876543210
	- setWLanModeInfraWithKey(wlan, "Qeedji", "WPA2", "9876543210"); // ---- for mode Infra, SSID Qeedji, security WPA2 with key 9876543210

##`2017-06-06` V1.11.12 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.12/delivery/example_000000000000-V1.11.12.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new PTP functions
	- setClockSyncEnablePtpLayer2();
	- setClockSyncSetPtpDomain(0);
	- setClockSyncSetPtpTimeout(30);

##`2017-03-01` V1.11.11 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.11/delivery/example_000000000000-V1.11.11.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix: SetDns was not working for Gekkota RT

##`2017-02-27` V1.11.10 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.11.10/delivery/example_000000000000-V1.11.10.js)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for GPIO management
- Add support for new functions
	- Set Identification method
		- setIdMethod("MAC");
		- setIdMethod("Hostname");
		- setIdMethod("UUID");
	- Set DNS suffix
		- setDns(lan, "192.168.0.1", "192.168.0.1","dns_suffix");
	- Set Gekkota license
		- setlicense("00000-0000-0000-0000-00000");
	- Set variable field1, field2, field3, field4, field5
		- Services.prefs.setCharPref("innes.player.device-info.field1", "string1");
		- Services.prefs.setCharPref("innes.player.device-info.field2", "string2");
		- Services.prefs.setCharPref("innes.player.device-info.field3", "string3");
		- Services.prefs.setCharPref("innes.player.device-info.field4", "string4");
		- Services.prefs.setCharPref("innes.player.device-info.field5", "string5");
- Change functions
	- Set Proxy mode
		- setProxyType(0);
    	- setProxyType(1);
    	- setProxyType(2);
	- Set audio volume function to support Gekkota 4.10.X
		- setAudioVolume
	- Set audio output function to support Gekkota 4.10.X
		- setAudioOutput
	- Disable audio function to support Gekkota 4.10.X
		- setAudioIsDisable
	- Activate NTP function to support Gekkota 4.10.X
		- setNtpIsEnable
	- Set NTS Settings function to support Gekkota 4.10.X
		- setNtpSettings
	- Inactivate player synchronization function to support Gekkota 4.10.X
		- setClockSyncDisable
	- Activate NTP for player synchronization function to support Gekkota 4.10.X
		- setClockSyncEnableNtp
	- Set colour ajustment function to support Gekkota 4.10.X
		- setColorAdjustment
- Add support for GPIO read/write for Phoenix and GPIO

##`2016-08-09` V1.10.21 [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/configuration-by-script-V1.10.21/delivery/example_000000000000-V1.10.21.js)
>##### **IMPORTANT**
- After having copy-pasted the certificate in the script js, don't forget to add ```/n/``` behind each line of the certificate (except for the last line, as described in the file), else a script installation error will be raised
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for certificate adding

##`2016-05-27` V1.10.20
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Set connector for audio output (for SMA300 only)
	- setAudioOutput
		- JACK35
		- HDMI

##`2016-01-11` V1.10.19
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- NTP
	- *setClockSyncEnableNtp*
		- enables the clock synchronization with a NTP server
			- NTP need to be configured properly first
	- *setClockSyncDisable*
		- disables the clock synchronization of the player
- Set color adjusment over HDMI
	- *setColorAdjustment*
		- player HDMI display index
		- brightness
		- brightness max
		- contrast
		- contrast max
		- opacity
		- opacity max
		- gamma
		- gamma max
		- color temperature
		- grey filter inactivate/activate
		- grey filter ITURBT
			- "BT.601-7"
			- "BT.709-6"
- AVcmd
	- *AvCmdGetProfile*
		- uart
		- tcp/ip
	- *AvCmdInstallProtocol*
		- TVDeviceName
		- TVDeviceProtocol
	- *AvCmdActivateProfile*
	 	- uart
		- tcp/ip
	- Note: add custom protocol example (TVDeviceName, TVDeviceProtocol)

##`2016-01-06` V1.10.18
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add functions
	- *setStatusServer* (and *disableStatusServer*)
		- permits to set WebUI server parameters for software and configuration file http download
	- *setAddonServer* (and *disableAddonServer*)
		- permits to set WebUI server parameters for device status http download

##`2015-06-30` V1.10.17
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change new logger API to match Gekkota 3.12.20 (and above)

##`2015-03-03` V1.10.16
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add function
	- *setOverscan*

##`2014-11-11` V1.10.15
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Update documentation (002A)
- Add english version

##`2014-01-11` V1.10.14
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add hostname
- Add functions linked to
	- audio
	- proxy


