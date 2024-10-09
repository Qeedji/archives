(function(global) {
	"use strict";
	
	var llogger = null;
	function LOG(msg){
		if(llogger){
			llogger.debug(msg);
		}
		else{
			if("XpfLogger" in global){
				llogger = new XpfLogger("xpf.XpfSyncManager");
				llogger.debug(msg);
			}
		}
	}

	var mediasPlaying = [];

	function setProperty(obj, name, prop, w) {
		Object.defineProperty(obj, name, {
			configurable: false,
			enumerable: false,
			writable: w ? true : false,
			value: prop
		});
	}

	function XpfSyncManager(name) {
		LOG("begin");
		setProperty(this, "_localPort", 30001);
		setProperty(this, "_multicastGroupIPv4", "239.255.0.1"); // Scoped Multicast Ranges - not reserved
		setProperty(this, "_multicastGroupIPv6", "ff05::fe"); // unassigned Site-Local Scope http://www.iana.org/assignments/ipv6-multicast-addresses/ipv6-multicast-addresses.xml
		setProperty(this, "_tabLocalAddressesIPv4",[], true);
		setProperty(this, "_tabLocalAddressesIPv6",[], true);
		setProperty(this, "_loopbackAddress", "127.0.0.1", false);
		setProperty(this, "_delayBeforeRestart", 30);
		setProperty(this, "_socketAnyIPv4", null, true);
		setProperty(this, "_socketAnyIPv6", null, true);
		setProperty(this, "_socketLoopbackIPv4", null, true);
		setProperty(this, "_localAddressIPv4", "", true);
		setProperty(this, "_localAddressIPv6", "", true);
		setProperty(this, "_lastRestartDate", 0, true);
		if(canPlayMedia == false){
			hideElements.call(this);
		}
		getLocalAddresses.call(this);
		initSocketsAny.call(this);
		optimizeMediaRestart.call(this);
		initMediaListeners.call(this);
		sendBroadcastMessage.call(this);
	}
	const Ci = Components.interfaces;
	function brightness(value) {
		LOG("brightness ", value);
		var displayOutputs = systemManager.getApplicationProfileBindingsByProfileUri("display-output");
		if(displayOutputs && displayOutputs.length > 0) {
			var displayOutputBinding = Ci.nsISystemDisplayOutputBinding;
			for(var i = 0; i < displayOutputs.length; ++i) {
				var displayOutput = displayOutputs.queryElementAt(i, displayOutputBinding);
				try {
					LOG("brightness on display-output ", i);
					displayOutput.brightness = value;
				} catch(e) {
					LOG(e);
				}
			}
		}
	}

	var canPlayMedia = false;
    var brightnessValue = 100;
  
	function hideElements(){
		LOG("hideElements");
		brightness(0);
		
	}

	function displayElements(){
		LOG("displayElements");
		brightness(brightnessValue);
	}

	function sendBroadcastMessage(){
		var self=this;
		try{
			var currentDateSeconds = (Date.now()/1000/10).toFixed() * 10 + self._delayBeforeRestart;
			var data = "restart_medias_" + currentDateSeconds.toString();
			processRestartMessage.call(self, data);
			self._socketAnyIPv4.send(data, self._multicastGroupIPv4, self._localPort);
			self._socketAnyIPv6.send(data, self._multicastGroupIPv6, self._localPort);
		}catch(e){
			LOG("sendBroadcastMessage exception :" + e);
		}
	}
	
	function processRestartMessage(aMsg){
		var start = "restart_medias_";
		var self=this;
		if(aMsg.indexOf(start) == 0){
			try{
				var dateStr = aMsg.substr(start.length, aMsg.length - start.length);
				var dateRestart = parseInt(dateStr); //seconds
				if(isNaN(dateRestart)){
					LOG("invalid restart message");
					return;
				}
				dateRestart = dateRestart*1000; // -> to milliseconds
				if(self._lastRestartDate == dateRestart){
					LOG("restartMedias is already planned at " + dateRestart);
					return;
				}
				if(dateRestart < self._lastRestartDate){
					LOG("time to restart is prior to last delay!");
					return;
				}
				self._lastRestartDate = dateRestart;
				var delay = dateRestart - Date.now() ;
				LOG("delayToRestart : " + delay.toString());
				setTimeout(function(){ restartMedias.call(self) }, delay);
			}catch(e){
				LOG("processRestartMessage exception : " + e);
			}
		}
		else{
			LOG("invalid restart message");
		}
		
	}

	function restartMedias(){
		LOG("restartMedias begin");
		try{
			if(canPlayMedia == false){
				canPlayMedia = true;
				setTimeout(function() { displayElements(); }, 1000);
			}
			for(var i = 0; i < mediasPlaying.length; i++){
				LOG("restarting media : " + mediasPlaying[i].getAttribute("src"));
				mediasPlaying[i].beginElement();
			}
		}catch(e){
			LOG("restartMedias exception : " + e)
		}
	}

	function getLocalAddresses(){
		const Ci = Components.interfaces;
		var ipAdapters = systemManager.getAdaptersByIId(Ci.nsISystemAdapterIP);
		for(var i = 0; i < ipAdapters.length; ++i) {
			var ip = ipAdapters.queryElementAt(i, Ci.nsISystemAdapterIP);
			if (ip.status != Ci.nsISystemAdapterIP.STATUS_UP){
				continue;
			}
			var addresses = ip.unicastAddresses;
			for(var j = 0; j < addresses.length; ++j){
				var addr = addresses.queryElementAt(j, Ci.nsISystemIPAddress);
				var struct = addr.address;
				var addrStr = struct.stringAddress;
				var ipType = "IPv4";
				try{
					var structv6 = struct.QueryInterface(Ci.nsISystemIPv6Structure);
					if(addrStr.indexOf("fe80") == 0){
						continue;
					}
					ipType = "IPv6";
				}catch(ex){}
				if (ipType == "IPv4"){
					this._tabLocalAddressesIPv4.push(addrStr);
					LOG("found address : " +  this._tabLocalAddressesIPv4[this._tabLocalAddressesIPv4.length - 1]);
				}
				if (ipType == "IPv6"){
					this._tabLocalAddressesIPv6.push(addrStr);
					LOG("found address : " +  this._tabLocalAddressesIPv6[this._tabLocalAddressesIPv6.length - 1]);
				}
			}
		}
	}
	function joinMulticast(socket, multicastGroup, tabAddress)
	{
		for (var i = 0; i < tabAddress.length; i++)
		{
			socket.joinMulticast(multicastGroup, tabAddress[i]);
		}
	}
	
	function leaveMulticast(socket, multicastGroup, tabAddress)
	{
		for (var i = 0; i < tabAddress.length; i++)
		{
			socket.leaveMulticast(multicastGroup, tabAddress[i]);
		}
	}
	
	function ArrayBufferToString(arr)
	{
		var str = '';
		for (var i = 0; i < arr.length; i++) {
			str += String.fromCharCode(arr[i]);
		}
		return str;
	}
 
	function initSocketsAny(){
		var self=this;
		try{
			if (typeof UDPSocket === 'function'){
				self._socketAnyIPv4 = new UDPSocket({"localPort":self._localPort});
			}
			else{ 
				self._socketAnyIPv4 = new GktUDPSocket({"localPort":self._localPort});
			}
			joinMulticast(self._socketAnyIPv4, self._multicastGroupIPv4, self._tabLocalAddressesIPv4);
			self._socketAnyIPv4.onmessage = function (UDPMessageEvent) {
				var data = ArrayBufferToString (UDPMessageEvent.data);
				LOG("\n   onmessage  - Remote address: " + UDPMessageEvent.remoteAddress + 
					 " Remote port: " + UDPMessageEvent.remotePort +  
					 " Received data : " + data);
				processRestartMessage.call(self, data);
			};  

			if (typeof UDPSocket === 'function'){
				self._socketAnyIPv6 = new UDPSocket({"localPort":self._localPort, "localAddress":"::"});
			}
			else{ 
				self._socketAnyIPv6 = new GktUDPSocket({"localPort":self._localPort, "localAddress":"::"});
			}
			joinMulticast(self._socketAnyIPv6, self._multicastGroupIPv6, self._tabLocalAddressesIPv6);
			self._socketAnyIPv6.onmessage = function (UDPMessageEvent) {
				var data = ArrayBufferToString (UDPMessageEvent.data);
				LOG("\n   onmessage  - Remote address: " + UDPMessageEvent.remoteAddress + 
					 " Remote port: " + UDPMessageEvent.remotePort +  
					 " Received data : " + data);
				processRestartMessage.call(self, data);
			};  
		}catch(e){
			LOG("initSocketsAny exception : " + e);
		}
	}
	
	function beginEv(e){
		try{
			var elt = e.target;
			if(elt.localName == "script" || elt.localName == "par" || elt.localName == "seq" || elt.localName == "body"){
				return;
			}
			LOG("beginEv : " + elt.getAttribute("src"));
			mediasPlaying.push(elt);
		}catch(e){
			LOG("beginEv exception : " + e)
		}
	}

	function endEv(e){
		try{
			var elt = e.target;
			if(elt.localName == "script" || elt.localName == "par" || elt.localName == "seq" || elt.localName == "body"){
				return;
			}
			LOG("endEv : " + elt.getAttribute("src"));
			for(var i = 0; i < mediasPlaying.length; i++){
				if(mediasPlaying[i] == elt){
					LOG(elt.getAttribute("src") + " has been removed from the list");
					mediasPlaying.splice(i, 1);
					return;
				}
			}
		}catch(e){
			LOG("endEv exception : " + e)
		}
	}

	function initMediaListeners(){
		LOG("initMediaListeners");
		try{ 
			document.body.addEventListener("beginEvent", beginEv, true);
			document.body.addEventListener("endEvent", endEv, true);
		}catch(e){
			LOG("initMediaListeners exception : " + e)
		}
	}
	
	function optimizeMediaRestart(){
		LOG("optimizeMediaRestart");
		try{
			var videos = document.getElementsByTagName("video");
			LOG("video : " + videos.length);
			for(var i = 0; i < videos.length; i++){
				LOG("Video : Set attibute dur to indefinite");
				videos[i].setAttribute("dur", "indefinite");
			}
			var audios = document.getElementsByTagName("audio");
			LOG("audios : " + audios.length);
			for(var i = 0; i < audios.length; i++){
				LOG("Audio : Set attibute dur to indefinite");
				audios[i].setAttribute("dur", "indefinite");
			}
		}catch(e){
			LOG("optimizeMediaRestart exception : " + e)
		}
	}
	
	function end(){
		LOG("end");
		var self=this;
		try{
			if(self._socketAnyIPv6 && self._socketAnyIPv6.readyState == "open"){
				leaveMulticast(self._socketAnyIPv6, self._multicastGroupIPv6, self._tabLocalAddressesIPv6);
			}
		}catch(e){
			LOG("leaveMulticast IPv6 exception : " + e);
		}
		try{
			if(self._socketAnyIPv4 && self._socketAnyIPv4.readyState == "open"){
				leaveMulticast(self._socketAnyIPv4, self._multicastGroupIPv4, self._tabLocalAddressesIPv4);
			}
		}catch(e){
			LOG("leaveMulticast IPv4 exception : " + e);
		}
	}
	
	XpfSyncManager.prototype = {
		constructor: XpfSyncManager,
		end: end
	};

	Object.freeze(XpfSyncManager.prototype);
	Object.freeze(XpfSyncManager);

	Object.defineProperty(global, "XpfSyncManager", {
		configurable: false,
		writable: false,
		enumerable: false,
		value: XpfSyncManager
	});
	
	var xpfSyncManager = null;
	function xpfSyncManagerLoad(){
		if(xpfSyncManager == null){
			xpfSyncManager = new XpfSyncManager();
		}
	}
	function xpfSyncManagerUnload(){
		if(xpfSyncManager){
			xpfSyncManager.end();
		}
	}
	window.addEventListener("load", xpfSyncManagerLoad, false);
	window.addEventListener("unload", xpfSyncManagerUnload, false);
	
})(window)
