// Version: 004A
// Supported configuration script pattern:
// - 000000000000.js
// - configuration.js
// - aabbccddeeff.js (with aa-bb-cc-dd-ee-ff, the MAC address of the device)
// SBL10e smart_office_obs V1.12.10 (or above) (.conf WebDAV directory)
// Qether V1.12.10 (or above)
// The max .js file size supported by the device is 16728 Bytes. Adding too much comments in the script may prevent the script to be executed on the SBL10e device!!

function executeScript() {

	if (!verifyScriptTarget()) {
		return;
	}

	var PSN_SHORT_REPRESENTATION = 0;
	var PSN_TYPE = 1;
	var PSN_ORDINAL = 2;
	/*---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------
	| Device info getter function 						| Information
	|---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------
	| getFirmwareApp(); 								| returns the firmware application name, i.e.: "regular", "smart_office_obs", "generic_server", "m365_room", "m365_user" or "occupancy-sensor-ble-enocean"
	| getModelName(); 									| returns the model name, i.e.: "SBL10e"
	| getHardwarePlatform(); 							| returns the hardware platform, i.e.: "bm0032"
	| getPsn(PSN_SHORT_REPRESENTATION); 				| returns the PSN short representation, i.e.: "01320-00001"
	| getPsn(PSN_TYPE); 								| returns the PSN type from the PSN short representation, i.e.: "01320"
	| getPsn(PSN_ORDINAL); 								| returns the ordinal part from the PSN short representation, i.e.: "00001"
	| getLan1Mac(); 									| returns the device LAN MAC address in lower case with dash ('-') splits (i.e.: 00-1c-e6-3d-ea-96)
	|---------------------------------------------------|------------------------------------------------------------------------------------------------------------------------*/
	
	// ---------------------------------------
	// ---------------------------------------
	// ---- BEGIN of the user configuration
	// ---------------------------------------
	// ---------------------------------------
	
	// ---------------------------------------
	// ---- Configuration > Administrator
	// ---------------------------------------

	// ---- Defines hostname (max 17 characters): uncomment one of the two lines after after
	//setHostname("sbl10-00450");
	//setHostname("sbl-" + getPsn(PSN_ORDINAL)); // example using a device info getter a device info getter function

	// ---- Defines webserver username: uncomment one of the two lines after
	//setWebserverUsername("admin");
	//setWebserverUsername(getLan1Mac()); // example using a device info getter function

	// ---- Defines webserver password: uncomment one of the two lines after
	//setWebserverPassword("admin");
	//setWebserverPassword(getLan1Mac()); // example using a device info getter function
	
	// ---------------------------------------
	// ---- Configuration > LAN 
	// ---------------------------------------
	
	// ---- Addressing method for LAN ethernet IPV4: uncomment one of the two lines after
	//setIPv4DHCPAddress(); // ---- Set DHCP address IP address for IPV4
	//setIPv4StaticAddress("192.168.10.210", "255.255.128.0", "192.168.0.1"); // ---- Set static IP address for IPV4, netmask and gateway

	// ---- Set DHCP timeout : uncomment one of the two lines after
	//setIPv4DhcpTimeout(600);// time before return back to static configuration
	//disableDhcpTimeout(); // Disable DHCP timeout, device will wait indefinitely until DHCP is up

	// ---------------------------------------
	// ---- Configuration > Servers
	// ---------------------------------------
	
	// ---- Set datasource URL hostname, can be IP address or domain name: uncomment the line after
	//setDatasourceUrlHostname("demo-test.innes.intranet");

	// ---- Set datasource port: uncomment the line after
	//setDatasourcePort(443);

	// ---- Set datasource heartbeat: uncomment the line after
	//setDatasourceHeartbeat(10);
	
	// ---- Discovering DNS: uncomment one of the two lines after
	//setDhcpDns(); // Set DHCP DNS discovery
	//setStaticDns("8.8.8.8", "8.8.8.4"); // Set static primary and secondary DNS
	
	// ---- Enable/Disable NTP : uncomment one of the two lines after
	//enableNtp(); // ---- This one to enable NTP to get time automatically
	//disableNtp(); // ---- This one to disable NTP
	
	// ---- Set NTP server (IP address or domain name): uncomment the line after
	//setNtpServer("fr.pool.ntp.org");																		

	// ---- Enable/Disable proxy: uncomment one of the two lines after
	//enableProxy(); // ---- This one to enable Proxy server 
	//disableProxy(); // ---- This one to disable Proxy server 

	// ---- Set proxy URL hostname, can be IP address or domain name: uncomment the line after
	//setProxyUrlHostname("");

	// ---- Set proxy port: uncomment the line after
	//setProxyPort(3128);
	
	// ---------------------------------------
	// ---- Configuration > Date and time 
	// ---------------------------------------

	// ---- Defines system date&time timezone, refer to the SAP10e user manual to know the timezone syntax: uncomment the line after
	//setTimezone("Europe/Paris"); // Europe/Paris, America/New_York, Europe/Amsterdam, ...

	// ---------------------------------------
	// ---- Configuration > Tasks
	// ---------------------------------------

	// ---- Enable/disable daily reboot task: uncomment one of the two lines after
	//enableRebootTask(); // ---- This one to enable reboot task
	//disableRebootTask(); // ---- This one to disable reboot task
	// ---- Set daily reboot task time: uncomment the lines after
	//setRebootTime(6, 0); // 1st param: value for hour from 0 to 23, 2th param: value for minute from 0 to 59 (in the example, 6.00 AM)
	
	// ---------------------------------------
	// ---- Maintenance > Preferences (CORS)
	// ---------------------------------------
	// Enable/disable CORS (Cross-origin resource sharings) request on SAP10e device (suitable for Web Applications calling SAP10e Web services from Web browsers): uncomment one of the two lines after
	//enableCors(); // ---- This one to enable CORS  
	//disableCors(); // ---- This one to disable CORS
	// ---- Set the Web site origin in the Access-Control-Allow-Origin header value: uncomment the line after
	//setCorsAccessControlAllowOrigin("https://myWebApp.domain.com"); // when CORS is activated, allows to define the expected value of the Access-Control-Allow-Origin header (ex: "null", "https://myWebApp.domain.com", "*").  
	// ---------------------------------------
	// ---- Maintenance > Preferences (UPnP)
	// ---------------------------------------
	// ---- Enable/Disable UPNP device: uncomment one of the two lines after
	//enableUpnp(); // ---- This one to enable UPNP
	//disableUpnp(); // ---- This one to disable UPNP

	// ---------------------------------------
	// ---- Maintenance > Preferences (TFTP)
	// ---------------------------------------
	// ---- Enable/Disable TFTP, this enables autoconf by looking up the TFTP servername in the DHCP response: uncomment one of the two lines after
	//enableTftp(); // ---- This one to enable TFTP
	//disableTftp(); // ---- This one to disable TFTP
}

// ---------------------------------------
// ---------------------------------------
// ---- END of the user configuration
// ---------------------------------------
// ---------------------------------------

function verifyScriptTarget() {
	if (getHardwarePlatform() != "bm0032") {
		return false;
	}
	if (getModelName() != "SBL10e") {
		return false;
	}
	if (getFirmwareApp() != "smart_office_obs") {
		return false;
	}
	return true;
}
function setHostname(hostname) {
	setStringPref("system.hostname", hostname);
}
function setWebserverUsername(username) {
	setStringPref("system.httpd.username", username);
}
function setWebserverPassword(password) {
	setStringPref("system.httpd.password", password);
}
function setHostname(hostname) {
	setStringPref("system.hostname", hostname);
}
function setIPv4DHCPAddress() {
	setBoolPref("system.lan1.ipv4.static-addr", false);
}
function setIPv4StaticAddress(address, netmask, gateway) {
	setBoolPref("system.lan1.ipv4.static-addr", true);
	setStringPref("system.lan1.ipv4.addr", address);
	setStringPref("system.lan1.ipv4.netmask", netmask);
	setStringPref("system.lan1.ipv4.gateway", gateway);
}
function setIPv4DhcpTimeout(timeout) {
	setBoolPref("system.lan1.dhcp.overall-timeout.enable", true);
	setIntPref("system.lan1.dhcp.overall-timeout", timeout);
}
function disableDhcpTimeout() {
	setBoolPref("system.lan1.dhcp.overall-timeout.enable", false);
}
function setDhcpDns() {
	setBoolPref("system.lan1.dns.static", false);
}
function setStaticDns(primaryDns, secondaryDns) {
	setBoolPref("system.lan1.dns.static", true);
	setStringPref("system.lan1.dns.primary", primaryDns);
	setStringPref("system.lan1.dns.secondary", secondaryDns);
}
function setNtpServer(ntpServer) {
	setStringPref("system.ntp.server.url", ntpServer);
}
function enableUpnp() {
	setBoolPref("system.upnp.enabled", true);
}
function disableUpnp() {
	setBoolPref("system.upnp.enabled", false);
}
function enableTftp() {
	setBoolPref("system.tftp.enable", true);
}
function disableTftp() {
	setBoolPref("system.tftp.enable", false);
}
function enableNtp() {
	setBoolPref("system.ntp.enabled", true);
}
function disableNtp() {
	setBoolPref("system.ntp.enabled", false);
}
function setTimezone(timezone) {
	setStringPref("system.datetime.timezone", timezone);
}
function enableRebootTask() {
	setBoolPref("system.task.reboot.enable", true);
}
function disableRebootTask() {
	setBoolPref("system.task.reboot.enable", false);
}
function setRebootTime(hours, minutes) {
	setIntPref("system.task.reboot.time", (hours * 60 * 60) + (minutes * 60));
}
function setCorsAccessControlAllowOrigin(value) {
	setStringPref("system.httpd.cors.origin", value);
}
function enableCors() {
	setBoolPref("system.httpd.cors.enable", true);
}
function disableCors() {
	setBoolPref("system.httpd.cors.enable", false);
}
function setDatasourceUrlHostname(hostname) {
	setStringPref("appli.network.datasource.url.hostname", hostname);
}
function setDatasourcePort(port) {
	setIntPref("appli.network.datasource.url.port", port);
}
function setDatasourceUserPassword(username, password) {
	setBoolPref("appli.network.datasource.credential.enable", true);
	setStringPref("appli.network.datasource.credential.user_password.username", username);
	setStringPref("appli.network.datasource.credential.user_password.password", password);
}
function disableCredential() {
	setBoolPref("appli.network.datasource.credential.enable", false);
}
function setDatasourceHeartbeat(heartbeat) {
	setIntPref("appli.network.datasource.heartbeat", heartbeat);
}
function enableProxy() {
	setBoolPref("appli.network.proxy.https.enable", true);
}
function disableProxy() {
	setBoolPref("appli.network.proxy.https.enable", false);
}
function setProxyUrlHostname(proxy) {
	setStringPref("appli.network.proxy.https.url.hostname", proxy);
}
function setProxyPort(port) {
	setIntPref("appli.network.proxy.https.url.port", port);
}

executeScript();
