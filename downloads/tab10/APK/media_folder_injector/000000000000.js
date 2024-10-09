/**
 * Function: configuration-by-script for Media Folder Injector 
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
 */

/** --------------------------------------
 * ---------------------------------------
 * ---- BEGIN of the user configuration
 * ---------------------------------------
 * ---------------------------------------
 */

/*------  Allows to handle start_after_boot_completed ---------*/
enableMediaFolderInjectorStartAfterBootCompleted();
// disableMediaFolderInjectorStartAfterBootCompleted();

/*------  Allows to set default_error_time ---------*/
setMediaFolderInjectorDefaultErrorTime(5);

/*------  Allows to set default_image_time ---------*/
setMediaFolderInjectorDefaultImageTime(10);

/*------  Allows to set default_book_time_duration ---------*/
setMediaFolderInjectorDefaultBookTimeDuration(10);

/*------  Allows to handle recursive ---------*/
enableMediaFolderInjectorScanRecursivity();
// disableMediaFolderInjectorScanRecursivity();

/*------  Allows to set background_color ---------*/
setMediaFolderInjectorBackgroundColor("#ff0000");

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
function enableMediaFolderInjectorStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setBoolean("start_after_boot_completed", true);
}
function disableMediaFolderInjectorStartAfterBootCompleted() {
	Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setBoolean("start_after_boot_completed", false);
}

/* Functions to set default_error_time */
function setMediaFolderInjectorDefaultErrorTime(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setLong("default_error_time", aSeconds);
	}
}

/* Functions to set default_image_time */
function setMediaFolderInjectorDefaultImageTime(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setLong("default_image_time", aSeconds);
	}
}

/* Functions to set default_book_time_duration */
function setMediaFolderInjectorDefaultBookTimeDuration(aSeconds) {
	if (aSeconds >= 1) {
		Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setLong("default_book_time_duration", aSeconds);
	}
}

/* Functions to handle recursivity */
function enableMediaFolderInjectorScanRecursivity() {
	Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setBoolean("recursive", true);
}
function disableMediaFolderInjectorScanRecursivity() {
	Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setBoolean("recursive", false);
}

/* Functions to set background_color */
function setMediaFolderInjectorBackgroundColor(aColor) {
	if (aColor.length === 7 && aColor.indexOf('#') === 0) {
		Android.Preferences("SharedPreferences", "tech.qeedji.media_folder_injector.admin", "tech.qeedji.media_folder_injector.prefs").setString("background_color", aColor);
	}
}
