/**
 * Meeting Room Control : SignMeeting
 * 		Interface Distech webservices
 *
 * URL de test pour changement valeur :
 * 		http://82.239.198.99:81
 * 		login : innes
 * 		passwd : Innes2017
 *
 * Version: 1.13.10
 */

(function () {
	"use strict";

	//================================================================================
	var configDistech = {};
	// Configuration to be changed
	var pollingFreq = 30000; //ms
	var delayForResumeButton = 15000; //ms

	var roomConfig = {};
	roomConfig.url = 'http://82.239.198.99:81/';
	roomConfig.restCall = 'api/rest/v1/protocols/bacnet/local/objects/binary-value/12/properties/present-value';
	roomConfig.username = "demo";
	roomConfig.password = "Demo1234";
	configDistech['Salle1@innesrd.onmicrosoft.com'] = roomConfig;

	roomConfig = {};
	roomConfig.url = 'http://82.239.198.99:82/';
	roomConfig.restCall = 'api/rest/v1/protocols/bacnet/local/objects/binary-value/12/properties/present-value';
	roomConfig.username = "demo";
	roomConfig.password = "Demo1234";
	configDistech['Salle2@innesrd.onmicrosoft.com'] = roomConfig;

	// Add as required for all Rooms ...

	//================================================================================

	var buttonStateMachine = {};

	var roomStateMachine = {};
	var currentRoom = "";
	var currentMeetingId = "";
	var hostServices;
	var isServerActionActive = false;
	var currentConfig = null;
	var pollingTimer = null;
	var delayNormalTimer = null;

	var text1 = "Maintain";
	var text2 = "Resume";

	//================================================================================
	// Statemachine
	function initStateMachine(l_hostServices) {
		hostServices = l_hostServices;

		var lnCode = navigator.language;
		if (typeof lnCode == "string") {
			lnCode = lnCode.toLowerCase().substring(0, 2);
			if (lnCode == "fr") {
				text1 = "Maintenir";
				text2 = "Reprendre";
			}
		}


		// Events from eventsManager
		SignmeetingCommons.Tools.addEventListener("roomFree", stateFree);
		SignmeetingCommons.Tools.addEventListener("roomPendingBusy", statePendingBusy);
		SignmeetingCommons.Tools.addEventListener("roomBusy", stateBusy);
		SignmeetingCommons.Tools.addEventListener("roomUpdate", roomNameUpdate);
		SignmeetingCommons.Tools.addEventListener("customEvent", customEvent);

		var authOK = false;
		var authUser = "";
		SignmeetingCommons.Tools.addEventListener("authOK", function (e) {
			window.logger.debug("authOK, previous value: " + authOK);
			authOK = true;
		});
		SignmeetingCommons.Tools.addEventListener("authUser", function (e) {
			window.logger.debug("authUser, previous value: " + authUser);
			authUser = e;
		});
		SignmeetingCommons.Tools.addEventListener("authRefused", function (e) {
			window.logger.debug("authRefused, previous value: " + authOK);
			authOK = false;
		});
		SignmeetingCommons.Tools.addEventListener("authDisconnect", function (e) {
			window.logger.debug("authDisconnect, previous value: " + authOK);
			authOK = false;
		});

		for (var i = 0; i < linkedRessources.length; i++) {
			window.logger.debug("initStateMachine : " + linkedRessources[i].identifiant);
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
				}
			});


			buttonStateMachine[linkedRessources[i].identifiant] = StateMachine.create({
				initial: 'State_button_off',
				error: function (eventName, from, to, args, errorCode, errorMessage) {
					window.logger.debug('event ' + eventName + ' raised :- ' + errorMessage);
				},

				events: [
					{ name: 'busyEvent', from: 'State_button_off', to: 'State_normal' },

					{ name: 'freeEvent', from: 'State_normal', to: 'State_button_off' },
					{ name: 'pendingEvent', from: 'State_normal', to: 'State_button_off' },
					{ name: 'customEvent', from: 'State_normal', to: 'State_maintain' },

					{ name: 'customEvent', from: 'State_maintain', to: 'State_delay' },

					{ name: 'timeEvent', from: 'State_delay', to: 'State_normal' },

					{ name: 'freeEvent', from: 'State_maintain', to: 'State_button_off' },
					{ name: 'pendingEvent', from: 'State_maintain', to: 'State_button_off' },
				],
				callbacks: {
					onenterState_button_off: function (event, from, to, msg) {
						SignmeetingCommons.Tools.dispatchEvent("removeCustomButton");
						window.logger.debug("State : " + this.current);
					},

					onenterState_normal: function (event, from, to, msg) {
						SignmeetingCommons.Tools.dispatchEvent("removeCustomButton");
						SignmeetingCommons.Tools.dispatchEvent("addCustomButton", text1);
						if (authOK) {
							SignmeetingCommons.Tools.dispatchEvent("activeCustomButton");
						} else {
							SignmeetingCommons.Tools.dispatchEvent("inactiveCustomButton");
						}
						window.logger.debug("State : " + this.current);
					},
					onenterState_delay: function (event, from, to, msg) {
						SignmeetingCommons.Tools.dispatchEvent("inactiveCustomButton");
						delayNormalTimer = setTimeout(moveToNormal, delayForResumeButton);
						window.logger.debug("State : " + this.current);
						if (authOK) {
							SignmeetingCommons.Tools.dispatchEvent("activeCustomButton");
						} else {
							SignmeetingCommons.Tools.dispatchEvent("inactiveCustomButton");
						}
					},
					onenterState_maintain: function (event, from, to, msg) {
						SignmeetingCommons.Tools.dispatchEvent("removeCustomButton");
						SignmeetingCommons.Tools.dispatchEvent("addCustomButton", text2);
						if (authOK) {
							SignmeetingCommons.Tools.dispatchEvent("activeCustomButton");
						} else {
							SignmeetingCommons.Tools.dispatchEvent("inactiveCustomButton");
						}
						window.logger.debug("State : " + this.current);
					},
				}
			});
		}
	}

	function customEvent() {
		window.logger.debug("customEvent : " + currentRoom);
		if (currentRoom !== "") {
			buttonStateMachine[currentRoom].customEvent();
		}

	}

	function moveToNormal() {
		window.logger.debug("moveToNormal : " + currentRoom);

		if (currentRoom !== "") {
			buttonStateMachine[currentRoom].timeEvent();
		}
	}

	//=================================================================================
	// Event call backs
	function stateFree() {
		window.logger.debug("Statemachine : stateFree");
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].freeEvent();
			buttonStateMachine[currentRoom].freeEvent();
			currentMeetingId = "";
		}
	}

	function statePendingBusy(e) {
		window.logger.debug("Statemachine : statePendingBusy : " + e.detail.toString() + " " + currentRoom);
		currentMeetingId = e.detail.toString();
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].pendingEvent();
			buttonStateMachine[currentRoom].pendingEvent();
		}
	}

	function stateBusy(e) {
		window.logger.debug("Statemachine : stateBusy : " + e.detail.toString());
		currentMeetingId = e.detail.toString();
		if (currentRoom !== "") {
			roomStateMachine[currentRoom].busyEvent();
			buttonStateMachine[currentRoom].busyEvent();
		}
	}

	function roomNameUpdate(e) {
		window.logger.debug("Statemachine : roomNameUpdate : " + e.detail.toString());
		if (currentRoom !== e.detail.toString()) {
			if (delayNormalTimer) {
				clearTimeout(delayNormalTimer);
				if (currentRoom !== "") {
					buttonStateMachine[currentRoom].timeEvent();
				}
				delayNormalTimer = null;
			}

			currentRoom = e.detail.toString();
			currentMeetingId = "";
			clearTimeout(pollingTimer);
			if (!isServerActionActive) pollingTimer = setTimeout(servicePolling, 1000);

			// Have to control custom button on room change
			SignmeetingCommons.Tools.dispatchEvent("removeCustomButton");
			if (buttonStateMachine[currentRoom].current == 'State_normal') SignmeetingCommons.Tools.dispatchEvent("addCustomButton", text1);
			else if (buttonStateMachine[currentRoom].current == 'State_maintain') SignmeetingCommons.Tools.dispatchEvent("addCustomButton", text2);


		}
	}

	//=================================================================================
	// Meeting functions
	function confirmCurrent() {
		window.logger.debug("Statemachine : confirmCurrent " + hostServices.atype + " for " + currentMeetingId);

		try {
			isServerActionActive = true;
			var oldItem = hostServices.parent.getCacheItem(currentMeetingId);

			var newItem = $.extend(true, {}, oldItem);
			var end = new window.top.Date();
			// HOST SYSTEM required this functionality
			newItem.presenceConfirmedDate = end;
			window.logger.debug("Statemachine : Event to confirm : " + newItem.id + " " + newItem.title);

			$.when(
				hostServices.modifyItem(newItem, oldItem))
				.then(
					function (item) {
						window.logger.debug("Statemachine : ############################ ===> MOD done " + item);
						hostServices.restart();
						isServerActionActive = false;
						pollingTimer = setTimeout(servicePolling, pollingFreq);
					},
					function (oError) {
						window.logger.debug("Statemachine : ############################ ===> ERROR " + JSON.stringify(oError, null, "\t"));
						hostServices.restart();
						isServerActionActive = false;
						pollingTimer = setTimeout(servicePolling, pollingFreq);
					}
				);
		}
		catch (ex) {
			window.logger.error("Statemachine : confirmCurrent EX : " + ex);
			isServerActionActive = false;
			pollingTimer = setTimeout(servicePolling, pollingFreq);
		}
	}


	function endCurrent() {
		try {
			isServerActionActive = true;
			var now = new window.top.Date();
			now.setSeconds(0);
			now.setMilliseconds(0);

			var oldItem = hostServices.parent.getCacheItem(currentMeetingId);
			var newItem = $.extend(true, {}, oldItem);
			newItem.startDate = oldItem.startDate;
			newItem.endDate = now;

			window.logger.debug("Statemachine : em.endEvent  ", JSON.stringify(newItem, null, 3));

			$.when(
				hostServices.modifyItem(newItem, oldItem))
				.then(
					function (item) {
						window.logger.debug("Statemachine : ############################ ===> END EVENT done");
						currentMeetingId = "";
						hostServices.restart();
						isServerActionActive = false;
						pollingTimer = setTimeout(servicePolling, pollingFreq);
					},
					function (oError) {
						window.logger.debug("Statemachine : ############################ ===> ERROR " + JSON.stringify(oError, null, "\t"));
						hostServices.restart();
						isServerActionActive = false;
						pollingTimer = setTimeout(servicePolling, pollingFreq);
					}
				);
		}
		catch (ex) {
			window.logger.error("Statemachine : endCurrent EX : " + ex);
			isServerActionActive = false;
			pollingTimer = setTimeout(servicePolling, pollingFreq);
		}
	}
	//=================================================================================
	// REST interface
	function servicePolling() {
		currentConfig = configDistech[currentRoom];
		if (currentConfig !== undefined) sendRESTRequest();
	}

	function processAnswer(rezValue) {
		rezValue = rezValue.toLowerCase();
		window.logger.debug("Statemachine : processAnswer " + rezValue + " for " + currentRoom + " state : " + roomStateMachine[currentRoom].current);

		if (roomStateMachine[currentRoom].current == 'State_pending') {
			if ((rezValue == 'active') && (hostServices.capabilities.confirmPresence)) {
				clearTimeout(pollingTimer);
				SignmeetingCommons.Tools.dispatchEvent("grayButtons");
				confirmCurrent();
			}
		}
		else if (roomStateMachine[currentRoom].current == 'State_busy') {
			if ((rezValue == 'inactive') && (hostServices.capabilities.signalRoomEmpty) &&
				(buttonStateMachine[currentRoom].current === 'State_normal')) {
				clearTimeout(pollingTimer);
				// delNonConfirmed can only be used for NON confirmed MEETINGs
				//SignmeetingCommons.Tools.dispatchEvent("delNonConfirmed",currentMeetingId);
				SignmeetingCommons.Tools.dispatchEvent("grayButtons");
				endCurrent();
			}
		}

	}


	function sendRESTRequest() {

		var url = currentConfig.url + currentConfig.restCall;
		try {
			var xhr = new XMLHttpRequest();
			xhr.addEventListener("error", function (evt) {
				window.logger.error("xmlhttprequest Error : readyState : " + this.readyState + "  status : " + this.status);
			}, false);

			xhr.addEventListener("abort", function (evt) {
				window.logger.error("xmlhttprequest Error : readyState : " + this.readyState + "  status : " + this.status);
			}, false);
			xhr.addEventListener("loadend", function (evt) {

				// window.logger.debug("ANSWER : readyState : " + this.readyState + "  status : " + this.status );
				pollingTimer = setTimeout(servicePolling, pollingFreq);
				if (this.readyState < 300) {
					window.logger.debug("Statemachine : responseText  : " + this.responseText);
					try {
						var rez = JSON.parse(this.responseText);
						window.logger.debug("Statemachine : REZ  : " + rez.value);
						processAnswer(rez.value);
					}
					catch (ex) {
						window.logger.error("Statemachine : EX  : " + ex);
					}
				}

			}, false);
			xhr.open("GET", url, true);
			xhr.setRequestHeader("Accept", "application/json");
			var key = 'Basic ' + btoa(currentConfig.username + ':' + currentConfig.password);
			xhr.setRequestHeader("Authorization", key);
			xhr.send();

		}
		catch (err) {
			window.logger.error(": Exception:" + err);
		}
	}


	window.initStateMachine = initStateMachine;

})();
