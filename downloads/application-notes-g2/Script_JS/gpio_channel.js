// Do not change after this line
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
			//callStateFunction(profile, connector, value);
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
})(window);
(function(global) {
	"use strict";

	let logger = new XpfLogger("backoffice.ontologies.Jack35");
	const Ci = Components.interfaces;

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
		logger.debug("value = ", value);
		if(value) {
			//logger.debug("callStateFunction");
			//callStateFunction(profile, connector, value);
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
		logger.debug("profiles = ", profiles);
		if(profiles != null){
			logger.debug("has profiles ", profiles.length);
			for (let i = 0; i < profiles.length; ++i){
				let profile = profiles.queryElementAt(i, iface);
				let connector = getFirstConnector(profile);
				logger.debug("connector is ", connector.id);
				if(connector.id.indexOf("jack35") == 0) {
					logger.debug("connector is ok, call callback");
					if(!callback(profile, connector)) {
						logger.debug("return");
						return;
					}
				}
			}
		}
	}

	function forEachGpioInput(callback) {
		logger.debug("forEachGpioInput");
		return forEachGpio("gpio-input", Ci.nsISystemAPBGpioInput, callback);
	}

	function forEachGpioOutput(callback) {
		logger.debug("forEachGpioOutput");
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
		logger.debug("addEventListener");
		global.addEventListener("load", load, false);
		global.addEventListener("unload", unload, false);
	}

	let result = {
		write: function write(value){
			logger.debug(value);

			const mask = 1;

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
		},
		read: function read(){
            let value; 
			const mask = 1;
			forEachGpioInput(function(profile, connector) {
				if(connector.mask == mask) {
					try {
						value = profile.readValue;
						logger.debug("value = " + value);
					} catch(e) {
						logger.errorEx(e);
					}
					return false;
				}
				return true;
			});
			logger.debug("read value = " + value);
			return value;
		}
	};
	global.XpfJack35 = result;
})(window);
(function(global) {
	"use strict";
    const NUM_JACK35= 6;
	const AUDIO_VIDEO="audio-video";
	var MIN_TIME = 500;
	var last_key_time = undefined;
	var can_interrupt = false;
	var post_num_show = undefined;
	var num_show = undefined;
	var id_show = undefined;
	var channel_ids = [];
	var channel_types = [];
	var scene_ids = [];
	var scene_show = false;
	var  canUse = false;
	let logger = new XpfLogger("backoffice.gpio_channel");
	function initChannel(aChannelNum)
	{
		let channel_id = channel_ids[aChannelNum];
		scene_ids[aChannelNum] = undefined;
		logger.debug("initChannel : aChannelNum = " + aChannelNum + " channel_id = " + channel_id);
		if (channel_id == undefined)
			return;
		let channel = getChannel(channel_id);
		channel.inited = true;
		let element = document.getElementById(channel_id);
		if (!element)
		{
			logger.debug("initChannel : channel not found");
			channel_ids[aChannelNum] = undefined;
			return;
		}
		canUse = true;
		let seq = findFirstTag(element.firstChild, "seq");
		scene_ids[aChannelNum] = seq.id;
		logger.debug("initChannel : seq.id = " + seq.id);
		element.addEventListener("end", function(e){
			myEndHandler(e, channel);
		});
		if (channel_types[channel_id] == AUDIO_VIDEO)
		{
			let par=findFirstTag(seq.firstChild, "par");
            let child = findFirstTag(par.firstChild, "seq");
			for (child = child.firstChild; child; child = child.nextSibling)
			{
				if (child.tagName == "video")
		        {
					logger.debug("initChannel : remove muted");
					child.removeAttribute("muted");
				}
			}
		}
		logger.debug("****************initChannel end");
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

	function myEndHandler(aEvent, aChannel){
		try {
			logger.debug("--- myEndHandler aChannel.id = " + aChannel.id + " aEvent.target.id = " + aEvent.target.id + " aChannel.scene_id=" + aChannel.scene_id + " id_show = " + id_show);
			if(aChannel.scene_id == id_show && aChannel.scene_id == aEvent.target.id){
				if (post_num_show != undefined)
				{
					let num = post_num_show;
					scene_show = undefined;
					num_show = undefined;
					post_num_show =  undefined;
					result.startChannel(num);
					//window.setTimeout(function() {result.startChannel(num);}, 100);
				}
				else
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
		let channel = dataChannels[aChannelId];
		for(let id in dataChannels)
		{
			logger.debug("------ id = " + id + " channel_ids[id] = " + channel_ids[id] + " type = " + channel_types[channel.id]);
			if (channel_ids[id] != undefined)
				continue;
			let ch = dataChannels[id];
			if ((channel_types[channel.id] == AUDIO_VIDEO ||
				 channel.type == ch.type) &&
				ch.stop_by_me != true)
			{
				logger.debug("------stopOtherChannel id = " + id);
				stopChannel(ch);
				ch.stop_by_me = true;
			}
		}
	}
	function startOtherChannel(aChannelId)
	{
		let channel = dataChannels[aChannelId];
		for(let id in dataChannels)
		{
			logger.debug("------ startOtherChannel id = " + id + " channel_ids[id] = " + channel_ids[id] + " type = " + channel_types[channel.id]);
			if (channel_ids[id] != undefined)
				continue;
			let ch = dataChannels[id];
			if (channel_types[channel.id] == AUDIO_VIDEO ||
				channel.type == ch.type)
			{
				logger.debug("------startOtherChannel id = " + id);
				startChannel(dataChannels[id]);
				ch.stop_by_me = false;
			}
		}
	}
	function restartOtherChannel(aChannelId)
	{
		let channel = dataChannels[aChannelId];
		let type = channel_types[channel.id];
		if (channel_types[channel.id] == AUDIO_VIDEO)
			return;
		for(let id in dataChannels)
		{
			logger.debug("------ restartOtherChannel id = " + id + " channel_ids[id] = " + channel_ids[id] + " type = " + channel_types[channel.id]);
			if (channel_ids[id] != undefined)
				continue;
			let ch = dataChannels[id];
			if (ch.stop_by_me && channel.type != ch.type)
			{
				logger.debug("------restartOtherChannel id = " + id);
				startChannel(dataChannels[id]);
				ch.stop_by_me = false;
			}
		}
	}
	function myStopChannel(aChannelId){
		logger.debug("------ myStopChannel aChannelId = " + aChannelId); 
		scene_show = false;
		num_show = undefined;
		startOtherChannel(aChannelId);
		let channel = getChannel(aChannelId);
		stopChannel(channel);
	}
	let result = { 
		init: function init()
		{
			logger.debug("init");
			logger.debug("init : channel_ids.length =" + channel_ids.length);
			can_interrupt = false;
			if (typeof interrupt_scene != 'undefined')
			{
				can_interrupt = interrupt_scene;
			}
			for (let i = 0; i < 7; i++)
			{
				let num = i+1;
				let channel_id = undefined;
				let type = undefined;
				if (i == NUM_JACK35)
				{
					channel_id = window["jack35" + "_channel_id"];
					type = window["jack35" + "_channel_type"];
				}
				else
				{
					channel_id = window["gpio" + num + "_channel_id"];
					type = window["gpio" + num + "_channel_type"];
				}
				channel_ids[i] = undefined;
				if (channel_id != undefined)
				{
					let theChannelId = channel_id.replace(/[-]/g, "_");
					logger.debug("init: theChannelId = " + theChannelId);
					channel_ids[i] = theChannelId;
					channel_ids[theChannelId] = theChannelId;
					channel_types[theChannelId] = type;
					if (dataChannels[theChannelId] == null)
					{
						let channel = getChannel(theChannelId);
						channel.inited = true; // discard default init
						channel.stopped++;
					}
				}
			}
		},
		initChannels: function initChannels()
		{
			for (let i = 0; i <7; i++)
			{
				initChannel(i);
			}
		},
		startGpioChannel: function startGpioChannel(aChannelNum){
			try{
				let date = new Date();
				let time = date.getTime();
				if (last_key_time != undefined && time - last_key_time < MIN_TIME)
				{
					logger.debug("to speed");
					last_key_time = time;
					return;
				}
				last_key_time = time;
				this.startChannel(aChannelNum);
			}catch(ex){
				logger.errorEx(ex);
			}
		},
			
		startChannel: function startChannel(aChannelNum){
			try{
				let channel_id = channel_ids[aChannelNum];
				logger.debug("startChannel aChannelNum = " + aChannelNum + " channel_id = " + channel_id);
				let scene_id = scene_ids[aChannelNum];
				if (channel_id == undefined)
				{
					logger.debug("startChannel : can't use gpio" + (aChannelNum+1));
					return;
				}
				logger.debug("startChannel channel_id = " + channel_id);
				if (!can_interrupt && scene_show)
				{
					logger.debug("startChannel already showing");
					return;

				}
				let channel = getChannel(channel_id);
				if (channel.stopped > 1)
				{
					logger.debug("startChannel screen off");
					return;
				}
				if (can_interrupt && scene_show)
				{
					if (0 && aChannelNum == num_show)
					{
						logger.debug("startChannel : can't interrupt the same scene");
						return;
					}
					else 
					{
						logger.debug("startChannel : stop current channel");
						post_num_show = aChannelNum;
                        stopChannel(getChannel(channel_ids[num_show]));  
						num_show = undefined;                                
						return;
					}
				}
				scene_show = true;
				num_show = aChannelNum;
				id_show = scene_id;
				stopOtherChannel(channel_id);
				startScenes(channel_id, [scene_id]);
				window.startChannel(channel);
				restartOtherChannel(channel_id);
			}catch(ex){
				logger.errorEx(ex);
			}
		}
	};
	global.gpioChannel = result;
})(window);
logger.debug("------------ gpio_channel.js");

gpioChannel.init();
window.addEventListener("load", function () {
	gpioChannel.initChannels();
	document.body.addEventListener("mousedown", function (evt) {gpioChannel.startChannel(0)} )});

let i=0;
let phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(0);
}
i++
phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(1);
}
i++
phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(2);
}
i++
phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(3);
}
i++
phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(4);
}
i++
phoenixFuncName = "onIo" + (1<<(i)) + "Begin";
XpfPhoenix[phoenixFuncName] = function onBegin()
{
	logger.debug("call " + phoenixFuncName);	
	gpioChannel.startGpioChannel(5);
}
XpfJack35["onIo1Begin"] = function onBegin()
{
	logger.debug("call XpfJack35.onIo1Begin");	
	gpioChannel.startGpioChannel(6);
}


