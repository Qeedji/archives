/**
 * File : autoconf.js
 * Description :
 *   Example for a JavaScript platform auto-configuration.
 *
 *   This file must be nammed as :
 *      - "000000000000.js" for a default auto-configuration,
 *      - "<MAC>.js" for a specific auto-configuration (with <MAC> is the
 *             MAC adress of the platform with no separator character;
 *             Example : "00E04B4124DB.js").
 *  
 *   If the script fails, it's possible to activate a log.
 *   For that, add into the file "<playzilla install path>/res/log4xpcom.xml" the following section :
        <logger name="launcher.profile.addon-manager">
                <level value="DEBUG"/>
        </logger>
 *   Then, you can retrieve the log in the file 'player.log', which can be retrieved
 *   at different locations, depending on the platform type an playzilla version.
 */

const Cc = Components.classes;
const Ci = Components.interfaces;
const nsIPrefBranch=Ci.nsIPrefBranch;
Components.utils.import("resource://gre/modules/Services.jsm");

var logService = Cc["@innes/log4service;1"].getService(Ci.nsILog4Service);
var logger = new Logger("autoconf");
var systemManager = Cc["@innes/system/systemmanager;1"].getService(Ci.nsISystemManager);
logger.debug("Autoconf start");

// ---------------------------------------
// ---------------------------------------
// ---- BEGIN of the user configuration
// ---------------------------------------
// ---------------------------------------



// ---------------------------------------
// ---- Administrator configuration
// ---------------------------------------

// ---- Defines hostname : uncomment the line after
//setHostname("sma200-test");

// ---- Defines admin login : uncomment the line after
//Services.prefs.setCharPref("innes.webserver.username", "admin");

// ---- Defines admin password : uncomment the line after
//Services.prefs.setCharPref("innes.webserver.password", "admin");

// ---------------------------------------
// ---- LAN configuration
// ---------------------------------------

// ---- Retrieve lan adapter : DO NOT COMMENT THE FOLLOWING LINE !!!
let lan = getNetAdapter("LAN");

// ---- Choose static or DHCP for IPV4 : uncomment one of the 2 lines after
//enableDhcpv4(lan); // This one for DHCP
//disableDhcpv4(lan); // This one for static

// ---- Set static IP address, netmask and gateway for LAN adapter : uncomment the line after
//setIPv4StaticAddress(lan, "192.168.0.2", "255.255.255.0", "192.168.0.1");

// ---- Choose if UPnP discover gateway is activated or not
// ---- Not that if DHCP for IPv4 is enabled by enableDhcpv4(), the gateway will be defined by DHCP, not by UPnP
// ---- uncomment one of the 2 lines after
//enableGatewayUpnp(lan); // ---- This one for activating UPnP discover
//disableGatewayUpnp(lan); // ---- This one for gateway static (if disableDhcpv4() is used) or DHCP (if enableDhcpv4() is used)

// ---- Set the IGMP version : uncomment one of the 2 lines after
//setIgmpVersion(lan,3); // ---- This one for IGMP V3
//setIgmpVersion(lan,2); // ---- This one for IGMP V2

// ---- set the maximun bitrate value for LAN adapter. Possible values are :
// ---- MAX_BITRATE_VALUE_56_KBPS
// ---- MAX_BITRATE_VALUE_128_KBPS
// ---- MAX_BITRATE_VALUE_256_KBPS
// ---- MAX_BITRATE_VALUE_512_KBPS
// ---- MAX_BITRATE_VALUE_1024_KBPS
// ---- MAX_BITRATE_VALUE_2048_KBPS
// ---- MAX_BITRATE_VALUE_5120_KBPS
// ---- MAX_BITRATE_VALUE_10240_KBPS
// ---- uncomment the line after
//setMaxBitrateValue(lan, Ci.nsISystemAdapterIP.MAX_BITRATE_VALUE_10240_KBPS);

// ---- Choose if the max bitrate limitation is activated or not : uncomment one of the 2 lines after
//disableMaxBitrate(lan); // ---- This one for disabling
//enableMaxBitrate(lan); // ---- This one for enabling

// ---------------------------------------
// ---- Output configuration (display)
// ---------------------------------------
// ---- Retrieve display : DO NOT COMMENT THE FOLLOWING LINE !!!
let display = getDisplayAdapter();
// ---- Change display mode : uncomment the line after
//setDisplayMode(display, "1920x1080 60Hz VESA");
// ---- Change display rotation : uncomment the line after
//display.rotation = 0; // ---- Possible values are 0, 90, 180, 270
// --- Change the display area (overscan)
//setOverscan(100, 50, 200, 300); // ---- This one for enabling and change the parameters
//disableOverscan(); // ---- This one for disabling

// ---------------------------------------
// ---- Output configuration (audio)
// ---------------------------------------
// ---- Choose if audio is muted : uncomment one of the 2 lines after
//setAudioIsDisable(true); // ---- This one for audio mute
//setAudioIsDisable(false); // ---- This one for audio activated
// ---- SMA300 ONLY:  Choose audio output : uncomment one of the line after
//setAudioOutput("JACK35");
//setAudioOutput("HDMI");
// ---- Defines the audio volume : uncomment the line after
//setAudioVolume(50, 50);

// ---------------------------------------
// ---- Servers configuration
// ---------------------------------------

// ---- Configuring a Plugncast G2 server : uncomment the 4 lines below
//setPlugnCastG2("http://192.168.1.29/", 1);
//disablePlugnCastG3();
//disableStatusServer();
//disableAddonServer();

// ---- Configuring a Plugncast G3 server : uncomment the 4 lines below
// setPlugnCastG3("http://192.168.1.73/.playout", 1, "admin", "admin");
//setStatusServer("http://192.168.1.73/.playout/.device-status", 1, "admin", "admin");
// setAddonServer("http://192.168.1.73/.playout/.extensions", 1, "admin", "admin");
//disablePlugnCastG2();

// ---- Configuring no plugncast server (Screen Composer use for example) : uncomment the 4 lines below
//disablePlugnCastG2();
//disablePlugnCastG3();
//disableStatusServer();
//disableAddonServer();

// ---- Choose static or DHCP for DNS : uncomment one of the 2 lines after
//enableDnsDhcp(lan); // ---- This one for DHCP
//disableDnsDhcp(lan); // ---- This one for static

// ---- set static DNS servers : uncomment the line after
//setDns(lan, "192.168.0.1", "192.168.0.1");

// ---- Defines NTP settings : uncomment the line after
//setNtpSettings("fr.pool.ntp.org", 20, 10);

// ---- Choose if NTP is enabled : uncomment one of the 2 lines after
//setNtpIsEnable(true); // ---- This one for enabling
//setNtpIsEnable(false); // ---- This one for disabling

// ---- Choose if proxy is used : uncomment one of the 2 lines after
//setProxyIsEnable(true); // ---- This one for enabling
//setProxyIsEnable(false); // ---- This one for disabling

// ---- Defines 'No proxy for ' : uncomment the line after
//setNoProxyFor("localhost, 127.0.0.1");

// ---- Defines and activate http proxy : uncomment the line after
//setProxyHttp(true, "proxy-url", 3128, "login", "password");

// ---- Deactivate http proxy : uncomment the line after
//setProxyHttp(false, "", 0, "", "");

// ---- Defines and activate https proxy : uncomment the line after
//setProxyHttps(true, "proxy-url", 3128, "login", "password");

// ---- Deactivate http proxy : uncomment the line after
//setProxyHttps(false, "", 0, "", "");

// ---- Defines and activate ftp proxy : uncomment the line after
//setProxyFtp(false, "proxy-url", 3128, "login", "password");

// ---- Deactivate ftp proxy : uncomment the line after
//setProxyFtp(false, "", 0, "", "");

// ---- Choose if clock synchronization is enabled : uncomment one of the 2 lines after
//setClockSyncDisable(); // ---- This one for disabling
//setClockSyncEnableNtp(); // ---- This one for enabling ntp

//--------------------------------------------------------------------------------
// ---- Set the color adjustment on HDMI cable 
// depend on HW Chipset: check Gekkota release note is supported in your platform 
//--------------------------------------------------------------------------------
// HDMI index 			"1","2",... (in case several HDMI connector on the player) 
// Brightness			0 to 100
// Brightness Max 		0 to 255
// Contrast 			0 to 100
// Contrast Max 		0 to 127
// Opacity				0 to 100 
// Opacity Max			0 to 255
// Gamma				0 to 100
// Gamma Max = 			1 to 100
// Color temperature 	2000 to 15000
// Grey filter Enable	"n" or "y" 
// Grey filter ITURBT	BT.601-7" or "BT.709-6"
//-----------------------------------------
// setColorAdjustment("1", 50, 90, 50, 70, 0, 255, 50, 10, 6500, "n", "BT.601-7");

// ---------------------------------------
// ---- Maintenance configuration
// ---------------------------------------

// ---- Disable test card mode : uncomment the line after
//Services.prefs.setBoolPref("innes.player.mire", false);

// ---- Enable test card mode : uncomment the line after
//Services.prefs.setBoolPref("innes.player.mire", true);

// ----------------------------------------------------------------------------------
// ---- AVCmd: custom device profile example for toshiba_m1_custom
// for more information about other API, refer to Gekkota application note AVCmd
// ----------------------------------------------------------------------------------
let TVDeviceName="toshiba_m1_custom";
let TVDeviceProtocol=
{ 
    "name":"toshiba_m1_custom", 
    "description":"Commands (on,off) for display TOSHIBA type AV/RV625D", 
	"commands": 
	[ 
		{ 
			"name":"power-mode_ON", 
			"command":[ 
				"0x77","0x30","0x34","0x20","0x00","0x20","0x01","0x0D" 
			] 
		}, 
		{ 
			"name":"power-mode_OFF", 
			"command":[ 
				"0x77","0x30","0x34","0x20","0x00","0x20","0x00","0x0D"  
			] 
		} 
	]  
};
// ----------------------------------------------------------------------------------
// ---- AVCmd: custom device profile example for samsung_m1_custom (supporting daisy chain by Id)
// for more information about other API, refer to Gekkota application note AVCmd
// ----------------------------------------------------------------------------------
let TVDeviceNameSamsungM1="samsung_m1_custom";
let TVDeviceProtocolSamsungM1= 
{
   "name":"samsung_m1_custom",
   "description":"Commands (on,off,dvi,dtv,pc,hdmi)",
   "protocol":
   {
      "valueDeviceIdBroadcast":"0xFE"
   },
   "commands":
   [
      {
         "name":"power-mode_OFF",
         "command":["0xAA","0xF9","%ID","0x1","0x1","%SUM(1,-2)"]
      },
      {
         "name":"power-mode_ON",
         "command":["0xAA","0xF9","%ID","0x1","0x0","%SUM(1,-2)"]
      },
      {
         "name":"mute_ON_cust",
         "command":["0xAA","0x13","%ID","0x1","0x1","%SUM(1,-2)"]
      }
	] 
};
// ----------------------------------------------------------------------------------
// ---- AVCmd: init installation for custom TV device protocol for serial profile
// ----------------------------------------------------------------------------------
// ---- Get the "av-cmd" from the uart_1 profile : uncomment the line after
// ---- Double check which player COM number (COM1 on uart1, COM2 on uart2... ) 
// ---- is used to control the TV set through the serial cable 
// ---- and set the uart_n according to
//let avCmdSerial = AvCmdGetProfile("uart_1");
//let avCmdSerial = AvCmdGetProfile("uart_2");
//let avCmdSerial = AvCmdGetProfile("uart_3");
// ----------------------------------------------------------------------------------
// ---- AVCmd: activate and install a custom TV device protocol for serial profile
// ----------------------------------------------------------------------------------
// ---- Activate the serial profile : uncomment the line after
//AvCmdActivateProfile(avCmdSerial);
// ---- Install a protocol for the serial profile: uncomment the line after
//AvCmdInstallProtocol(avCmdSerial,TVDeviceName,TVDeviceProtocol);
// ----------------------------------------------------------------------------------
// ---- AVCmd: inactivate and uninstall a custom TV device protocol for serial profile
// ----------------------------------------------------------------------------------
// ---- Inactivate the serial profile : uncomment the line after
//AvCmdDesactivateProfile(avCmdSerial);
// ---- Uninstall custom device protocol for the serial profile: uncomment the line after
//AvCmdDesinstallProtocol(avCmdSerial,TVDeviceName);


// ----------------------------------------------------------------------------------
// ---- AVCmd: init installation for custom TV device protocol for TCP/IP profile
// ----------------------------------------------------------------------------------
// ---- Get the "av-cmd" from TCP/IP profile: uncomment the line after
//let avCmdTCPIP = AvCmdGetProfile("network");
// ----------------------------------------------------------------------------------
// ---- AVCmd: activate and install a custom TV device protocol for TCP/IP profile
// ----------------------------------------------------------------------------------
// ---- Activate the TCP/IP profile : uncomment the line after
//AvCmdActivateProfile(avCmdTCPIP);
// ---- Install a device protocol for the TCP/IP profile : uncomment the line after
//AvCmdInstallProtocol(avCmdTCPIP,TVDeviceName,TVDeviceProtocol);
// ----------------------------------------------------------------------------------
// ---- AVCmd: inactivate and uninstall a custom TV device protocol for TCP/IP profile
// ----------------------------------------------------------------------------------
// ---- Uninstall custom device protocol for the TCP/IP profile : uncomment the line after
//AvCmdDesinstallProtocol(avCmdTCPIP,TVDeviceName);
// ---- Inactivate the TCP/IP profile : uncomment the line after
//AvCmdDesactivateProfile(avCmdTCPIP);

// ---- Save any previous preference changed : DO NOT COMMENT THE FOLLOWING LINE !!!
Services.prefs.savePrefFile(null);



// ---------------------------------------
// ---------------------------------------
// ---- END of the user configuration
// ---------------------------------------
// ---------------------------------------

// ---- Functions section

/**
 * Configuring a Plugncast G2 server.
 * @param aBaseuri : baseuri of Plugncast server
 * @param aHeartbeat : heartbeat of download in minutes */
function setPlugnCastG2 (aBaseuri, aHeartbeat)
{
	Services.prefs.setCharPref("innes.app-profile.manifest-downloader.*.*.*.class-name", "g2");
    let basepref="innes.app-profile.manifest-downloader:g2.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", true);
    if (aHeartbeat <= 0)
	   aHeartbeat = 1;
	Services.prefs.setIntPref(basepref + "heartbeat", aHeartbeat*60);
	if (aBaseuri.charAt(aBaseuri.length-1) == '/')
    {
       aBaseuri = aBaseuri.substr(0,aBaseuri.length-1);
	   log ("setPlugnCastG2 after aBaseuri = " + aBaseuri);
    }
    if (aBaseuri.lastIndexOf("ftp:") == 0)
    {
        Services.prefs.setCharPref(basepref + "base-uri", aBaseuri);
        let adr=aBaseuri.substr(4);
        Services.prefs.setCharPref(basepref + "wsman.base-uri", 
		    "http:" + adr + "/wsman");
    }
	else
    {
        Services.prefs.setCharPref(basepref + "base-uri", 
		    aBaseuri + "/plugnCast/");
        Services.prefs.setCharPref(basepref + "wsman.base-uri", 
		    aBaseuri + "/wsman");
    }
}
/**
 * Disable a Plugncast G2 server.  */
function disablePlugnCastG2 ()
{
    let basepref="innes.app-profile.manifest-downloader:g2.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", false);
}
/**
 * Configuring a Plugncast G3 server.
 * @param aBaseuri : baseuri of Plugncast server
 * @param aHeartbeat : heartbeat of download in minutes
 * @param aUsername : username for authentication
 * @param aPassword : password for authentication 
 * @param  aPasswordCrypted : indicate if the passsword is crypted or not 
 */
function setPlugnCastG3 (aBaseuri, aHeartbeat, aUsername, aPassword, aPasswordCrypted)
{
	Services.prefs.setCharPref("innes.app-profile.manifest-downloader.*.*.*.class-name", "g3");
    let basepref="innes.app-profile.manifest-downloader:g3.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", true);
    if (aHeartbeat <= 0)
	   aHeartbeat = 1;
	Services.prefs.setIntPref(basepref + "heartbeat", aHeartbeat*60);
    Services.prefs.setCharPref(basepref + "base-uri", aBaseuri);
    Services.prefs.setCharPref(basepref + "username", aUsername);
    Services.prefs.setCharPref(basepref + "password", aPassword);
	if (aPasswordCrypted == undefined)
		aPasswordCrypted = false;
	Services.prefs.setBoolPref(basepref + "password-crypted", aPasswordCrypted);
}
/**
 * Disable a Status server.  */
function disableStatusServer ()
{
    let basepref="innes.launcher.status.";
	Services.prefs.setBoolPref(basepref + "enabled", false);
}
/**
 * Configuring a Status server.
 * @param aBaseuri : baseuri of Status server
 * @param aHeartbeat : heartbeat of download in minutes
 * @param aUsername : username for authentication
 * @param aPassword : password for authentication 
 * @param  aPasswordCrypted : indicate if the passsword is crypted or not 
 */
function setStatusServer (aBaseuri, aHeartbeat, aUsername, aPassword, aPasswordCrypted)
{
    let basepref="innes.launcher.status.";
	Services.prefs.setBoolPref(basepref + "enabled", true);
    if (aHeartbeat <= 0)
	   aHeartbeat = 1;
	Services.prefs.setIntPref(basepref + "heartbeat", aHeartbeat*60);
    Services.prefs.setCharPref(basepref + "base-uri", aBaseuri);
    Services.prefs.setCharPref(basepref + "username", aUsername);
    Services.prefs.setCharPref(basepref + "password", aPassword);
	if (aPasswordCrypted == undefined)
		aPasswordCrypted = false;
	Services.prefs.setBoolPref(basepref + "password-crypted", aPasswordCrypted);
}
/**
 * Disable the addon manager.  */
function disableAddonManager ()
{
    let basepref="innes.app-profile.addon-manager.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", false);
}
/**
 * Disable a Addon server.  */
function disableAddonServer ()
{
    let basepref="innes.app-profile.addon-manager.*.*.*.http-downloader.";
	Services.prefs.setBoolPref(basepref + "enabled", false);
}
/**
 * Configuring a addon server.
 * @param aBaseuri : baseuri of addon server
 * @param aHeartbeat : heartbeat of download in minutes
 * @param aUsername : username for authentication
 * @param aPassword : password for authentication 
 * @param  aPasswordCrypted : indicate if the passsword is crypted or not 
 */
function setAddonServer (aBaseuri, aHeartbeat, aUsername, aPassword, aPasswordCrypted)
{
    let basepref="innes.app-profile.addon-manager.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", true);
	basepref += "http-downloader.";
	Services.prefs.setBoolPref(basepref + "enabled", true);
    if (aHeartbeat <= 0)
	   aHeartbeat = 1;
	Services.prefs.setIntPref(basepref + "heartbeat", aHeartbeat*60);
    Services.prefs.setCharPref(basepref + "base-uri", aBaseuri);
    Services.prefs.setCharPref(basepref + "username", aUsername);
    Services.prefs.setCharPref(basepref + "password", aPassword);
	if (aPasswordCrypted == undefined)
		aPasswordCrypted = false;
	Services.prefs.setBoolPref(basepref + "password-crypted", aPasswordCrypted);
}
/**
 * Disable a Plugncast G3 server.  */
function disablePlugnCastG3 ()
{
    let basepref="innes.app-profile.manifest-downloader:g3.*.*.*.";
	Services.prefs.setBoolPref(basepref + "authorized", false);
}
/**
 * Set and active the maximun bitrate value for a network adapter.
 * @param aAdapter : the network adapter to be modified
 * @param aMaxBirateValue : the maximun bitrate value in kbps */
 function setMaxBitrateValue(aAdapter, aMaxBirateValue)
 {
    aAdapter.isMaxBitrateEnabled = true;
    aAdapter.maxBitrateValue = aMaxBirateValue;
 }
/**
 * Disable the maximun bitrate feature. */
 function disableMaxBitrate(aAdapter)
 {
    aAdapter.isMaxBitrateEnabled = false;
 }
/**
 * Disable the maximun bitrate feature. */
 function enableMaxBitrate(aAdapter)
 {
    aAdapter.isMaxBitrateEnabled = true;
 }
/**
 * Enable the DHCP for IPv4.
 * @param aAdapter : the network adapter to be modified */
 function enableDhcpv4(aAdapter)
 {
    aAdapter.isDhcpv4Enabled=true;
 }
/**
 * Disable the DHCP for IPv4. Use static IPV4 adress.
 * @param aAdapter : the network adapter to be modified */
 function disableDhcpv4(aAdapter)
 {
    aAdapter.isDhcpv4Enabled=false;
 }
/**
 * Set the static IPV4 adress for a network adapter.
 * @param aAdapter : the network adapter to be modified
 * @param aAdress : the string for the IP adress
 * @param aNetmask : the string for the netmask
 * @param aGateway : the string for the gateway adress */
 function setIPv4StaticAddress(aAdapter,aAdress,aNetmask,aGateway)
 {
    aAdapter.setIpv4Address(
	   createIPv4Adress(aAdress),
	   createIPv4Adress(aNetmask),
	   createIPv4Adress(aGateway),
	   Ci.nsISystemAdapterIP.METRIC_AUTOMATIC);
 }
/**
 * Enable the UPnP discover gateway.
 * Not that if DHCP for IPv4 is enabled, the gateway will be defined by DHCP, not by UPnP.
 * @param aAdapter : the network adapter to be modified */
 function enableGatewayUpnp(aAdapter)
 {
    aAdapter.isGatewayUPnPDiscovered=true;
 }
/**
 * Disable the UPnP discover gateway.
 * @param aAdapter : the network adapter to be modified */
 function disableGatewayUpnp(aAdapter)
 {
    aAdapter.isGatewayUPnPDiscovered=false;
 }
/**
 * Enable the DHCP for DNS.
 * @param aAdapter : the network adapter to be modified */
 function enableDnsDhcp(aAdapter)
 {
    aAdapter.isDnsDhcpEnabled=true;
 }
/**
 * Disable the DHCP for DNS. Use static DNS
 * @param aAdapter : the network adapter to be modified */
 function disableDnsDhcp(aAdapter)
 {
    aAdapter.isDnsDhcpEnabled=false;
 }
/**
 * Set the primary en secondary DNS server for a network adapter.
 * @param aAdapter : the network adapter to be modified
 * @param aAdress : the string adress for the primary DNS server
 * @param aAdress : the string adress for the secondary DNS server
*/
function setDns(aAdapter,aDns1,aDns2)
{
   aAdapter.setDns(createIPv4Adress(aDns1),createIPv4Adress(aDns2));
}
/**
 * Set the IGMP version for a network adapter.
 * @param aAdapter : the network adapter to be modified
 * @param aValue : the version
*/
function setIgmpVersion(aAdapter,aValue)
{
   aAdapter.igmpVersion=aValue;
}

/**
 * Retrieve the component for a network adapter
 * @param aName : type of the adapter (lan, wlan, wwan)
 * @return component of interface nsISystemIP for a network adapter */
function getNetAdapter(aName)
{
    let iids = {
       LAN: Ci.nsISystemAdapterLAN,
       WAN: Ci.nsISystemAdapterWLAN,
       WWAN: Ci.nsISystemAdapterWWAN 
    };
    let id = iids[aName];
	log ("id = " + id);
	if (id == undefined)
    {
	   error ("undefined network adapter type");
       throw new Error("undefined network adapter type");
    }
	let list = systemManager.getAdaptersByIId(id);
    if (list.lenght == 0)
       throw new Error("no adapter found");
    let adapter = list.queryElementAt(0, id);
    adapter = adapter.registered;
	log ("getNetAdapter OK adapter = " + adapter);
    return adapter;
}
/**
 * Retrieve the first display adapter
 * @return component of interface nsISystemAdapterDisplayOutput for the display adapter */
function getDisplayAdapter()
{
   let id = Ci.nsISystemAdapterDisplayOutput;
   let list = systemManager.getAdaptersByIId(id);
   if (list.lenght == 0)
       throw new Error("no adapter found");	
   let adapter = list.queryElementAt(0, id);
   return adapter.registered;
}
/**
 * Set the display mode of a display adapter 
 * @param aDisplay : the display adapter to be modified
 * @param aModeLabel : label of mode to be setted
 */
function setDisplayMode(aDisplay, aModeLabel)
{
   let list = aDisplay.displayModesList;
   let l = list.length;
   for (let i = 0; i < l; i++)
   {
      let mode = list.queryElementAt(i, Ci.nsISystemDisplayMode);
      if (mode.label.toUpperCase() == aModeLabel.toUpperCase())
      {
         aDisplay.displayMode = mode;
		 return;
      }
   }
   throw new Error("mode not found");
}
/**
* Set the display area (overscan).
* @param aTop The top  position of the display area (can be negative)
* @param aLeft The left position of the display area (can be negative)
* @param aWidth the width of display area. Use 0 for complete width of display 
* @param aHeight the height of display area. Use 0 for complete height of display  */
function setOverscan(aTop, aLeft, aWidth, aHeight)
{
	Services.prefs.setIntPref("innes.player.display.top", aTop);
	Services.prefs.setIntPref("innes.player.display.left", aLeft);
	Services.prefs.setIntPref("innes.player.display.width", aWidth);
	Services.prefs.setIntPref("innes.player.display.height", aHeight);
}
/**
* Disable the overscan */
function disableOverscan()
{
   setOverscan(0,0,0,0);
}
function createIPv4Adress (aAdress)
{
   let ip = Cc["@innes/system/ipv4structure;1"].createInstance(Ci.nsISystemIPv4Structure);
   log("createIPv4Adress aAdress = " + aAdress);
   ip.stringAddress = aAdress;
   return ip;
}
/**
 * Set the hostname of the platforme
* @param aName : the new hostname
*/
function setHostname(aName)
{
	let settings = Cc["@innes/system/generalsettings;1"].getService(Ci.nsISystemGeneralSettings);
// Verify hostname
	log("setHostname begin aName =" + aName);
    let pattern="[A-Za-z0-9][A-Za-z0-9.-]{";
	pattern += aName.length-1 + "}";
	let re = new RegExp(pattern);
		log ("setHostname re = " + re);
    if (!re.test(aName))
    {
       throw new Error("unauthorized character in hostname");
    }
	settings.hostname = aName;
	log("setHostname end");
}
/**
* Set the audio volume
* @param aVolumeL : volume for left channel between 0 to 100
* @param aVolumeR : volume for rigth channel between 0 to 100
*/
function setAudioVolume(aVolumeL, aVolumeR)
{
   var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   let volume = aVolumeL | (aVolumeR << 8);
   systemPref.setIntPref("system/display/audio/volume", volume);
}

/**
* Set the audio output
* @param output_type : type of the audio output connector: JACK35 or HDMI
*/
function setAudioOutput(output_type)
{
   var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setCharPref("system/display/audio/output_connector", output_type);
}

/**
* Enable or disable audio
* @param aDisable : false to enable audio, true to mute audio
*/
function setAudioIsDisable(aDisable)
{
   var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setBoolPref("system/display/audio/mute", aDisable);
}
/**
* Enable or disable NTP service
* @param aEnable : true to enable the NTP service, false otherwise
*/
function setNtpIsEnable(aEnable)
{
	var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setBoolPref("system/network/ntp_enabled", aEnable);
}
/**
* Set the NTP configuration
* @param aServer : the adresse of NTP server
* @param aNbTries : the maximum number of try
* @param aTimeout : the delay between 2 tries in secondes
*/
function setNtpSettings(aServer,aNbTries,aTimeout)
{
	var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setCharPref("system/network/ntp_server", aServer);
   systemPref.setIntPref("system/network/ntp_nbtries", aNbTries);
   systemPref.setIntPref("system/network/ntp_timeout", aTimeout);
}
/*
* Enable or disable proxies usage.
* @param aEnable : true to use proxies, false otherwise
**/
function setProxyIsEnable(aEnable)
{
	Services.prefs.setIntPref("network.proxy.type", (aEnable) ? 1 : 0);
}
/*
* Set list of URLs with direct access.
* @param aNoProxyFor: list of URL separate by ',' caractere
*/ 
function setNoProxyFor(aNoProxyFor)
{
	Services.prefs.setCharPref("network.proxy.no_proxies_on", aNoProxyFor);
}
/*
* Set the HTTP proxy configuration
* @param aEnabled:  true to use proxy, false otherwise
* @param aServer:  URL of proxy server
* @param aPort:  Port of proxy server
* @param aLogin:  Login to proxy connexion
* @param aPassword:  Passord to proxy connexion
*/ 
function setProxyHttp(aEnabled,aServer,aPort,aLogin,aPassword)
{
	setProxy("http", aEnabled,aServer,aPort,aLogin,aPassword);
}
/*
* Set the HTTPS proxy configuration
* @param aEnabled:  true to use proxy, false otherwise
* @param aServer:  URL of proxy server
* @param aPort:  Port of proxy server
* @param aLogin:  Login to proxy connexion
* @param aPassword:  Passord to proxy connexion
*/ 
function setProxyHttps(aEnabled,aServer,aPort,aLogin,aPassword)
{
	setProxy("ssl", aEnabled,aServer,aPort,aLogin,aPassword);
}
/*
* Set the FTP proxy configuration
* @param aEnabled:  true to use proxy, false otherwise
* @param aServer:  URL of proxy server
* @param aPort:  Port of proxy server
* @param aLogin:  Login to proxy connexion
* @param aPassword:  Passord to proxy connexion
*/ 
function setProxyFtp(aEnabled,aServer,aPort,aLogin,aPassword)
{
	setProxy("ftp", aEnabled,aServer,aPort,aLogin,aPassword);
}
function setProxy(aPrefix, aEnabled,aServer,aPort,aLogin,aPassword)
{
	let prefix = "network.proxy.";
	let prefixInnes =  "innes.network.proxy.";
	Services.prefs.setBoolPref(prefixInnes + aPrefix + "_enabled", aEnabled);
	Services.prefs.setCharPref(prefix + aPrefix, (aEnabled) ? aServer : "");
	Services.prefs.setIntPref(prefix + aPrefix + "_port", (aEnabled) ? aPort : 0);
	Services.prefs.setCharPref(prefixInnes + aPrefix, aServer);
	Services.prefs.setIntPref(prefixInnes + aPrefix + "_port", aPort);
	Services.prefs.setCharPref(prefixInnes + aPrefix + "_login", aLogin);
	Services.prefs.setCharPref(prefixInnes + aPrefix + "_password", aPassword);
}

function setClockSyncDisable()
{
	var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setBoolPref("system/clock_sync/enable", false);
}

function setClockSyncEnableNtp()
{
	var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
   systemPref.setBoolPref("system/clock_sync/enable", true);
	systemPref.setCharPref("system/clock_sync/source", "ntp");
}

/**
* Set the color adjustment
* @param aNumDisplay:  the index of the display output (start from 1)
* @param aBrightness:  the value of the brightness (0 <= brightness <= 100)
* @param aBrightnessMax:  the value of the brightness max (0 <= brightness max <= 255)
* @param aContrast:  the value of the contrast (0 <= contrast <= 100)
* @param aContrastMax:  the value of the contrast max (0 <= contrast max <= 127)
* @param aOpacity:  the value of the opacity (0 <= opacity <= 100)
* @param aOpacityMax:  the value of the opacity max (0 <= opacity max <= 255)
* @param aGamma:  the value of the gamma (0 <= gamma <= 100)
* @param aGammaMax:  the value of the gamma max (1 <= gamma max <= 100)
* @param aTemperature:  the value of the color temperature (2000 <= temperature <= 15000)
* @param aGreyFilterEnable:  "y" enable the grey filter, "n" disable the grey filter
* @param aGreyFilterITURBT:  "BT.601-7" or "BT.709-6"
*/ 
function setColorAdjustment(aIndexDisplay, aBrightness, aBrightnessMax, aContrast, aContrastMax, aOpacity, aOpacityMax, aGamma, aGammaMax, aTemperature, aGreyFilterEnable, aGreyFilterITURBT)
{
	var systemPref = Cc["@innes/systemprefservice;1"].getService(Ci.nsIPrefBranch);
	let prefix = "system/display_output" + aIndexDisplay + "/color_adjustment/";
	if((aBrightness >= 0) && (aBrightness <= 100)){
		try {
			let temp = systemPref.getIntPref(prefix + "brightness");
			systemPref.setIntPref(prefix + "brightness", aBrightness);
		} catch (e) {
		}
	}
	if((aBrightnessMax >= 0) && (aBrightnessMax <= 255)){
		try {
			let temp = systemPref.getIntPref(prefix + "brightness_max");
			systemPref.setIntPref(prefix + "brightness_max", aBrightnessMax);
		} catch (e) {
		}
	}
	if((aContrast >= 0) && (aContrast <= 100)){
		try {
			let temp = systemPref.getIntPref(prefix + "contrast");
			systemPref.setIntPref(prefix + "contrast", aContrast);
		} catch (e) {
		}
	}
	if((aContrastMax >= 0) && (aContrastMax <= 127)){
		try {
			let temp = systemPref.getIntPref(prefix + "contrast_max");
			systemPref.setIntPref(prefix + "contrast_max", aContrastMax);
		} catch (e) {
		}
	}
	if((aOpacity >= 0) && (aOpacity <= 100)){
		try {
			let temp = systemPref.getIntPref(prefix + "opacity");
			systemPref.setIntPref(prefix + "opacity", aOpacity);
		} catch (e) {
		}
	}
	if((aOpacityMax >= 0) && (aOpacityMax <= 255)){
		try {
			let temp = systemPref.getIntPref(prefix + "opacity_max");
			systemPref.setIntPref(prefix + "opacity_max", aOpacityMax);
		} catch (e) {
		}
	}
	if((aGamma >= 0) && (aGamma <= 100)){
		try {
			let temp = systemPref.getIntPref(prefix + "gamma");
			systemPref.setIntPref(prefix + "gamma", aGamma);
		} catch (e) {
		}
	}
	if((aGammaMax >= 1) && (aGammaMax <= 100)){
		try {
			let temp = systemPref.getIntPref(prefix + "gamma_max");
			systemPref.setIntPref(prefix + "gamma_max", aGammaMax);
		} catch (e) {
		}
	}
	if((aTemperature >= 2000) && (aTemperature <= 15000)){
		try {
			let temp = systemPref.getIntPref(prefix + "temperature");
			systemPref.setIntPref(prefix + "temperature", aTemperature);
		} catch (e) {
		}
	}
	if((aGreyFilterEnable == "y") || (aGreyFilterEnable == "n")){
		try {
			let temp = systemPref.getCharPref(prefix + "grey_filter_enable");
			systemPref.setCharPref(prefix + "grey_filter_enable", aGreyFilterEnable);
		} catch (e) {
		}
	}
	if((aGreyFilterITURBT == "BT.601-7") || (aGreyFilterITURBT == "BT.709-6")){
		try {
			let temp = systemPref.getCharPref(prefix + "grey_filter_iturbt");
			systemPref.setCharPref(prefix + "grey_filter_iturbt", aGreyFilterITURBT);
		} catch (e) {
		}
	}
}

/**
* Retrieve a "av-cmd" profile for the given device id.
* @param aDeviceId: (exemple "network" or "uart_<n>"
* @return the entry of profile or null
*/
function AvCmdGetProfile(aDeviceId)
{
	let profiles = systemManager.instantiateApplicationProfileBindings(
		"av-cmd","simple-protocol", aDeviceId,"","");
	if (profiles.length > 0)
	{
		logger.debug("Has profile");
        let entry = profiles.queryElementAt(0, Ci.nsISystemAPBEntry);
		return entry;
	}
	return null;
}
/**
* Activate a "av-cmd" profile.
* @param aProfileEntry: the entry for the "av-cmd" profile.
*/
function AvCmdActivateProfile(aProfileEntry)
{
    logger.debug("Activate profile");
	aProfileEntry.activated = true;
}
/**
* Desactivate a "av-cmd" profile.
* @param aProfileEntry: the entry for the "av-cmd" profile.
*/
function AvCmdDesactivateProfile(aProfileEntry)
{
	aProfileEntry.activated = false;
}
/**
* Install a "av-cmd" protocol.
* @param aProfileEntry: the entry for the "av-cmd" profile
* @param aName: the name of protocol
* @paran aProtocol: the protocol object */
function AvCmdInstallProtocol(aProfileEntry, aName, aProtocol)
{
    aProfileEntry.profile.setProtocol(aName, aProtocol);
	aProfileEntry.prefBranch.setCharPref("protocol", aName);
}
/**
* Desinstall a "av-cmd" protocol.
* @param aProfileEntry: the entry for the "av-cmd" profile
* @param aName: the name of protocol */
function AvCmdDesinstallProtocol(aProfileEntry, aName)
{
    aProfileEntry.profile.setProtocol(aName, null);
	aProfileEntry.prefBranch.setCharPref("protocol", "");
}

function log(str)
{
    logger.debug(str, null);
}
function warn(str)
{
    logger.warn(str, null);
}
function error(str)
{
    logger.error(str, null);
}
