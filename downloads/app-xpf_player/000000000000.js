/**
 * Function: configuration-by-script for Xpf Player APK 
 * Version: 001A
 * File name pattern: the file name must match one of these formats:
 * - specific for one device 
 *    - 000000000000.js 
 *    - configuration.js 
 * 	  - <device_MAC_identifier_addr>.js (format ABCDEFABCDEF.js)
 * - when using an external Ethernet to USB-C hub 
 *    - <device_ETH0_MAC_addr>.js (format ABCDEFABCDEF.js)
 *    - in this case, the "device_ETH0_MAC_addr" value is getting the hub_ETH0_MAC_addr value
 */

/** --------------------------------------
 * ---------------------------------------
 * ---- BEGIN of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */

// Allows to set the URL of `XPF` server. Uncomment the line after.
//setXpfPlayerURL("http://192.168.2.69/"); // ex: "http://192.168.2.69/"

// Allows to set the heartbeat, number of seconds between two following connections to your `XPF` server. Uncomment the line after.
//setXpfPlayerHeartbeat(2*30); //  (multiple of 30 secondes) // defaut: 2*30

// Allows to set the appropriate Xpf Player's license key for this device. Uncomment the line after.
//setXpfPlayerLicenseKey("00000-0000-0000-0000-00000"); // ex: "00000-0000-0000-0000-00000". Space characters are not supported

// Allows the Xpf Player App to start automatically after the device boot-up. Uncomment one of the two lines after.
//enableXpfPlayerStartAfterBootCompleted(); // the device must be in this mode to work with the `XPF` server
//disableXpfPlayerStartAfterBootCompleted(); // the device must be in this mode to be disconnected from `XPF` server


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

/* Function to set url */
function setXpfPlayerURL(url) {
	Android.Preferences("SharedPreferences", "tech.qeedji.xpf.player.admin", "tech.qeedji.xpf.player.prefs").setString("url", url);
}

/* Function to set license */
function setXpfPlayerLicenseKey(aLicense) {
	Android.Preferences("SharedPreferences", "tech.qeedji.xpf.player.admin", "tech.qeedji.xpf.player.prefs").setString("license", aLicense);
}

/* Function to set autorefresh_url_interval */
function setXpfPlayerHeartbeat(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "tech.qeedji.xpf.player.admin", "tech.qeedji.xpf.player.prefs").setLong("heartbeat", aSeconds);
	}
}

/* Functions to handle start_after_boot_completed */
function enableXpfPlayerStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.xpf.player.admin", "tech.qeedji.xpf.player.prefs").setBoolean("start_after_boot_completed", true);
}
function disableXpfPlayerStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.xpf.player.admin", "tech.qeedji.xpf.player.prefs").setBoolean("start_after_boot_completed", false);
}
