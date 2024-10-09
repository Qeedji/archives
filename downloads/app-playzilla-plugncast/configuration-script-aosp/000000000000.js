/**
 * Function: configuration-by-script for Playzilla APK 
 * Version: 001A
 * File name pattern: the file name must match one of these formats:
 * - common to several devices 
 *    - 000000000000.js 
 *    - configuration.js 
 * - specific for one device 
 * 	  - <device_MAC_ID_addr>.js (format ABCDEFABCDEF.js)
 * - when using a external Ethernet to USB-C hub 
 *    - <device_ETH0_MAC_addr>.js (format ABCDEFABCDEF.js)
 *    - in this case, the "device_ETH0_MAC_addr" value is getting the hub_ETH0_MAC_addr value
 * - when working with PlugnCast G3, depending on the identification method specified in the Playzilla APK
 * 	  - <device_MAC_ID_addr>.configuration.js 
 * 	  - <device_Hostname>.configuration.js 
 * 	  - <device_UUID>.configuration.js 
 */

/** --------------------------------------
 * ---------------------------------------
 * ---- BEGIN of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */
 
// Allows to set the URL of your PlugnCast G3 frontal. Uncomment the line after.
//setPlayzillaURL("http://<myPlugnCastServer_IP_addr>:<myPlugnCastServer_IP_addr>/.frontals/.webdav/<myPlugnCastServerDomain>/"); // ex: "http://192.168.1.78:8080/.frontals/.webdav/demo.plugncast.com/". In case using a plugnCast server frontal in https, you may need to install a certificate in the device.

// Allows to set the device identification method when the device is registered in the PlugnCast G3 frontal. Uncomment the line after.
//setPlayzillaIdentificationMethod("mac"); // "mac": MAC identification method
//setPlayzillaIdentificationMethod("hostname"); // "hostname": Hostname identification method
//setPlayzillaIdentificationMethod("uuid"); // "uuid": UUID identification method

// Allows to set the PlugnCast G3 frontal credential. Uncomment the line after.
//setPlayzillaCredential("myPlugncastFrontalIdentifier", "myPlugncastFrontalPassword"); 

// Allows to set the heartbeat, number of seconds between two following connections to your PlugnCast G3 frontal. Uncomment the line after.
//setPlayzillaHeartbeat(2*30); // number of seconds (multiple of 30 secondes)

// Allows the Playzilla App to start automatically after the device boot-up. Uncomment one of the two lines after.
//enablePlayzillaStartAfterBootCompleted(); // the device must be in this mode to work with PlugnCast G3 server 
//disablePlayzillaStartAfterBootCompleted(); // // the device must be in this mode to be disconnected from PlugnCast G3 server

/** --------------------------------------
 * ---------------------------------------
 * ---- END of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */

/** --------------------------------------
 * ---- Functions section
 * ---------------------------------------
 */

/* Functions to handle start_after_boot_completed */
function enablePlayzillaStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setBoolean("start_after_boot_completed", true);
}
function disablePlayzillaStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setBoolean("start_after_boot_completed", false);
}

/* Function to set autorefresh_url_interval */
function setPlayzillaHeartbeat(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setLong("heartbeat", aSeconds);
	}
}

/* Function to set url */
function setPlayzillaURL(url) {
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setString("url", url);
}

/* Function to set credential */
function setPlayzillaIdentificationMethod(IdentificationMethod) {
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setString("id_type", IdentificationMethod);
}

/* Function to create a credential of type native */
function setPlayzillaCredential(aUsername, aPassword) {
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setString("username", aUsername);
	Android.Preferences("SharedPreferences", "plugncast.playzilla.admin", "plugncast.playzilla.prefs").setString("password", aPassword);
}
