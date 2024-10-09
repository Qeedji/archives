(function() {
  netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");

  function concatPaths(path1, path2) {
    if (path1.charAt(path1.length - 1) == "/") {
      path1 = path1.substring(0, path1.length - 1);
    }
    if (path2.charAt(0) == "/") {
      path2 = path2.substring(1);
    }
    return path1 + "/" + path2;
  }

  var Cc = Components.classes;
  var Ci = Components.interfaces;
  var CLASS_NAME = "innes.app-profile.manifest-downloader.*.*.*.class-name";
  var NS_MANIFEST = "innes.app-profile.manifest-downloader:g3.*.*.*.";
  var NS_ADDON = "innes.app-profile.addon-manager.*.*.*.http-downloader.";
  var SERVER_SETUP_FOLDER = ".setup/";
  var prefBranch = Cc["@mozilla.org/preferences-service;1"].getService(Ci.nsIPrefBranch);

  var type = prefBranch.getCharPref(CLASS_NAME);
  var manifestEnabled = prefBranch.getBoolPref(NS_MANIFEST + "authorized");
  if(manifestEnabled && type == "g3") {
    var addonEnabled = prefBranch.getBoolPref(NS_ADDON + "enabled");
    if(!addonEnabled) {
      var manifestBaseUri = prefBranch.getCharPref(NS_MANIFEST + "base-uri");
      var baseUri = concatPaths(manifestBaseUri, SERVER_SETUP_FOLDER);

      var heartBeat = prefBranch.getIntPref(NS_MANIFEST + "heartbeat");
      var username = prefBranch.getCharPref(NS_MANIFEST + "username");
      var password = prefBranch.getCharPref(NS_MANIFEST + "password");
      var crypted = prefBranch.getBoolPref(NS_MANIFEST + "password-crypted");

      prefBranch.setCharPref(NS_ADDON + "base-uri", baseUri);
      prefBranch.setIntPref(NS_ADDON + "heartbeat", heartBeat);
      prefBranch.setCharPref(NS_ADDON + "username", username);    
      prefBranch.setCharPref(NS_ADDON + "password", password);
      prefBranch.setBoolPref(NS_ADDON + "password-crypted", crypted);
      prefBranch.setBoolPref(NS_ADDON + "enabled", true);
      
      prefBranch.QueryInterface(Ci.nsIPrefService);
      prefBranch.savePrefFile(null);
      
      systemMaintenance.reboot();
    }
  }
})();