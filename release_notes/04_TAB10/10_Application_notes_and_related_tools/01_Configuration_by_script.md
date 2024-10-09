# Configuration by script
*RELEASE NOTE*

## `2024-10-08` V1.10.23 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.23/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- enableHttpsTasksManager()
 	- disableHttpsTasksManager()
  	- setHttpsTasksManagerUrl()
 	- setHttpsTasksManagerCredential()
	- setHttpsTasksManagerCreateCredentialForBasicAuthentication()
	- setHttpsTasksManagerCreateCredentialNone()
 	- setHttpsTasksManagerHeartbeat()
>##### **COMPATIBILITIES**
- AOSP Qeedji System 9.11.10 (or above) for 
    - TAB10s device 
    - AMP300 device  

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**  
For further information, refer to the *TAB10s* and *AMP300* device user manual.
		
# OLD VERSIONS HISTORY
***********************************************************************

## `2023-07-06` V1.10.22 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.22/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- enableTestCardAppLaunchingWithKeySequence() 
	- disableTestCardAppLaunchingWithKeySequence()
	- enableHdmiCec() 
	- disableHdmiCec()
	- enableHdmiCecPowerMode()
	- disableHdmiCecPowerMode()
    - enableUsbcDdc()
	- disableUsbcDdc()
	- enableUsbcDdcPowerMode()
	- disableUsbcDdcPowerMode()
	- enableUsbcDdcBrightness()
	- disableUsbcDdcBrightness()
	- setAVCommandPowerModeLevelForVeryHighlyOptimizedProfilePowerManagerTask()
	- setAVCommandBrightnessLevelForVeryHighlyOptimizedProfilePowerManagerTask()
	- setAVCommandPowerModeLevelForHighlyOptimizedProfilePowerManagerTask()
	- setAVCommandBrightnessLevelForHighlyOptimizedProfilePowerManagerTask()
	- setAVCommandBrightnessLevelForNominalMode()

## `2023-04-03` V1.10.21 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.21/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- setRebootCalendar()
	- setPowerManagerCalendar()
	- setAudioOuptut()
	- setProfileForAppsPowerManagerTasks()
	- setPreferencesPowerManagerProfileVeryHighOptimized()
	- setPreferencesPowerManagerProfileHighOptimized()

## `2023-01-24` V1.10.20 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.20/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions
	- enableTestCardAppLaunching()
	- disableTestCardAppLaunching()
	- setWebserverCredentialApplicationWebServiceAdmin() 
	- setWebserverCredentialApplicationWebServiceCustom()
- Add support for these new functions to get dynamically some device information  
	- getSoftwareVersion() 
	- getModel() 
	- getManufacturer() 
	- getDeviceName() 
	- getHostname() 
	- getMacId() 
	- getUUID() 
	- getPsn() 
	- getSerial() 
	- getField1() 
	- getField2() 
	- getField3() 
	- getField4() 
	- getField5()
- Change: rename setWebserverCredentialWebServiceAdmin() function into setWebserverCredentialAdministrationWebServiceAdmin()
- Change: rename setWebserverCredentialWebServiceCustom() function into setWebserverCredentialAdministrationWebServiceCustom()
- Fix: the setHostname() function was not forcing the hostname set by the user
- Fix: the clearHostname() function was not unforcing the hostname set by the user

## `2022-12-02` V1.10.19 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.19/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for these new functions to handle App installed in the `AQS` desktop
	- eraseAllApps()
	- deleteApp()
	- activateApp()
	- deactivateApp()

## `2022-10-21` V1.10.18 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.18/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for checkCompatibility() function of the beginning at the file to prevent the script to be executed on others device than *AQS* operating system
- Add support for getPlatform() function
- Add support for setLanProxyPAC() function 
- Add support for these functions for the AMP300 device:
    - setVideoOuptut()
    - setScreenResolution()
    - setVesaDpmsEnabled()
    - setScreenRotation()
    - setVolumeOfMultimediaContents()
- Add support for these functions to change user/password of Admin credential and to affect them to the different connection profiles: 
      - setWebserverCredentialUserPasswordAdmin()
      - setWebserverCredentialAdministrationUserAdmin()
      - setWebserverCredentialWebServiceAdmin()
      - setWebserverCredentialApplicationUserAdmin()
      - setWebserverCredentialPublishingSoftwareAdmin()
- Add support for these functions to create your custom credential and to affect these credential to the different connection profiles: 
      - setWebserverCredentialUserPasswordCustom()
      - setWebserverCredentialAdministrationUserCustom()
      - setWebserverCredentialWebServiceCustom()
      - setWebserverCredentialApplicationUserCustom()
      - setWebserverCredentialPublishingSoftwareCustom()
- Change: remove these functions:
    - setWebserverCredentialUserPassword() 
    - setWebserverCredentialWebUIAdmin() 
    - setWebserverCredentialWebUIAppli() 
    - setWebserverCredentialWebDav()
    - setWebserverCredentialWebService()
- Change this function to support *TKIP* or *CCMP (AES)* group cipher key support removal, *TKIP* or *CCMP (AES)* pairwise cipher keys support removal, *WPA-Personal* or *WPA2-Personal* protocols support removal:   
    - setWlanSecurityPsk()
- Change these functions to support *TKIP* or *CCMP (AES)* group cipher key support removal, *TKIP* or *CCMP (AES)* pairwise cipher keys support removal, *WPA-Enterprise* or *WPA2-Enterprise* protocols support removal, *802.1X CA certificate* validation or *System certificate* validation mode (including support for trusted RADIUS certificate common name definition): 
    - setWlanSecurityPEAP_MSCHAPV2()
    - setWlanSecurityPEAP_GTC()
    - setWlanSecurityPEAP_NONE()
    - setWlanSecurityTLS()
    - setWlanSecurityTTLS_PAP()
    - setWlanSecurityTTLS_MSCHAP()
    - setWlanSecurityTTLS_MSCHAPV2()
    - setWlanSecurityTTLS_GTC()
    - setWlanSecurityTTLS_NONE()
    - setWlanSecurityPWD()
- Fix: when using these functions, it was not possible to connect anymore to the device Web user interface when the device is behind a router with *802.1X*  security activated:
    - setLanProxy()
    - setLanProxyUserPassword()
    - setLanProxyPAC()
    - deleteLanProxy()
- Fix: when using these functions, it was not possible to connect anymore to the device Web user interface when the WIFI router configured in *WPA-Enterprise* or *WPA2-Enterprise* security:
    - setWlanProxy()
    - setWlanProxyUserPassword()
    - setWlanProxyPAC()
    - deleteWlanProxy()

## `2022-08-19` V1.10.17 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.17/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for this new functions
	- setAppAsSystemApp();
	- setWebserverCredentialUserPassword()
	- setWebserverCredentialWebUIAdmin()
	- setWebserverCredentialWebService()
	- setWebserverCredentialWebUIAppli()
	- setWebserverCredentialWebDav()
- Add support for an example to set a empty Proxy exclusion list
- Change: remove these functions
	- setWebserverNativeCredentialWebUIAdmin()
	- setWebserverNativeCredentialWebDAV()
- Change: replace *tab10_* by *qeedji_device_*
- Change: remove the commented call to setDefaultTimezone()
- Change: add these new commented function calls to set different regionality languages
	- setSystemLocalLanguages("fr-FR,en-US,it-IT,de-DE,es-ES,ru-RU") 
	- setSystemLocalLanguages("it-IT,en-US,fr-FR,de-DE,es-ES,ru-RU") 
	- setSystemLocalLanguages("de-DE,en-US,fr-FR,it-IT,es-ES,ru-RU") 
	- setSystemLocalLanguages("es-ES,en-US,fr-FR,it-IT,de-DE,ru-RU") 
	- setSystemLocalLanguages("ru-RU,en-US,fr-FR,it-IT,de-DE,es-ES")
>##### **COMPATIBILITIES**
- AOSP Qeedji System 9.10.10 beta11 (or above) for 
    - TAB10s device
- AOSP Qeedji System 9.10.10 beta3 (or above) for 
    - AMP300 device  

## `2022-07-08` V1.10.16 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.16/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: English language is set by default in the *setSystemLocalLanguages* example
- Add support for these new functions to configure Proxy server on LAN interface
	- setLanProxy()
	- setLanProxyUserPassword()
	- deleteLanProxy()
- Add support for these new functions to configure Proxy server on WLAN interface
	- setWlanProxy()
	- setWlanProxyUserPassword()
	- setWlanProxyPAC()
	- deleteWlanProxy()
- Add support for this new function to set the device UTC time
	- setUtcTime()
- Change: the function setWebserverNativeCredentialWebUIAdmin() to support credentials adding in Web UI
- Change: the function setWebserverNativeCredentialWebDAV() to support credentials adding in Web UI  
>##### **COMPATIBILITIES**
- AOSP Qeedji System 9.10.10 beta10 (or above) for 
    - TAB10s device
- AOSP Qeedji System 9.10.10 beta1 (or above) for 
    - AMP300 device  
  
## `2021-11-10` V1.10.15 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.15/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to configure the WLAN interface
    - setWlanByDhcp("SSID", false); 
    - setWlanIpAddress("SSID", false, "192.168.0.2", "255.255.255.0", "192.168.0.6", "192.168.0.1", null); 
    - setWlanSecurityWep("SSID", wepKey);
    - setWlanSecurityPsk("SSID", key);   
- Add support for user certificates installation
- Add support for CA certificates installation
- Add support for proximity sensor configuration
    - setProximitySensorMaxDistance(50 X n); (n from 2 to 12 cm)
- Add support for 802.1X configuration for LAN interface with configuration script
    - setLanSecurityPEAP_NONE(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityPEAP_MSCHAPV2(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityPEAP_GTC(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityPEAP_MD5(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTLS("my_tab10_identity", caCertificates, clientPrivateKey, clientCertificateChain); 
    - setLanSecurityTTLS_NONE(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_PAP(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_MSCHAP(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_MSCHAPV2(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_CHAP(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_GTC(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_MD5(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_EAP_MSCHAPV2(caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setLanSecurityTTLS_TLS("my_tab10_identity", caCertificates, clientPrivateKey, clientCertificateChain); 
    - setLanSecurityPWD("my_tab10_identity", " my_tab10_pwd"); 
    - setLanSecurityMD5("my_tab10_identity", " my_tab10_pwd"); 
    - setLanSecurityGTC("my_tab10_identity", " my_tab10_pwd"); 
    - setLanSecurityMSCHAPV2("my_tab10_identity", " my_tab10_pwd"); 
- Add support for WEP/PSK/802.1X security configuration for WLAN interface with configuration script 
    - setWlanSecurityWep("my_SSID", "my_wep_key_value");  
    - setWlanSecurityPsk("my_SSID", "my_psk_key_value"); 
    - setWlanSecurityPEAP_NONE("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityPEAP_MSCHAPV2("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityPEAP_GTC("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityTLS("my_SSID", caCertificates, clientPrivateKey, clientCertificateChain, "my_tab10_identity");
    - setWlanSecurityTTLS_NONE("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityTTLS_PAP("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityTTLS_MSCHAP("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityTTLS_MSCHAPV2("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityTTLS_GTC("my_SSID", caCertificates, "my_tab10_identity", "my_tab10_anonymousIdentity", "my_tab10_pwd"); 
    - setWlanSecurityPWD("my_SSID", "my_tab10_identity", "my_tab10_pwd"); 
- Add support for new function to set the supported languages (first is the default one)  
    - setSystemLocalLanguages("fr-FR,en-US,it-IT,de-DE,es-ES,ru-RU");
- Change: remove the functions 
    - setSystemLocalLanguage_de_DE();
    - setSystemLocalLanguage_en_US();
    - setSystemLocalLanguage_es_ES();
    - setSystemLocalLanguage_fr_FR();
    - setSystemLocalLanguage_it_IT();
    - setSystemLocalLanguage_ru_RU();
- Change: remove setProximitySensorType() function
- Change: rename enableWifi() function by enableWlan()
- Change: rename disableWifi() function by disableWlan() 
>##### **COMPATIBILITIES**
- AOSP firmware 9.10.10 beta9 (or above) for 
    - TAB10s device 

## `2021-04-07` V1.10.14 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.14/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Change: the functions name to set the login credentials for the WebDAV server 
    - setWebserverNativeCredentialWebUIAdmin("admin", "admin");
    - setWebserverNativeCredentialWebDAV("admin", "admin");
- Add support for functions to set a static IP address or an IP address allocated by DHCP for LAN interface 
    - setLanByDhcp();
    - setLanIpAddress("192.168.0.2", "255.255.255.0", "192.168.0.6", "8.8.8.8", "8.8.8.4");
        - param1: IP address 
        - param2: netmask
        - param3: gateway
        - param4: primary DNS
        - param5: secondary DNS       
- Add support for functions to set DeviceInfoField1 to DeviceInfoField5 variables  
	- setSystemDeviceInfoField1("value1");
	- setSystemDeviceInfoField2("value2");
	- setSystemDeviceInfoField3("value3");
	- setSystemDeviceInfoField4("value4");
	- setSystemDeviceInfoField5("value5");   
>##### **COMPATIBILITIES**
- AOSP firmware 9.10.10 beta8 (or above) for 
    - TAB10s device 

## `2021-03-17` V1.10.13 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.13/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for new functions to set the login credentials for the WebDAV server  
	- setWebserverHttpPort("80");
	- setWebserverCredentialWebUIAdmin("admin", "admin"); 
	- setWebserverCredentialWebDAV("admin", "admin"); 
- Add support for new function to set the AOSP device name 
	- setDeviceName("TAB10s"); 
- Add support for new functions to set/clear the AOSP device hostname
	- setHostname("TAB10s"); 
	- clearHostname(); 
- Add support for new functions to change the AOSP device language 
	- setSystemLocalLanguage_de_DE();
	- setSystemLocalLanguage_en_US();
	- setSystemLocalLanguage_es_ES();
	- setSystemLocalLanguage_fr_FR();
	- setSystemLocalLanguage_it_IT();
	- setSystemLocalLanguage_ru_RU();
- Add support for new functions to 
	- setNtpServer("time.android.com"); 
	- setNtpTimeout(5000);
- Add support for new functions to activate/inactivate the RFID 125 KHz sensor 
	- enableRfid125KHz(); 
	- disableRfid125KHz();

## `2020-10-19` V1.10.12 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.12/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the functions: 
	- enableBluetooth();
	- disableBluetooth();
	- enableWifi();
	- disableWifi();
- Change: these function are now only compatible with the AOSP firmware 9.10.10 beta5 (or above)
	- getExternalStorageCopyApk();
	- enableExternalStorageCopyApk();
	- disableExternalStorageCopyApk();
- Change: remove showToast debug function
>##### **COMPATIBILITIES**
- AOSP firmware 9.10.10 beta5 (or above) for 
	- TAB10s device 

## `2020-09-16` V1.10.11 [Download](application-notes/aosp/configuration-by-script/delivery/V1.10.11/000000000000.js){.free-downloads}
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Add support for the functions:
	- setDeviceModeNative();
	- setDeviceModeKiosk();