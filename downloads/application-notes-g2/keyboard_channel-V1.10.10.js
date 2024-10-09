// Do not change after this line
(function(global) {
	"use strict";
	const AUDIO_VIDEO="audio-video";
	const KEY_COUNT=10;
	var MIN_TIME = 700;
	var _key_count = KEY_COUNT;
	var keymap = {};
	var last_key_time = undefined;
	var can_interrupt = false;
	var post_num_show = undefined;
	var num_show = undefined;
	var id_show = undefined;
	var channel_keys = [];
	var channel_ids = [];
	var channel_types = [];
	var scene_ids = [];
	var scene_show = false;
	var  canUse = false;
	let logger = new XpfLogger("backoffice.keyboard_channel");
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
			logger.debug("------ id = " + id + " channel_ids[id] = " + channel_ids[id] + " type = " + channel_types[channel.id]);
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
		if (channel_types[channel.id] == AUDIO_VIDEO)
			return;
		for(let id in dataChannels)
		{
			logger.debug("------ id = " + id + " channel_ids[id] = " + channel_ids[id] + " type = " + channel_types[channel.id]);
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
	if(global.addEventListener instanceof Function) {
		logger.debug("addEventListener");
		global.addEventListener("load", load, false);
		global.addEventListener("blur", focusLost, false);
		global.addEventListener("unload", unload, false);
		global.addEventListener("keypress", keypress, false);
	}
	function keypress(evt) {
		logger.debug("keypress");
		keyboardChannel.startChannelByEvent(evt);
	}
	function focusLost() {
		logger.debug("ask focus");
		global.focus();
	}
	function load() {
		logger.debug("load");
		keyboardChannel.initChannels();
		global.focus();
	}
	function unload() {
		logger.debug("unload");
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
			if (typeof key_count != 'undefined')
			{
				_key_count = key_count;
			}
			for (let i = 0; i < _key_count; i++)
			{
				let num = i+1;
				let channel_id = undefined;
				let type = undefined;
				let key = undefined;
				key = window["key" + num + "_key"];
				channel_id = window["key" + num + "_channel_id"];
				type = window["key" + num + "_channel_type"];
				channel_ids[i] = undefined;
				if (key == undefined)
				{
					logger.debug("key" + num + ": key" + num + "_key not defined");
					continue;
				}
				if (channel_id == undefined)
				{
					logger.debug("key" + num + ":  key" + num + "_channel_id not defined");
					continue;
				}
				if (keymap[key] != undefined)
				{
					logger.debug("key" + num + ":  key \"" + key + "\" already used");
					continue;
				}
				keymap[key] = i;
				channel_keys[i] = key;
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
		},
		initChannels: function initChannels()
		{
			for (let i = 0; i <_key_count; i++)
			{
				initChannel(i);
			}
		},
		startChannelByEvent: function startChannelByEvent(aEvent){
			try{
				var key = aEvent.keyCode || aEvent.which;
				var keychar = String.fromCharCode(key);
				logger.debug("keychar = " + keychar);
				if (keymap[keychar] == undefined)
				{
					logger.debug("key \"" + keychar + "\" not used");
					return;
				}
				let date = new Date();
				let time = date.getTime();
				if (last_key_time != undefined && time - last_key_time < MIN_TIME)
				{
					logger.debug("to speed");
					last_key_time = time;
					return;
				}
				last_key_time = time;
				keyboardChannel.startChannel(keymap[keychar]);
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
	global.keyboardChannel = result;
	keyboardChannel.init();
})(window);
logger.debug("------------ keyboard_channel.js");


