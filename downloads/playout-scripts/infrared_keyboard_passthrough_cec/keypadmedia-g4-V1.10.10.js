(function(){
	"use strict";
	
	//==================================================================================================
    // VERSION 1.10.10
	//==================================================================================================
	var DEBUG = true;
	var logger;
	var media;
	var seq;
	var entry;
	
	var mediaActive = false;
	var mediaListener = false; 
	var mediaEvent = "";

	// table indexed by a charCode
	var mediaTableChar = [];
	// table indexed by a keyCode
	var mediaTableKey = [];
	
	var timeouttimer;
	
	var listenToKeyboard = true;

	
	function LOG(msg)
	{
	 if (DEBUG)
	  {
		 if (logger == undefined )
		 {
		   logger = log4Service.getLogger("keypadmedia");
		   
		   console.debug("logger" + logger);
		   if (logger) 
			  logger.debug("KEYPAD MEDIA : " + msg, null);
		   else 
			  console.debug(msg);
		 
		 }
		 else logger.debug("KEYPAD MEDIA : " + msg, null);
		 
		 console.debug(msg);
	   }
	}
	
	function getAbsolutePath() {
		//LOG("getAbsolutePath");
		var href = "";
		var scripts;
		var currentScript;
		var idx;

		scripts = document.querySelectorAll('script[src]');

		LOG("getAbsolutePath " + scripts.length);

		if (scripts.length > 0) {
			currentScript = scripts[scripts.length - 1].src;

			LOG("script " + currentScript);

			idx = currentScript.indexOf("keypadmedia");

			if (idx !== -1) {
				href = currentScript.substring(0, idx - 1);

			}
		}
		return href;
	}
	
	//===========================================================================================
	function findMainRegionSelector() {
		if (Playzilla.grids == null) {
			return;
		}
		var gr;
		gr = Playzilla.grids["UID_defaultVisualGrid"];
		if (gr == null) {
			gr = Playzilla.grids["UID_defaultAudioVisualGrid"];
			if (gr == null) {
				return;
			}
		}
		var region;
		for (var selector in gr) {
			region = gr[selector];
			if (
				region.top === "0px" &&
				region.left === "0px" &&
				region.width === "100%" &&
				region.height === "100%"
			) {
				return selector;
			}
		}
	}
	function guid() {
		function s4() {
			return Math.floor((1 + Math.random()) * 0x10000).toString(16)
				.substring(1);
		}
		return s4() + s4() + '_' + s4() + '_' + s4() + '_' + s4() + '_' + s4() + s4() + s4();
	}
	function initSeq() {
		try {
			var mainRegionSelector = findMainRegionSelector();
			if (mainRegionSelector == null) {
				throw ("no main region selector found")
			}
			var mainRegion = document.body.querySelector(mainRegionSelector);
			if (mainRegion == null) {
				throw ("no main region found");
			}
			seq = document.createElement("smil-seq");
			var seqId = 'UID' + guid();
			seq.setAttribute("repeatcount", "indefinite");
			seq.setAttribute("id", seqId);
			seq.setAttribute("begin", "indefinite");
			mainRegion.appendChild(seq);
			var regionId = mainRegion.getAttribute("region");
			entry = [new Playzilla.TimingManagerSmilEntry(seqId, [regionId], 6)];
		} catch (ex) {
			LOG("initSeq : EX " + ex);

		}
	}
	
	function getElementFromExt(fileName) {
		var ext = "";

		var idx = fileName.lastIndexOf(".");
		if (idx != -1) {
			ext = fileName.substring(idx + 1);
		}

		ext = ext.toLowerCase();
		var element = "div";

		switch (ext) {
			case "apng":
			case "gif":
			case "jpeg":
			case "jpg":
			case "png":
			case "svg":
			case "svgz":
				element = "smil-img";
				break;

			case "asf":
			case "avi":
			case "divx":
			case "divx-pcm":
			case "f4v":
			case "m1s":
			case "m2p":
			case "m2v":
			case "mov":
			case "mp4":
			case "mpeg":
			case "ogg":
			case "ogm":
			case "vob":
			case "wmv":
				element = "smil-video";
				break;
			case "ppt":
			case "pptx":
			case "pdf":
				element = "smil-book";
				break;

			case "maff":
			case "wgt":
				element = "smil-animation";
				break;
		}

		return element;
	}
	
	function addMediaToSeq(mediaData) {
		try {
			var mediaPath = ".domain-repository" + mediaData.path;
			LOG("***  addMediaToSeq [" + mediaPath + "] in a " + mediaData.elementType);

			if (mediaPath !== "") {
				media = document.createElement(mediaData.elementType);
				media.setAttribute("duration", "media");
				media.setAttribute("class", "visual");
				mediaListener = false;
				if (mediaData.behaviour == 1) {
					media.setAttribute("repeatCount", "0");
					mediaListener = true;
					mediaEvent = (mediaData.elementType == "smil-video") ? "ended" : "endEvent"

					media.addEventListener(mediaEvent, function () {
						LOG("MEDIA endEvent");
						removeMediaFromSeq();
					}, true);
				} else media.setAttribute("repeatCount", "indefinite");

				media.setAttribute("src", mediaPath);
				seq.appendChild(media);
				mediaActive = true;
				Playzilla.timingManager.addEntries(entry, false);
			}
		} catch (ex) {
			LOG("addMediaToSeq ex : " + ex);
		}
	}
	function removeMediaFromSeq() {
		if (mediaActive) {
			LOG("removeMediaFromSeq = " + mediaListener + " " + mediaEvent);

			if (mediaListener) {
				media.removeEventListener(mediaEvent, function () {
					LOG("MEDIA endEvent");
					removeMediaFromSeq();
				}, true);
			}

			seq.removeChild(media);
			Playzilla.timingManager.removeEntries(entry, false);
			media = null;
			mediaActive = false;
		}
	}
	
	function keyPress(event) {
		LOG("keyCode = " + event.keyCode + " charCode = " + event.charCode + " isChar = " + event.isChar + " listen = " + listenToKeyboard);

		try {
			if (listenToKeyboard) {
				if (event.isChar == true)
				{
					if (event.charCode == 48) {
						listenToKeyboard = false;
						removeMediaFromSeq();
						setTimeout(listenAgain, 500);
					} else if (mediaTableChar[event.charCode]) {
						listenToKeyboard = false;
						removeMediaFromSeq();
						addMediaToSeq(mediaTableChar[event.charCode]);
						setTimeout(listenAgain, 500);
					}
				}
				else if (mediaTableKey[event.keyCode]) {
					listenToKeyboard = false;
					removeMediaFromSeq();
					addMediaToSeq(mediaTableKey[event.keyCode]);
					setTimeout(listenAgain, 500);
				}
			}
		} catch (e) {
			LOG("ERROR EX : " + ex);
			xpfLogger.errorEx(e);
		}
	}

	function listenAgain() {
	    LOG("listenAgain");
		listenToKeyboard = true;
	}
	
	function focusLost() {
		LOG("ask focus");
		window.focus();
	}
	
	function xhrManualTimeOut()
    {
        LOG("**** xmlhttprequest xhrTimeOut ****"); 
        clearTimeout(timeouttimer);
    }
	
	function parseMediaTable(data) {
		try {

			var lines = data.split("\n");

			LOG("parseMediaTable : " + lines.length);

			var mediaAction = {};
			var idx;

			for (var i = 0; i < lines.length; i++) {
				var matches = lines[i].split(",");
				if (matches !== null) {
					if (matches.length == 3) {
						LOG("Line  : " + matches[0] + " " + matches[1] + " " + matches[2]);
						var key=matches[0];
						var code = 0;
						var isChar = true;
						if (key == "red") {
							code=403;
							isChar = false;
						} else if (key == "green") {
							code=404;
							isChar = false;
						} else if (key == "yellow") {
							code=405;
							isChar = false;
						} else if (key == "blue") {
							code=406;
							isChar = false;
						} else {
							code = parseInt(key);
							if ((code > 0) && (code < 10)) {
								code += 48;
							}
						}
						mediaAction = {};

						if (matches[2].charCodeAt(matches[2].length - 1) == 13) mediaAction.path = matches[2].substring(0, matches[2].length - 1);
						else mediaAction.path = matches[2];

						mediaAction.path = mediaAction.path.trim();

						mediaAction.elementType = getElementFromExt(mediaAction.path);

						if ((mediaAction.elementType == "smil-video") || (mediaAction.elementType == "smil-book") || (mediaAction.elementType == "smil-animation")) {
							mediaAction.behaviour = (matches[1] == "media") ? 1 : 0;
						} else mediaAction.behaviour = 0;

						LOG("mediaAction  : " + code + " " + JSON.stringify(mediaAction));

						if (isChar)
						{
							mediaTableChar[code] = mediaAction;
						}
						else
						{
							mediaTableKey[code] = mediaAction;
						}
					}
				}
			}
		} catch (ex) {
			LOG("parseMediaTable EX " + ex);
		}
	}
	
	function readFile(url) {
		try {

			// 1 min timeout (this is a disk access)
			var xhrTimeout = 60000;

			var xhr = new XMLHttpRequest();
			xhr.addEventListener("error", function (evt) {
				LOG("XHR : ERROR readyState : " + this.readyState + "  status : " + this.status + "  " + this.statusText);
			}, false);
			xhr.addEventListener("load", function (evt) {
				clearTimeout(timeouttimer);
				LOG("XHR : loadend ANSWER : readyState : " + this.readyState + "  status : " + this.status);
				if (DEBUG) LOG("RESPONCE " + String(this.responseText));
				// check status and ready state
				var n = Math.floor(this.status / 100);
				if ((this.readyState !== 4) || (n > 3)) {
					LOG("RESPONCE error in status or state");
				} else {
					parseMediaTable(this.responseText);
				}
			}, false);

			LOG("URL " + url + " calling for keypadMedia");

			xhr.open("GET", url, true);
			timeouttimer = setTimeout(xhrManualTimeOut, xhrTimeout);

			xhr.setRequestHeader("Connection", "Keep-Alive");
			xhr.send();

			LOG("msg sent for getCurrentNews \n");
		} catch (err) {
			LOG("XHR : Exception : " + err);
		}
	}

function initMediaTable() {
	var mediaAction = {};

	var path = getAbsolutePath();

	path += "/keypadmedia.txt";

	LOG("initMediaTable : " + path);

	// Read this information from config.file.
	readFile(path);
}
	//===========================================================================================
	function initProc() {

		try {

			LOG("initProc : " + document.location.href);

			window.focus();

			window.addEventListener("keypress", keyPress, false);
			window.addEventListener("blur", focusLost, false);
			window.addEventListener("load", focusLost, false);

			initMediaTable();

			initSeq();

		} catch (ex) {
			var event = document.createEvent("CustomEvent");
			event.initCustomEvent("scriptError", true, false, 0);
			document.body.dispatchEvent(event);
			LOG("ERROR : " + ex);
		}
	}
	//===========================================================================================
	
	
   if (window.addEventListener)
       window.addEventListener("load", initProc, false);
   else if (window.attachEvent)
       window.attachEvent("onload", initProc);
   else window.onload = initProc;
	
}).call(this);
