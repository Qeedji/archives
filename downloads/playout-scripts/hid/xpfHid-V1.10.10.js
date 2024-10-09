/**
 ****************************************BEGIN EDIT*********************************************************
 */
 
 /** Time to inactivity (in seconds) before returning to standby mode (must be greater than 0) */
var interactivityTimeout = 3;

/** URL of the media that is played when switching to standby mode (if null, play normal playout) */
var standbyMedia = ".domain-repository/video2.mp4"; //"http://cdn.makeagif.com/media/5-18-2015/RFgj6M.gif";

/** URL of the media that is played during interactivity (if null, play normal playout) */
var interactivityMedia = null; //"http://www.innes.pro/img/logo.png";

/**
 ****************************************END EDIT***********************************************************
 */

// /!\ if you want to play a media from domain-repository, don't forget to add the media to the manifest before publishing /!\


var llogger = null;
function LOG_HID(msg){
	if(llogger){
		llogger.debug(msg);
	}
	else{
		if("AppLogger" in window){
			llogger =  new AppLogger("app.XfpDetectionHid");
		}
		else{
			llogger = new XpfLogger("app.XpfDetectionHid");
		}
		llogger.debug(msg);
	}
}
(function(global) {
	"use strict";
	function callStateFunction(post, state) {
		var funName = "onState" + state + post;
		if(funName in result){
			var fun = result[funName];
			if(fun instanceof Function) {
				try {
					fun();
				} catch(e) {
					LOG_HID(e);
				}
			}
		}
	}

	var isIdle = undefined;

	function setIdle(aIsIdle){
		function getPost(aIsIdle){
			if(aIsIdle){
				return "idle";
			}
			return "active";
		}

		if(aIsIdle === isIdle){
			return;
		}
		if(isIdle !== undefined){
			callStateFunction("End", getPost(isIdle));
		}
		isIdle = aIsIdle;
		if(isIdle !== undefined){
			callStateFunction("Begin", getPost(isIdle));
		}
	}

	var obs = {
		time: interactivityTimeout, 
		onidle: function(){
			LOG_HID("onidle callback");
			setIdle(true);
		},
		onactive: function(){
			LOG_HID("onactive callback");
			setIdle(false);
		}
	};

	var obsAttached = false;
	function attachObserver(){
		LOG_HID("attach observer");
		try{
			navigator.addIdleObserver(obs);
			obsAttached = true;
		}catch(e){
			LOG_HID(e);
		}
	}

	function detachObserver(){
		LOG_HID("detach observer");
		try{
			navigator.removeIdleObserver(obs);
			obsAttached = false;
		}catch(e){
			LOG_HID(e);
		}
	}

	function unload(){
		setIdle(undefined);
		if(obsAttached){
			detachObserver();
		}
	}

	function load(){
		createMediaElement(standbyMedia, "standbymedia");
		createMediaElement(interactivityMedia, "interactivitymedia");
		if(!obsAttached){
			attachObserver();
		}
		if(isIdle === undefined){
			setIdle(false);
		}
		global.removeEventListener("load", load, false);
	}

	global.addEventListener("load", load, false);
	global.addEventListener("unload", unload, false);

	var result = global.XpfDetectionHid = {
		init : function init(val){
			LOG_HID("init :" + val);
			if(val == obs.time){
				return;
			}
			if(obsAttached){
				detachObserver();
			}
			obs.time = val;
			attachObserver();
		}
	};
})(window);

XpfDetectionHid.onStateactiveEnd = function onStateactiveEnd() {
	stopInteractivityMedia();
	playStandbyMedia();
};
XpfDetectionHid.onStateactiveBegin = function onStateactiveBegin() {
	stopStandbyMedia();
	playInteractivityMedia();
};

function getMainRegion(){
	try{
		if("XpfStyleManager" in window){
			for(var field in XpfStyleManager.regions){
				if(XpfStyleManager.regions[field].type =="main"){
					return field;
				}
			}	
		}
	}catch(e){
		LOG_HID("cannot get main region : " + e);
	}
	return null;
}

function createMediaElement(aPath, id){
	try{
		if(!aPath) return;
		if(document.getElementById(id)){
			LOG_HID("media element already exist with id " + id);
			return;
		}
		const ns = "ns.innes.xpf.3";
		
		var mediaElement = document.createElementNS(ns, "ref");
		
		var region = getMainRegion();
		if(!region){
			LOG_HID("createMediaElement : cannot find region");
			return;
		}
		mediaElement.setAttribute("src", aPath);
		mediaElement.setAttribute("dur", "media");
		mediaElement.setAttribute("class", "visual");
		mediaElement.setAttribute("repeatCount", "indefinite");
		mediaElement.setAttribute("region", region);

		var seqElement = document.createElement("seq");
		seqElement.setAttribute("begin","indefinite");
		seqElement.setAttribute("repeatCount", "indefinite");
		seqElement.setAttribute("id", id);
		seqElement.setAttribute("region", region);
		seqElement.appendChild(mediaElement);
		
		var parElementArray = document.getElementsByTagName("par");
		if(parElementArray.length>0){
			parElementArray[0].appendChild(seqElement);
			LOG_HID("media element created for " + aPath);
		}else{
			LOG_HID("no element par found");
		}
	}catch(e){
		LOG_HID("cannot create standby media element : " + e);
	}
}

function playInteractivityMedia(){
	if(!interactivityMedia) return;
	LOG_HID("playInteractivityMedia");
	try{
		if("XpfTimingManager" in window){
			var mediaElt = document.getElementById("interactivitymedia");
			if(mediaElt){
				XpfTimingManager.addOverrideElement(mediaElt, true, true);
			}
			LOG_HID("nothing to play");
		}
	}catch(e){
		LOG_HID("cannot play playInteractivity media : " + e);
	}
}

function stopInteractivityMedia(){
	if(!interactivityMedia) return;
	LOG_HID("stopStandbyMedia");
	try{
		if("XpfTimingManager" in window){
			var mediaElt = document.getElementById("interactivitymedia");
			if(mediaElt){
				XpfTimingManager.removeOverrideElement(mediaElt);
			}
		}
	}catch(e){
		LOG_HID("cannot stop interactivity media : " + e);
	}
}

function playStandbyMedia(){
	if(!standbyMedia) return;
	LOG_HID("playStandbyMedia");
	try{
		if("XpfTimingManager" in window){
			var mediaElt = document.getElementById("standbymedia");
			if(mediaElt){
				XpfTimingManager.addOverrideElement(mediaElt, true, false);
			}
			LOG_HID("nothing to play");
		}
	}catch(e){
		LOG_HID("cannot play standby media : " + e);
	}
}

function stopStandbyMedia(){
	if(!standbyMedia) return;
	LOG_HID("stopStandbyMedia");
	try{
		if("XpfTimingManager" in window){
			var mediaElt = document.getElementById("standbymedia");
			if(mediaElt){
				XpfTimingManager.removeOverrideElement(mediaElt);
			}
		}
	}catch(e){
		LOG_HID("cannot stop standby media : " + e);
	}
}



