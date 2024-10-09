/**
 * Function: configuration-by-script for URL Launcher 
 * Version: 001B
 * File name pattern: the file name must match one of these formats:
 * - common to several devices 
 *    - 000000000000.js
 * 	  - configuration.js 
 * - specific for one device 
 * 	  - <device_WLAN0_MAC_addr>.js (format ABCDEFABCDEF.js)
 * - when using a external Ethernet to USB-C hub 
 *    - <device_ETH0_MAC_addr>.js (format ABCDEFABCDEF.js)
 *    - in this case, the "device_ETH0_MAC_addr" value is getting the hub_ETH0_MAC_addr value
 */

/** --------------------------------------
 * ---------------------------------------
 * ---- BEGIN of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */

/*------  Allows to handle start_after_boot_completed ---------*/
//enableStartAfterBootCompleted();
//disableStartAfterBootCompleted();

/*------  Allows to handle autorefresh_url_enabled ---------*/
//enableAutoRefreshUrl();
//disableAutoRefreshUrl();

/*------  Allows to set autorefresh_url_interval ---------*/
//setAutoRefreshUrlInterval(60);

/*------  Allows to set url and configure credentials  ---------*/
// uncomment the three line below to view a Webpage having no need for credential 
// setURL("https://www.qeedji.tech/en/");
// setCredential("credential1");
// setCredentialNone("credential1");

// uncomment the three lines below to view a Webpage needing credential identifier and password for a basic authentication 
// setURL("https://www.demo-test.fr/");
// setCredential("credential1");
// createCredentialForBasicAuthentication("credential1", "username", "password");

// uncomment the three lines below to view a Webpage needing credential identifier and password for a webpage form 
// setURL("https://www.demo-test.fr/");
// setCredential("credential1");
// createCredentialForWebpageForm("credential1", "username", "password");

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
function enableStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setBoolean("start_after_boot_completed", true);
}
function disableStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setBoolean("start_after_boot_completed", false);
}

/* Functions to handle autorefresh_url_enabled */
function enableAutoRefreshUrl() {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setBoolean("autorefresh_url_enabled", true);
}
function disableAutoRefreshUrl() {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setBoolean("autorefresh_url_enabled", false);
}

/* Function to set autorefresh_url_interval */
function setAutoRefreshUrlInterval(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setLong("autorefresh_url_interval", aSeconds);
	}
}

/* Function to set url */
function setURL(url) {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setString("url", url);
}

/* Function to set credential */
function setCredential(aCredential) {
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", "tech.qeedji.url_launcher.prefs").setString("credential", aCredential);
}

/* Function to create Credential For Basic Authentication */
function createCredentialForBasicAuthentication(aCredential, aUsername, aPassword) {
	var basename = "tech.qeedji.url_launcher.credential." + aCredential + ".prefs";
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("type", "native"); /* native = HttpAuth */
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("username", aUsername);
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("password", aPassword);
}

/* Function to create Credential For Webpage Form */
function createCredentialForWebpageForm(aCredential, aUsername, aPassword) {
	var basename = "tech.qeedji.url_launcher.credential." + aCredential + ".prefs";
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("type", "user-password-webpageform"); 
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("username", aUsername);
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("password", aPassword);
}

/* Function to reset Credential to None value*/
function setCredentialNone(aCredential) {
	var basename = "tech.qeedji.url_launcher.credential." + aCredential + ".prefs";
	Android.Preferences("SharedPreferences", "tech.qeedji.url_launcher", basename).setString("type", ""); 
}
