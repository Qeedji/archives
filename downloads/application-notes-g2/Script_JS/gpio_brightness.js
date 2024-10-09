// Do not change after this line
	logger.debug("init gpioBrightness");
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
		},
		read: function read(index){
			logger.debug("read index = " + index);
			let mask = 1 << (index - 1);
            let value; 
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
			logger.debug("callStateFunction");
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
	const Ci = Components.interfaces;
	const displayOutputBinding = Ci.nsISystemDisplayOutputBinding;
	const displayOutput = Ci.nsISystemAdapterDisplayOutput;
	let _phoenix=undefined;
	let _jack35=undefined;
	let _brightness0 = 100;
	let _brightness1 = 30;
	let logger = new XpfLogger("backoffice.gpio_brightness");
	
	logger.debug("init gpioBrightness");
	if(global.addEventListener instanceof Function) {
		logger.debug("global.addEventListener");
		global.addEventListener("load", load, false);
		global.addEventListener("unload", unload, false);
	}
	let on = true;
	function load() 
	{
		logger.debug("load");
		if (typeof jack35 != 'undefined')
		{
			_jack35 = jack35;
		}
		if (typeof phoenix != 'undefined')
		{
			_phoenix = phoenix;
		}
		if (typeof brightness0 != 'undefined')
		{
			logger.debug("set brightness0 = " + brightness0);
			_brightness0 = brightness0;
		}
		if (typeof brightness1 != 'undefined')
		{
			_brightness1 = brightness1;
		}
		logger.debug("gpioBrightness _jack35 = " + _jack35);
		logger.debug("gpioBrightness _phoenix = " + _phoenix);
		logger.debug("gpioBrightness _brightness0 = " + _brightness0);
		logger.debug("gpioBrightness _brightness1 = " + _brightness1);
		if (typeof _phoenix != 'undefined')
		{
			let phoenixFuncName = "onIo" + (1<<(_phoenix-1)) + "Begin";
			XpfPhoenix[phoenixFuncName] = function onBegin()
			{
				logger.debug("call onBegin");
				gpioBrightness.setBrightness(_brightness1);
			}
			phoenixFuncName = "onIo" + (1<<(_phoenix-1)) + "End";
			XpfPhoenix[phoenixFuncName] = function onEnd()
			{
				logger.debug("call onEnd");
				gpioBrightness.setBrightness(_brightness0);
			}
			if (XpfPhoenix.read(_phoenix) == true)
				gpioBrightness.setBrightness(_brightness1);
			else
				gpioBrightness.setBrightness(_brightness0);
		}
		if (typeof _jack35 != 'undefined')
		{
			let jack35FuncName = "onIo1Begin";
			XpfJack35[jack35FuncName] = function onBegin()
			{
				logger.debug("call onBegin");
				gpioBrightness.setBrightness(_brightness1);
			}
			jack35FuncName = "onIo1End";
			XpfJack35[jack35FuncName] = function onEnd()
			{
				logger.debug("call onEnd");
				gpioBrightness.setBrightness(_brightness0);
			}
			if (XpfJack35.read(_phoenix) == true)
				gpioBrightness.setBrightness(_brightness1);
			else
				gpioBrightness.setBrightness(_brightness0);
		}
/*
		document.body.addEventListener(
			"mousedown", function (evt) {on = !on; gpioBrightness.setBrightness((on) ? _brightness1 : _brightness0)});*/
	}
	function unload() {
		logger.debug("unload");
	}
	let result = {
        setBrightness: function(value)
		{
			logger.debug("setBrightness value = " + value);
			if(displayOutputBinding != null) {
				logger.debug("use display-output binding");
				let displayOutputs = systemManager.getApplicationProfileBindingsByProfileUri("display-output");
				if(displayOutputs && displayOutputs.length > 0) {
					for(let i = 0; i < displayOutputs.length; ++i) {
						let displayOutput = displayOutputs.queryElementAt(i, displayOutputBinding);
						logger.debug("use display-output i = " + i);
						try {
							displayOutput.brightness = value;
						}catch(e) {
							logger.errorEx(e);
						}
					}
				}
			} else {
				logger.debug("use adapter");
				let adapters = systemManager.getAdaptersByIId(displayOutput);
				if(adapters && adapters.length > 0) {
					for(let i = 0; i < adapters.length; ++i) {
						let adapter = adapters.queryElementAt(i, displayOutput);
						try {
							logger.debug("use adapter ", i);
							adapter.brightness = value;
						} catch(e) {
							logger.errorEx(e);
						}
					}
				}
			}			
		}
	};
	global.gpioBrightness = result;
})(window)
