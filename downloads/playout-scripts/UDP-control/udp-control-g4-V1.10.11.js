(function () {
	"use strict";

	//==================================================================================================
	// VERSION 1.10.11 (for Gekkota 4 devices only)
	//- Activate the VESA DPMS for the concerned devices  
	//- Create a type `text` variable name (ex: `videoSource`), whose name has to be also defined in `VAR_NAME` of the playout script `UDP-control-V1.10.10.js`, and create values for this variable  
	//		- Variable value examples 
	//			-`udp://224.0.0.2:1234/`
	//			- .domain-repository/video.mp4
	//- Associate the variable `videoSource` value to the player 
	//- Add the video media in the playout manifest as linked medias 
	//- Insert the UDP-control-V1.10.10.js script in the playout script to execute
	//- The video is played in the playout main region
	//- The players are listening to UDP messages on the UDP port value defined in the `UDPMsgPort` variable  
	//- The content is controlled using the mediaViaUDP.hta tool which is sending, message through UDP to the registered players
	//- Note: the .hta file is an editable file. So all the fields values can be modified
	//- Launch the *.hta tool and press on the appropriate buttons to change the playout content    
	
	//==================================================================================================
	// Change as required
	//==================================================================================================
	var UDPMsgPort = 2818;
	var VAR_NAME = "videoSource"

	//==================================================================================================
	var udpMediaStream = "";
	var socket = null;
	var DEBUG = false;
	var logger;
	var entry;
	var parentElement;
	var smilSeqVideo;
	var smilVideo;

	//==================================================================================================

	function LOG(msg) {
		if (DEBUG) {
			if (logger == undefined) {
				logger = log4Service.getLogger("widget");
				if (logger) {
					logger.debug("UDP MEDIA : " + msg, null);
				} else {
					console.debug(msg);
				}
			} else {
				logger.debug("UDP MEDIA : " + msg, null);
			}
			console.debug(msg);
		}
	}

	function ERROR(msg) {
		LOG("ERROR " + msg);
	}


	//========================================================================================================
	function forEachAdadpter(callback) {
		var Ci = Components.interfaces;
		var displayOutput = Ci.nsISystemAdapterDisplayOutput;

		var adapters = systemManager.getAdaptersByIId(displayOutput);
		if (adapters) {
			var length = adapters.length;
			LOG("has", length, "adapters");
			for (var i = 0; i < length; ++i) {
				try {
					var adapter = adapters.queryElementAt(i, displayOutput);
					callback(adapter);
				} catch (e) {
					ERROR(e);
				}
			}
		}
	}

	function setPower(value) {
		var Ci = Components.interfaces;
		var displayOutput = Ci.nsISystemAdapterDisplayOutput;
		LOG("setPower", value);

		forEachAdadpter(function (adapter) {
			try {
				adapter.powerMode = value ? displayOutput.POWERMODE_ON : displayOutput.POWERMODE_OFF;
			} catch (ex) {
				ERROR(ex);
				adapter.isStandby = !value;
			}
		});
	}

	function screenOn() {
		LOG("screenOn");
		try {
				setPower(true);
			
		} catch (e) {
			ERROR(e);
		}
	}

	function screenOff() {
		LOG("screenOff");
		try {
				setPower(false);
			
		} catch (e) {
			ERROR(e);
		}
	}

	//========================================================================================================
	function lookForVars() {
		try {
			if (typeof Playzilla != 'undefined') {
				udpMediaStream = Playzilla.customVariablesManager.getValue(VAR_NAME);
				LOG("lookForVars : got value : " + udpMediaStream);
			} else {
				var variables = Xpf.doc.getElementsByTagNameNS(Xpf.ns.uri, "variable");
				for (var i = 0; i < variables.length; i++) {
					var name = variables[i].getAttribute("name");
					var variableValue = variables[i].textContent;

					LOG("current value : " + name + " " + variableValue);

					if (name === VAR_NAME) {
						if (variableValue === "true") closeDoorVar();
						else if (variableValue == "false") openDoorVar();
						break;
					}
				}
			}
		} catch (e) {
			ERROR(e);
		}
	}

	//========================================================================================================
	function streamOn() {
		LOG("streamOn");
		// add dynamic video
		Playzilla.timingManager.addEntries(entry, false);
	}

	function scheduleOn() {
		LOG("scheduleOn");
		// Remove dynamic video
		Playzilla.timingManager.removeEntries(entry, false);
	}
	//========================================================================================================
	function ArrayBufferToString(arr) {
		var str = '';
		for (var i = 0; i < arr.length; i++) {
			str += String.fromCharCode(arr[i]);
		}
		return str;
	}

	function listenUDP() {
		try {
			LOG("Listening on local " + UDPMsgPort);
			if (typeof UDPSocket === 'function') {
				socket = new UDPSocket({
					"localPort": UDPMsgPort
				});
			} else {
				socket = new GktUDPSocket({
					"localPort": UDPMsgPort
				});
			}
			socket.onerror = function (UDPErrorEvent) {
				LOG("onerror - name = " + UDPErrorEvent.name +
					" message = " + UDPErrorEvent.message);
			};
			var received = false;
			socket.onmessage = function (UDPMessageEvent) {
				var data = ArrayBufferToString(UDPMessageEvent.data);
				// LOG ("\n   onmessage  - Remote address: " + UDPMessageEvent.remoteAddress + " Remote port: " + UDPMessageEvent.remotePort +  " Received data : " + data);
				received = true;

				switch (data) {
					case 'screenOn':
						screenOn();
						break;
					case 'screenOff':
						screenOff();
						break;
					case 'streamOn':
						streamOn();
						break;
					case 'scheduleOn':
						scheduleOn();
						break;
				}
			};
		} catch (ex) {
			ERROR("exception = " + ex);
		}
	}

	function guid() {
		function s4() {
			return Math.floor((1 + Math.random()) * 0x10000).toString(16)
				.substring(1);
		}
		return s4() + s4() + '_' + s4() + '_' + s4() + '_' + s4() + '_' + s4() + s4() + s4();
	}

	function getRegions() {
		try {
			LOG("initProc : " + document.location.href);

			var syncIds = [];
			var regions = document.getElementsByTagName('smil-div');

			if (regions.length > 0) {

				var syncIds = [];
				for (var i = 0; i < regions.length; i++) {
					var regionId = regions[i].getAttribute("region");
					LOG("initProc : region : " + i + " ID " + regionId);
					syncIds.push(regionId);
				}

				smilSeqVideo = document.createElement("smil-seq");
				var smilSeqVideoId = 'UID' + guid();
				smilSeqVideo.setAttribute("repeatcount", "indefinite");
				smilSeqVideo.setAttribute("id", smilSeqVideoId);
				smilSeqVideo.setAttribute("begin", "indefinite");

				smilVideo = document.createElement("smil-video");
				smilVideo.setAttribute("dur", "media");
				smilVideo.setAttribute("src", udpMediaStream);
				smilVideo.setAttribute("class", "visual");

				LOG("initProc : adding : " + udpMediaStream + " to " + smilSeqVideo.id);

				regions[0].appendChild(smilSeqVideo);
				smilSeqVideo.appendChild(smilVideo);

				entry = [new Playzilla.TimingManagerSmilEntry(smilSeqVideoId, syncIds, 6)];

			} else {
				throw "no regions detected"
			}

		} catch (ex) {
			LOG("initProc : EX : " + ex);
		}
	}

	function init() {
		lookForVars();
		getRegions();
		listenUDP();
	}

	function unload() {
		LOG("UNLOADING");
		if (typeof Playzilla != 'undefined') {
			Playzilla.timingManager.removeEntry(entry, true);
		}
		if (typeof parentElement != 'undefined') {
			parentElement.removeChild(smilVideo);
		}
	}

	if (window.addEventListener)
		window.addEventListener("load", init, false);
	else if (window.attachEvent)
		window.attachEvent("onload", init);
	else window.onload = init;

	if (window.addEventListener)
		window.addEventListener("unload", unload, false);
	else if (window.attachEvent)
		window.attachEvent("onunload", unload);
	else window.onunload = unload;

}).call(this);