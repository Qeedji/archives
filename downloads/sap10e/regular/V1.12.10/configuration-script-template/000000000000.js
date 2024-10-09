//Version: 001A
// Supported configuration script pattern:
// - 000000000000.js
// - configuration.js
// - aabbccddeeff.js (with aa-bb-cc-dd-ee-ff, the MAC address of the device)
// SAP10e regular V1.11.10 (or above) (.conf WebDAV directory)
// Qether V1.12.10 (or above)
// The max .js file size supported by the device is 16728 Bytes. Adding too much comments in the script may prevent the script to be executed on the SAP10e device. 

var NB_SLATES = 10;

function executeScript() {

	if (!checkCompatibility()) {
		return;
	}

	var PSN_SHORT_REPRESENTATION = 0;
	var PSN_TYPE = 1;
	var PSN_ORDINAL = 2;
	/*---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------
	| Device info getter function 						| Information
	|---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------
	| getFirmwareApp(); 								| returns the firmware application name, i.e.: "regular", "generic_server". It is not advised to used this getter function to set the setHostname because the _ character may be not supported
	| getModelName(); 									| returns the model name, i.e.: "SAP10e"
	| getHardwarePlatform(); 							| returns the hardware platform, i.e.: "bm0032"
	| getPsn(PSN_SHORT_REPRESENTATION); 				| returns the PSN short representation, i.e.: "01390-00601"
	| getPsn(PSN_TYPE); 								| returns the PSN type from the PSN short representation, i.e.: "01390"
	| getPsn(PSN_ORDINAL); 								| returns the ordinal part from the PSN short representation, i.e.: "00601"
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

	// ---- Defines hostname (max 15 characters): uncomment one of the 2 lines after
	//setHostname("sap10-00450");
	//setHostname("sap-" + getPsn(PSN_ORDINAL)); // example using a device info getter function

	// ---- Defines webserver username: uncomment one of the 2 lines after
	//setWebserverUsername("admin");
	//setWebserverUsername(getLan1Mac()); // example using a device info getter function

	// ---- Defines webserver password: uncomment one of the 2 lines after
	//setWebserverPassword("admin");
	//setWebserverPassword(getLan1Mac()); // example using a device info getter function

	// ---------------------------------------
	// ---- Configuration > LAN 
	// ---------------------------------------
	
	// ---- Addressing method for LAN ethernet IPV4: uncomment one of the 2 lines after
	//setIPv4DHCPAddress(); // ---- Set DHCP address IP address for IPV4
	//setIPv4StaticAddress("192.168.10.210", "255.255.128.0", "192.168.0.1"); // ---- Set static IP address for IPV4, netmask and gateway

	// ---- Set DHCP timeout : uncomment one of the 2 lines after
	//setIPv4DhcpTimeout(600);// time before return back to static configuration
	//disableDhcpTimeout(); // Disable DHCP timeout, device will wait indefinitely until DHCP is up

	// ---------------------------------------
	// ---- Configuration > Servers
	// ---------------------------------------

	// ---- Discovering DNS: uncomment one of the 2 lines after
	//setDhcpDns(); // Set DHCP DNS discovery
	//setStaticDns("8.8.8.8", "8.8.8.4"); // Set static primary and secondary DNS
	
	// ---- Enable/Disable NTP : uncomment one of the 2 lines after
	//enableNtp(); // ---- This one to enable NTP to get time automatically
	//disableNtp(); // ---- This one to disable NTP
	
	// ---- Set NTP server (IP address or domain name): uncomment the line after
	//setNtpServer("fr.pool.ntp.org");
	
	// ---------------------------------------
	// --- Configuration > SLATEs pairing ---
	// ---------------------------------------

	// Set the PSN of the SLATEs that must be paired to the SAP from 1 to 10. If the SLATEs to pair have all a same PIN code, use the setPictureframeAuthenticationByPincode function. This same PIN code value will be kept after pairing. Empty string means unpaired slate, array must contain NB_SLATES elements : uncomment the 2 lines after with the appropriate PSN of your SLATES. 
	//var slatesPsn = ["00903-01001", "00903-01002", "00903-01003", "00903-01004", "", "", "", "", "", ""]; //example to pair Slate "00903-01001" in id 1, Slate "00903-01002" in id 2, Slate "00903-01003" in id 3, Slate "00903-01004" in id 4,  other id stay empty
	//setPairedSlate106Array(slatesPsn);

	// Set all Slates hostname, array must contain NB_SLATES elements : uncomment the 2 lines after and fill the first line with your suitable SLATEs from 1 to 10
	//var slatesHostnames = ["slate-01", "slate-02", "slate-03", "slate-04", "", "", "", "", "", ""];
	//setHostnameSlate106Array(slatesHostnames);
	
	// ---------------------------------------
	// ---- Configuration > Date and time 
	// ---------------------------------------

	// ---- Defines system date&time timezone, refer to the SAP10e user manual to know the timezone syntax: uncomment the line after
	//setTimezone("Europe/Paris"); // Europe/Paris, America/New_York, Europe/Amsterdam, ...

	// ---------------------------------------
	// ---- Configuration > Tasks
	// ---------------------------------------

	// ---- Enable/disable daily reboot task: uncomment one of the 2 lines after
	//enableRebootTask(); // ---- This one to enable reboot task
	//disableRebootTask(); // ---- This one to disable reboot task

	// ---- Set daily reboot task time: uncomment the lines after
	//setRebootTime(6, 0); // 1st param: value for hour from 0 to 23, 2th param: value for minute from 0 to 59 (in the example, 6.00 AM)
												   

	// ---------------------------------------
	// ---- Maintenance > Preferences (CORS)
	// ---------------------------------------
	// Enable/disable CORS (Cross-origin resource sharings) request on SAP10e device (suitable for Web Applications calling SAP10e Web services from Web browsers): uncomment one of the 2 lines after
	//enableCors(); // ---- This one to enable CORS  
	//disableCors(); // ---- This one to disable CORS
	// ---- Set the Web site origin in the Access-Control-Allow-Origin header value: uncomment the line after
	//setCorsAccessControlAllowOrigin("https://myWebApp.domain.com"); // when CORS is activated, allows to define the expected value of the Access-Control-Allow-Origin header (ex: "null", "https://myWebApp.domain.com", "*").  
	
	// ---------------------------------------
	// ---- Maintenance > Preferences (SLATEs)
	// ---------------------------------------
	
	// ---- Enable/Disable testcard for Slates : uncomment one of the 2 lines after
	//enablePictureframeTestcard();
	//disablePictureframeTestcard();	
	
	// Enable/disable the PIN code for SLATEs paired to the SAP (to avoid future unexpected SLATEs pairing action initiated by another SAP device): uncomment the line after and one of the 2 last lines
	//var pincode = 1234; // define Pin code between 0 and 9999 and uncomment this line
	//setPictureframeAuthenticationByPincode(pincode); // this one to set a PIN code
	//setPictureframeAuthenticationNone(); // this one to remove the PIN code

	// Change the wakeup policy: uncomment the lines after
	//var dailyStartTime = "0800"; // String between "0000" and "2400" (00h00 to 24h00)
	//var dailyEndTime = "1901"; 	// String between "0000" and "2400" (00h00 to 24h00)
	//var wakeupDays = [ // Set true for the appropriate days to enable Slates wake up for the defined day
	//		true, //monday
	//		true, //tuesday
	//		true, //wednesday
	//		true, //thursday
	//		true, //friday
	//		false, //saturday
	//		false, //sunday
	//	];
	//setPictureframeWakeupTime(wakeupDays, dailyStartTime, dailyEndTime);

	// ---- Enable/disable wpan2 for Slates: uncomment one of the 2 lines after
	//enablePictureframeWpan2(); // in addition to the wake up timerange, allows also to communicate with a phone device for maintenance
	//disablePictureframeWpan2();

	// ---- Enable/disable vibration sensor for Slates: uncomment one of the 2 lines after
	//enablePictureframeVibration(); // in addition to the wake up timerange, allows also to wake up by taping the device 
	//disablePictureframeVibration(); 
 
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
//-----------------------------------									  
// ---- END of the user configuration
//------------------------------------





function checkCompatibility() {

	if (getHardwarePlatform() != "bm0032") {
		return false;
	}

	if (getModelName() != "SAP10e") {
		return false;
	}

	if (getFirmwareApp() != "regular") {
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

function setCorsAccessControlAllowOrigin(value) {
	setStringPref("system.httpd.cors.origin", value);
}

function enableCors() {
	setBoolPref("system.httpd.cors.enable", true);
}

function disableCors() {
	setBoolPref("system.httpd.cors.enable", false);
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

function setRebootTime(hours, minutes, gateway) {
	setIntPref("system.task.reboot.time", (hours * 60 * 60) + (minutes * 60));
}

function setPairedSlate106Array(psnArray) {
	if (psnArray.length == NB_SLATES) {
		for (var i = 0; i < NB_SLATES; i++) {
			pairSlate106(i, psnArray[i]);
		}
	}
}

function pairSlate106(index, psn) {
	var pref = "appli.pictureframe.slate." + (index + 1) + ".psn";
	setStringPref(pref, psn);
}

function setHostnameSlate106Array(hostnameArray) {
	if (hostnameArray.length == NB_SLATES) {
		for (var i = 0; i < NB_SLATES; i++) {
			setHostnameSlate106(i, hostnameArray[i]);
		}
	}
}

function setHostnameSlate106(index, hostname) {
	var pref = "appli.pictureframe.slate." + (index + 1) + ".hostname";
	setStringPref(pref, hostname);
}

function setPictureframeAuthenticationByPincode(pincode) {
	setStringPref("appli.pictureframe.slate.*.wpan1.authentication.method", "pincode");
	setIntPref("appli.pictureframe.slate.*.wpan1.authentication.pincode", pincode);
}

function setPictureframeAuthenticationNone() {
	setStringPref("appli.pictureframe.slate.*.wpan1.authentication.method", "none");
}

function enablePictureframeTestcard() {
	setBoolPref("appli.pictureframe.slate.*.testcard.enabled", true);
}

function disablePictureframeTestcard() {
	setBoolPref("appli.pictureframe.slate.*.testcard.enabled", false);
}

function setPictureframeWakeupTime(wakeupDays, dailyStartTime, dailyEndTime) {
	var weekdaysMask = 0;
	for (var i = 0; i < wakeupDays.length; i++) {
		if (wakeupDays[i])
			weekdaysMask += 1 << i;
	}
	setStringPref("appli.pictureframe.slate.*.wakeup.day.interval", "T" + dailyStartTime + "/T" + dailyEndTime);
	setIntPref("appli.pictureframe.slate.*.wakeup.weekdays.mask", weekdaysMask);
}


function enablePictureframeWpan2() {
	setBoolPref("appli.pictureframe.slate.*.wpan2.enabled", true);
}

function disablePictureframeWpan2() {
	setBoolPref("appli.pictureframe.slate.*.wpan2.enabled", false);
}

function enablePictureframeVibration() {
	setBoolPref("appli.pictureframe.slate.*.vibration_sensor.enabled", true);
}

function disablePictureframeVibration() {
	setBoolPref("appli.pictureframe.slate.*.vibration_sensor.enabled", false);
}



executeScript();
