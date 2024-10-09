/**
 * Function: configuration-by-script for PowerBI Online Viewer 
 * Version: 001A
 * File name pattern: the file name must match one of these formats:
 * - common to several devices 
 *    - 000000000000.js
 * 	  - configuration.js 
 * - specific for one device 
 * 	  - <device_WLAN0_MAC_addr>.js (format ABCDEFABCDEF.js)
 * - when using a external Ethernet to USB-C hub 
 *    - <device_ETH0_MAC_addr>.js (format ABCDEFABCDEF.js)
 *    - in this case, the "device_ETH0_MAC_addr" value is getting the hub_ETH0_MAC_addr value
 * Empty value is not allowed for my tenant, my client id or myClientSecretvalue else a black screen could be noticed then on the screen. In case trouble, refresh the device Web UI, then go in Configuration > Apps to check credentials parameters values
 */

/** --------------------------------------
 * ---------------------------------------
 * ---- BEGIN of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */

/*------  Allows to define the App starting strategy after a device reboot  ---------*/
//enablePowerbiOnlineViewerStartAfterBootCompleted(); 
//disablePowerbiOnlineViewerStartAfterBootCompleted();

// either uncomment the five following lines to view a PowerBI report with OAuth Application authentication and configure the report vizualisation.
// setPowerbiOnlineViewerURL("https://app.powerbi.com/groups/00000000-0000-0000-0000-000000000000/reports/00000000-0000-0000-0000-000000000000/"); // URL example: https://app.powerbi.com/groups/a271a2f7-828a-4594-b734-de721cb35bbc/reports/0d41da92-a72d-405a-ac06-4b4943705aa6/
// setCredential("credential-powerbi-1");
// createPowerBiOnlineViewerCredentialForOAuthApplicationAuthentication("credential-powerbi-1", "00000000-0000-0000-0000-000000000000", "00000000-0000-0000-0000-000000000000", "myclientSecretvalue"); // 1:credential, 2: my tenant, 3: my client id, 4: my client secret 
// setPowerbiOnlineViewerReportPageDuration(30); // Allows to set the viewing time of each report page (in seconds)
//setPowerbiOnlineViewerReportPageFilter("all"); // Allows to filter the visualization for some report page only ("all" or "1, 2..5, 7.., 10")

// or uncomment the five following lines to view a PowerBI report with OAuth Application authentication and configure the report vizualisation 
// setPowerbiOnlineViewerURL("https://app.powerbi.com/groups/00000000-0000-0000-0000-000000000000/reports/00000000-0000-0000-0000-000000000000/"); // URL example: https://app.powerbi.com/groups/a271a2f7-828a-4594-b734-de721cb35bbc/reports/0d41da92-a72d-405a-ac06-4b4943705aa6/
// setCredential("credential-powerbi-2");
// createCredentialForOAuthUserAuthentication("credential-powerbi-2", "00000000-0000-0000-0000-000000000000", "00000000-0000-0000-0000-000000000000", "myclientSecretvalue", "myusername", "mypassword"); // 1:credential, 2: my tenant, 3: my client id, 4: my client secret, 5: Power BI account username, 6: Power BI account password
// setPowerbiOnlineViewerReportPageDuration(30); // Allows to set the viewing time of each report pages (in seconds)
// setPowerbiOnlineViewerReportPageFilter("all"); // Allows to filter the visualization for some report page only ("all" or "1, 2..5, 7.., 10")

// or uncomment the three following lines to view a PowerBI dashboard with OAuth Application authentication
// setPowerbiOnlineViewerURL("https://app.powerbi.com/groups/00000000-0000-0000-0000-000000000000/dashboards/00000000-0000-0000-0000-000000000000/"); // URL example: https://app.powerbi.com/groups/a271a2f7-828a-4594-b734-de721cb35bbc/dashboards/0d41da92-a72d-405a-ac06-4b4943705aa6/
// setCredential("credential-powerbi-3");
// createPowerBiOnlineViewerCredentialForOAuthApplicationAuthentication("credential-powerbi-3", "00000000-0000-0000-0000-000000000000", "00000000-0000-0000-0000-000000000000", "myclientSecretvalue"); // 1:credential, 2: my tenant, 3: my client id, 4: my client secret 

// or uncomment the three following lines to view a PowerBI dashboard with OAuth User authentication
// setPowerbiOnlineViewerURL("https://app.powerbi.com/groups/00000000-0000-0000-0000-000000000000/dashboards/00000000-0000-0000-0000-000000000000/"); // URL example: https://app.powerbi.com/groups/a271a2f7-828a-4594-b734-de721cb35bbc/dashboards/0d41da92-a72d-405a-ac06-4b4943705aa6/
// setCredential("credential-powerbi-4");
// createCredentialForOAuthUserAuthentication("credential-powerbi-4", "00000000-0000-0000-0000-000000000000", "00000000-0000-0000-0000-000000000000", "myclientSecret", "myusername", "mypassword"); // 1:credential, 2: my tenant, 3: my client id, 4: my client secret, 5: Power BI account username, 6: Power BI account password

/*------  Allows to handle transparent background ---------*/
// enablePowerbiOnlineViewerTransparentBackground(); 

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
function enablePowerbiOnlineViewerStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setBoolean("start_after_boot_completed", true);
}
function disablePowerbiOnlineViewerStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setBoolean("start_after_boot_completed", false);
}

/* Function to set the Power BI report or Power BI dashboard URL */
function setPowerbiOnlineViewerURL(url) {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setString("url", url);
}

/* Function to set credential */
function setCredential(aCredential) {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setString("credential", aCredential);
}

/* Function to create credential for Microsoft OAuth Application authentication */
function createPowerBiOnlineViewerCredentialForOAuthApplicationAuthentication(sCredential, sTenantId, sClientId, sClientSecret) {
	var basename = "tech.qeedji.powerbi_online_viewer.credential." + sCredential + ".prefs";
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("type", "ms-oauth-app");
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("tenant_id", sTenantId); 
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("client_id", sClientId);
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("client_secret", sClientSecret);
}

/* Function to create credential for Microsoft OAuth User authentication */
function createCredentialForOAuthUserAuthentication(sCredential, sTenantId, sClientId, sClientSecret, sUsername, sPassword) {
	var basename = "tech.qeedji.powerbi_online_viewer.credential." + sCredential + ".prefs";
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("type", "ms-oauth-user");
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("tenant_id", sTenantId);
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("client_id", sClientId);
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("client_secret", sClientSecret);
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("username", sUsername);
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", basename).setString("password", sPassword);
}

/* Function to set the viewing time of the report pages */
function setPowerbiOnlineViewerReportPageDuration(aSeconds) {
	if (aSeconds >= 5) {
		Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setLong("show_page_duration", aSeconds);
	}
}

/* Function to set the filter for the viewed report pages ("all" or "1, 2..5, 7.., 10") */
function setPowerbiOnlineViewerReportPageFilter(sFilter) {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer", "tech.qeedji.powerbi_online_viewer.prefs").setString("show_page_numbers", sFilter);
}

/* Functions to handle transparent background */
function enablePowerbiOnlineViewerTransparentBackground() {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer.admin", "tech.qeedji.powerbi_online_viewer.prefs").setBoolean("transparent_background", true);
}
function disablePowerbiOnlineViewerTransparentBackground() {
	Android.Preferences("SharedPreferences", "tech.qeedji.powerbi_online_viewer.admin", "tech.qeedji.powerbi_online_viewer.prefs").setBoolean("transparent_background", false);
}
