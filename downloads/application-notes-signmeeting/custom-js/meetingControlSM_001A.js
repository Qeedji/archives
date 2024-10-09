/**
 * Meeting Room Control : SignMeeting
 * 		Get Room / Meeting states
 *
 * Version: 1.13.10
 */

(function () {
	"use strict";

	var roomStateMachine = {};

	const CompInt = Components.interfaces;

	// GPIO index for R/W
	var writeGPIOIndex = 1;
	var readGPIOIndex = 1;
	var hostServices;

	var currentRoom = "";
	var confirmMeetingId = "";

	var configDistech = {};
	var username = "";
	var password = "";

	var logWindow;

	function ERROR(string) {
		logWindow.append('<p>' + "*** ERROR *** " + getTimeToStr() + escapeHtml(string) + '</p>');
		logWindow.stop().scrollTo({ top: '100%', left: 0 }, 800);
	}

	function setDistechConfig() {
		username = "demo";
		password = "Demo1234";

		var roomConfig = {};
		roomConfig.ip = 'http://82.239.198.99:81/';
		roomConfig.restCall = 'api/rest/v1/protocols/bacnet/local/objects/binary-value/12/properties/present-value';

		configDistech[''] = roomConfig;
	}

	function initStateMachine(l_hostServices) {
		hostServices = l_hostServices;

		$("body").append('<div id="logWindow" style="position:absolute;left:50px;z-index:1000;"><div id="logWindowContent"></div></div>');
		logWindow = $("#logWindow");

		// Events from ALARMS
		SignmeetingCommons.Tools.addEventListener("roomFree", stateFree);
		SignmeetingCommons.Tools.addEventListener("roomPendingBusy", statePendingBusy);
		SignmeetingCommons.Tools.addEventListener("roomBusy", stateBusy);
		SignmeetingCommons.Tools.addEventListener("roomUpdate", roomNameUpdate);
		// If did BOOK NOW
		SignmeetingCommons.Tools.addEventListener("addQuickMeeting", addQuickMeeting);

		// $("body").append('<div id="logWindow" style="position:absolute;left:50px;z-index:1000;"><div id="logWindowContent"></div></div>');
		// this.logWindow = $("#logWindow");
		setDistechConfig();

		// init GPIO & variable listeners
		forEachGpio();

		// ERROR("initStateMachine : " + linkedRessources.length);
		if (linkedRessources.length == 1) {
			currentRoom = linkedRessources[0].identifiant;
		}

		for (var i = 0; i < linkedRessources.length; i++) {
			ERROR("initStateMachine : " + linkedRessources[i].identifiant);
			roomStateMachine[linkedRessources[i].identifiant] = StateMachine.create({
				initial: 'State_start',
				error: function (eventName, from, to, args, errorCode, errorMessage) {
					window.logger.debug('event ' + eventName + ' raised :- ' + errorMessage);
				},

				events: [
					{ name: 'busyEvent', from: 'State_start', to: 'State_busy' },
					{ name: 'pendingEvent', from: 'State_start', to: 'State_pending' },
					{ name: 'freeEvent', from: 'State_start', to: 'State_free' },

					{ name: 'pendingEvent', from: 'State_free', to: 'State_pending' },
					{ name: 'busyEvent', from: 'State_free', to: 'State_busy' },

					{ name: 'pendingEvent', from: 'State_busy', to: 'State_pending' },
					{ name: 'freeEvent', from: 'State_busy', to: 'State_free' },

					{ name: 'busyEvent', from: 'State_pending', to: 'State_busy' },
					{ name: 'freeEvent', from: 'State_pending', to: 'State_free' },
				],
				callbacks: {
					onenterState_start: function (event, from, to, msg) {
						ERROR("State : " + this.current);
						// this.goStart();
					},
					onenterState_busy: function (event, from, to, msg) {
						ERROR("State : " + this.current);
						writeGPIO(2, 1);
					},
					onenterState_pending: function (event, from, to, msg) {
						ERROR("State : " + this.current);
						// confirmCurrent();
						writeGPIO(2, 1);
					},
					onenterState_free: function (event, from, to, msg) {
						ERROR("State : " + this.current);
					},
				}
			});
		}
	}


	function getMeeting() {
		var currentMeet = hostServices.parent.getCacheItem(confirmMeetingId);
		ERROR("Event to confirm : " + currentMeet.id + " " + currentMeet.title);
	}

	function stateFree() {
		ERROR("Meeting Room : stateFree");
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].freeEvent();
		}
	}

	function statePendingBusy(e) {
		ERROR("Meeting Room : statePendingBusy : " + e.detail.toString());
		confirmMeetingId = e.detail.toString();
		getMeeting();
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].pendingEvent();
		}
	}

	function stateBusy(e) {
		ERROR("Meeting Room : stateBusy : " + e.detail.toString());
		confirmMeetingId = e.detail.toString();
		getMeeting();
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].busyEvent();
		}
	}

	function roomNameUpdate(e) {
		ERROR("Meeting Room : roomNameUpdate : " + e.detail.toString());
		currentRoom = e.detail.toString();
		confirmMeetingId = "";
	}

	function addQuickMeeting(e) {
		ERROR("Meeting Room : addQuickMeeting : " + e.detail.toString());
		if (currentRoom !== "") {
			ERROR("Meeting Room : addQuickMeeting : state " + roomStateMachine[currentRoom].current);

			if (roomStateMachine[currentRoom].current == "State_free") {
				writeGPIO(3, 1);
			}
		}
	}

	function confirmCurrent() {
		ERROR("confirmCurrent " + hostServices.atype + " for " + confirmMeetingId);

		try {
			var oldItem = hostServices.parent.getCacheItem(confirmMeetingId);

			var newItem = $.extend(true, {}, oldItem);
			var end = new window.top.Date();
			// HOST SYSTEM required this functionality
			newItem.presenceConfirmedDate = end;
			// ERROR("Event to confirm : " + JSON.stringify(newItem, null, 3));
			window.logger.debug("Event to confirm : " + newItem.id + " " + newItem.title);

			$.when(
				hostServices.modifyItem(newItem, oldItem))
				.then(
					function (item) {
						window.logger.debug("############################ ===> MOD done " + item);
						hostServices.restart();
					},
					function (oError) {
						window.logger.debug("############################ ===> ERROR " + JSON.stringify(oError, null, "\t"));
						hostServices.restart();
					},
					function (status) {
						window.logger.debug("############################ ===> MOD Items: in progress :" + status);
					}
				);
		}
		catch (ex) {
			window.logger.error("confirmCurrent EX : " + ex);
		}
	}



	//==========================================================================
	// GPIO
	var observer = {
		onChange: function onChange(aAPBGpioInput, aOldValue, aNewValue) {

			ERROR("Gpio changed " + aNewValue);

			confirmCurrent();
			//if (aNewValue === true) roomStateMachine.gpioInputOne();
			//else roomStateMachine.gpioInputZero();
		}
	};


	function registerProfile(profile, connector) {
		window.logger.debug("register profile");
		profile.addObserver(observer);
		return true;
	}

	function forEachGpio() {
		var ifaceName = "gpio-output";
		var iface = CompInt.nsISystemAPBGpioOutput;

		window.logger.debug("forEachGpio " + ifaceName + " " + iface);
		var profiles = systemManager.getApplicationProfileBindingsByProfileUri(ifaceName);
		window.logger.debug(profiles);
		if (profiles !== null) {
			window.logger.debug("profiles length" + profiles.length);
			for (var i = 0; i < profiles.length; ++i) {
				var profile = profiles.queryElementAt(i, iface);
				var connector = getFirstConnector(profile);

				var mask = 1 << (readGPIOIndex - 1);

				var maskFromConnector = parseInt(connector.mask, 10);

				if ((connector.id.indexOf("phoenix") === 0) && (mask == maskFromConnector)) {
					if (!registerProfile(profile, connector)) {
						return;
					}
				}
			}
		}
	}



	function writeGPIO(index, value) {
		try {
			var profiles = systemManager.getApplicationProfileBindingsByProfileUri("gpio-output");
			var mask = 1 << (index - 1);
			if (profiles !== null) {

				window.logger.debug("looking at profiles : " + profiles.length);
				for (var i = 0; i < profiles.length; ++i) {
					var profile = profiles.queryElementAt(i, Components.interfaces.nsISystemAPBGpioOutput);
					var connector = getFirstConnector(profile);
					if (connector.mask == mask) {
						profile.writeValue = value;
						window.logger.debug("writeGPIO idx" + index + " value " + value);
						return;
					}
				}
			}
		}
		catch (e) {
			window.logger.error(e.toString());
		}
	}

	function getFirstConnector(profile) {
		var connectors = profile.adapter.connectors;
		for (var j = 0; j < connectors.length; ++j) {
			var connector = connectors.queryElementAt(j, CompInt.nsISystemConnector);
			return connector;
		}
	}

	function readGPIO(index) {

		try {
			var profiles = systemManager.getApplicationProfileBindingsByProfileUri("gpio-input");
			var mask = 1 << (index - 1);
			if (profiles !== null) {

				//window.logger.debug("looking at profiles : " + profiles.length);
				for (var i = 0; i < profiles.length; ++i) {
					var profile = profiles.queryElementAt(i, Components.interfaces.nsISystemAPBGpioInput);
					var connector = getFirstConnector(profile);
					if (connector.mask == mask) {
						value = profile.readValue;
						window.logger.debug("readGPIO idx " + index + " value " + value);
						return value;
					}
				}
			}
		}
		catch (e) {
			window.logger.error(e.toString());
		}
	}

	window.initStateMachine = initStateMachine;
})();
