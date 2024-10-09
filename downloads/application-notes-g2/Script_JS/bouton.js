
// Do not change after this line
var scene_id = "";
var scene_show = false;
function myInitChannel(aChannelId)
{
	
	let channel = getChannel(aChannelId);
	channel.inited = true;
	let element = document.getElementById(aChannelId);
    if (!element)
	{
		logger.debug("myInitChannel : channel not found");
		return;
	}
	canUse = true;
	let seq = findFirstTag(element.firstChild, "seq");
	scene_id = seq.id;
	element.addEventListener("end", function(e){
		myEndHandler(e, channel);
	});
	logger.debug("****************myInitChannel end");
}
function findFirstTag(aElem, aTag)
{
	for (let child = aElem; child; child = child.nextSibling)
	{
		if (child.tagName == aTag)
			return child;
	}
	return null;
}
function myStartChannel(aChannelId){
	try{
        if (!canUse)
		{
			logger.debug("myStartChannel : can't use");
			return;
		}
		logger.debug("myStartChannel aChannelId = " + aChannelId);
		if (scene_show)
		{
			logger.debug("myStartChannel already showing");
			return;
		}
		let channel = getChannel(aChannelId);
		if (channel.stopped > 1)
		{
			logger.debug("myStartChannel screen off");
			return;
		}
		scene_show = true;
		stopOtherChannel(aChannelId);
		startScenes(aChannelId, [scene_id]);
        startChannel(channel);
	}catch(ex){
		logger.errorEx(ex);
	}
}

function myEndHandler(aEvent, aChannel){
	try {
		logger.debug("--- myEndHandler aChannel.id = " + aChannel.id + " aEvent.target.id = " + aEvent.target.id + " aChannel.scene_id=" + aChannel.scene_id);
		if("Par_" + aChannel.scene_id == aEvent.target.id){
			myStopChannel(aChannel.id);
		}
	}catch(ex){
		logger.errorEx(ex);
	}
}
function myBeginHandler(aEvent, aChannel){
	try {
		logger.debug("--- myBeginHandler aChannel.id = " + aChannel.id + " aEvent.target.id = " + aEvent.target.id + " aChannel.scene_id=" + aChannel.scene_id);
		if(!scene_show && ("" + aChannel.scene_id == aEvent.target.id)){
			myStopChannel(aChannel.id);
		}
	}catch(ex){
		logger.errorEx(ex);
	}
}
function stopOtherChannel(aChannelId)
{
	logger.debug("--- stopOtherChannel");
	for(let id in dataChannels)
	{
		if (id == aChannelId)
			continue;
		let channel = dataChannels[id];
		stopChannel(channel);
	}
}
function startOtherChannel(aChannelId)
{
	for(let id in dataChannels)
	{
		if (id == aChannelId)
			continue;
		let channel = dataChannels[id];
		startChannel(channel);
	}
}
function myStopChannel(aChannelId){
	logger.debug("------ myStopChannel aChannelId = " + aChannelId); 
	scene_show = false;
	startOtherChannel(aChannelId);
	let channel = getChannel(aChannelId);
	stopChannel(channel);
}
let theChannelId = channelId.replace(/[-]/g, "_");
logger.debug("------------ boutons.js theChannelId = " + theChannelId);
let canUse = false;
let channel = getChannel(theChannelId);
channel.inited = true; // discard default init
channel.stopped++;
(function(global) {
	"use strict";
	const Ci = Components.interfaces;

	let logger = new XpfLogger("backoffice.ontologies.XpfPhoenix");

	function callStateFunction(profile, connector, newValue) {
		let funName = "onIo" +  connector.mask + (newValue ? "Begin" : "End");
		logger.debug(funName);
		let fun = result[funName];
		if(fun instanceof Function) {
			logger.debug(fun);
			try {
				fun();
			} catch(e) {
				logger.errorEx(e);
			}
		}
	}

	function getFirstConnector(profile) {
		let connectors = profile.adapter.connectors;
		for(let j = 0; j < connectors.length; ++j) {
			let connector = connectors.queryElementAt(j, Ci.nsISystemConnector);
			return connector;
		}
	}

	let observer = {
		onChange: function onChange(aAPBGpioInput, aOldValue, aNewValue) {
			logger.debug("onChange ", aAPBGpioInput, " ", aOldValue, " " + aNewValue);
			let connector = getFirstConnector(aAPBGpioInput);
			callStateFunction(aAPBGpioInput, connector, aNewValue);
		}
	};

	function registerProfile(profile, connector) {
		logger.debug("register profile");
		profile.addObserver(observer);
		let value = profile.readValue;
		if(value){
			callStateFunction(profile, connector, value);
		}
		return true;
	}

	function unregisterProfile(profile, connector) {
		logger.debug("unregister profile");
		profile.removeObserver(observer);
		return true;
	}

	function forEachGpio(ifaceName, iface, callback) {
		logger.debug("forEachGpio ", ifaceName, " ", iface);
		let profiles = systemManager.getApplicationProfileBindingsByProfileUri(ifaceName);
		logger.debug(profiles);
		if(profiles != null){
			logger.debug("profiles length", profiles.length);
			for (let i = 0; i < profiles.length; ++i){
				let profile = profiles.queryElementAt(i, iface);
				let connector = getFirstConnector(profile);
				if(connector.id.indexOf("phoenix") == 0) {
					if(!callback(profile, connector)) {
						return;
					}
				}
			}
		}
	}

	function forEachGpioInput(callback) {
		return forEachGpio("gpio-input", Ci.nsISystemAPBGpioInput, callback);
	}

	function forEachGpioOutput(callback) {
		return forEachGpio("gpio-output", Ci.nsISystemAPBGpioOutput, callback);
	}

	function load() {
		logger.debug("load");
		forEachGpioInput(registerProfile);
	}

	function unload() {
		logger.debug("unload");
		forEachGpioInput(unregisterProfile);
	}

	if(global.addEventListener instanceof Function) {
		logger.debug("global.addEventListener");
		global.addEventListener("load", load, false);
		global.addEventListener("unload", unload, false);
	}

	let result = {
		write: function write(index, value){
			logger.debug(value);

			let mask = 1 << (index - 1);

			forEachGpioOutput(function(profile, connector) {
				if(connector.mask == mask) {
					try {
						profile.writeValue = value;
						logger.debug("written");
					} catch(e) {
						logger.errorEx(e);
					}
					return false;
				}
				return true;
			});
		}
	};
	global.XpfPhoenix = result;
})(window)
window.addEventListener("load", function () {
	myInitChannel(theChannelId);
	//document.body.addEventListener("mousedown", function (evt) {myStartChannel(theChannelId)} )
});
let phoenixFuncName = "onIo" + (1<<(phoenix-1)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	myStartChannel(theChannelId);
}
