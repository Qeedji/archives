/**
 * Meetingroom door control : SignMeeting : Requea : GIDE
 *
 * LDAP : check that badge ID (extensionAttribute8) corresponds get attributes : mail and department.
 *
 * If authorized user is the current meeting organizer, active the open door button for the duration of the meeting.
 * else if the user is a memeber of one of the department authorised to have access active the open door button for a specific duration
 *
 * Version: 1.13.11
 */

(function () {
	"use strict";

	//================================================================================
	// Change as required
	//================================================================================
	// Time the button is active for non organizers
	var delayMaintenanceDoor = (1 * 60 * 1000);   //ms
	// Time before start of a meeting that the door can be opened
	var timeBeforeMeeting = (15 * 60 * 1000); 	  // 15 mins FRD
	// Time after the end of the meeting that keep the door open
	var timeAfterMeeting = (1 * 60 * 1000);

	// Text that is displayed on the button
	var buttonText = "Déverrouiller la porte"; // FRD
	// List of departments that can open the door (outwith organizer content)
	var departementsOpen = ['ALG','ARB','BRU','CAI','CAS','COM','CPC','CPT','DEE','DOC','DRH','FA','FEL','FIN','FIS','HCM','IBE','INF','IST','LDN','MOC','MTA','NRA','NYO','OFI','PEK','PFI','PIC','PUC','SGX','SHA','SOC','TEH','TUN','WAR']; // FRD

	// GPIO index for Writing
	var writeGPIOIndex = 1;
	// GPIO duration that the GPIO is kept active
	var durationGPIOPulse = 1000; // ms FRD

	//================================================================================
	var badgeEmail = "";
	var currentRoom = "";
	var currentMeetingId = "";
	var lookupMeetingId;
	var departement = "";

	var hostServices;

	var doorStateMachine;
	var roomStateMachine;

	var delayMaintenanceTimer = null;
	var delayOrganizerTimer = null;
	var GPIOPulseTimer = null;
	var isFutureMeeting = false;
	var isFutureOpenDoor = false;
	var isOraganizer = false;

	//const CompInt = Components.interfaces; // - FRD
	const CompInt = window.Components ? Components.interfaces : {}; // + FRD

	//================================================================================
	// Statemachine
	function initStateMachine(l_hostServices) {
		hostServices = l_hostServices;

		// Events from eventsManager
		SignmeetingCommons.Tools.addEventListener("roomFree", eventFree);
		SignmeetingCommons.Tools.addEventListener("roomPendingBusy", eventPendingBusy);
		SignmeetingCommons.Tools.addEventListener("roomBusy", eventBusy);
		SignmeetingCommons.Tools.addEventListener("roomUpdate", roomNameUpdate);
		SignmeetingCommons.Tools.addEventListener("customEvent", customEvent);
		SignmeetingCommons.Tools.addEventListener("authOK", userAuthenticate);

		window.logger.debug("MeetingControlDoor : initStateMachine");

		// Add button and set to inactive
		SignmeetingCommons.Tools.dispatchEvent("addCustomButton", buttonText);

		roomStateMachine = StateMachine.create({
			initial: 'State_start',
			error: function (eventName, from, to, args, errorCode, errorMessage) {
				window.logger.debug('event ' + eventName + ' raised :- ' + errorMessage);
			},

			events: [
				{ name: 'busyEvent', from: 'State_start', to: 'State_busy' },
				{ name: 'freeEvent', from: 'State_start', to: 'State_free' },
				{ name: 'busyEvent', from: 'State_free', to: 'State_busy' },
				{ name: 'freeEvent', from: 'State_busy', to: 'State_free' },
				{ name: 'changeBusyEvent', from: 'State_busy', to: 'State_change' },
				{ name: 'busyEvent', from: 'State_change', to: 'State_busy' },
			],
			callbacks: {
				onenterState_free: function (event, from, to, msg) {
					window.logger.debug("Statemachine (ROOM) : onenterState_free : currentRoom " + currentRoom);
					if (isFutureOpenDoor) {
					} else {
						if (doorStateMachine.current == 'State_door_organizer') {
							delayOrganizerTimer = setTimeout(closeDoorOrg, timeAfterMeeting);
						}
					}

				},
				onenterState_busy: function (event, from, to, msg) {
					window.logger.debug("Statemachine : onenterState_busy : " + isFutureOpenDoor + " " + currentMeetingId + " == " + lookupMeetingId);

					// if have the current open was done in future
					if (isFutureOpenDoor) {
						isFutureOpenDoor = false;
					} else {
						delayOrganizerTimer = setTimeout(closeDoorOrg, timeAfterMeeting);
					}
				},

				onenterState_change: function (event, from, to, msg) {
					window.logger.debug("Statemachine : onenterState_change : " + isFutureOpenDoor + " " + currentMeetingId + " == " + lookupMeetingId);
					roomStateMachine.busyEvent();
				},
			}
		});

		doorStateMachine = StateMachine.create({
			initial: 'State_init',
			error: function (eventName, from, to, args, errorCode, errorMessage) {
				window.logger.debug('Statemachine (DOOR) : event ' + eventName + ' raised :- ' + errorMessage);
			},

			events: [
				{ name: 'authMaintenanceEvent', from: 'State_init', to: 'State_door_maintenance' },
				{ name: 'authOrganizerEvent', from: 'State_init', to: 'State_door_organizer' },
				{ name: 'authOrganizerEvent', from: 'State_door_maintenance', to: 'State_door_organizer' },

				{ name: 'finishAfterEndEvent', from: 'State_door_organizer', to: 'State_init' },
				{ name: 'timeoutMaintenanceEvent', from: 'State_door_maintenance', to: 'State_init' },
			],
			callbacks: {

				onenterState_init: function (event, from, to, msg) {
					//badgeEmail = ""; // FRD
					//SignmeetingCommons.Tools.dispatchEvent("inactiveCustomButton"); //FRD
					SignmeetingCommons.Tools.dispatchEvent("activeCustomButton"); // FRD																																																												  
					clearTimeout(delayMaintenanceTimer);
					clearTimeout(delayOrganizerTimer);
					delayMaintenanceTimer = null;
					delayOrganizerTimer = null;
					window.logger.debug("State : " + this.current);
				},
				onenterState_door_maintenance: function (event, from, to, msg) {
					window.logger.debug("State : " + this.current);
					SignmeetingCommons.Tools.dispatchEvent("activeCustomButton");
					delayMaintenanceTimer = setTimeout(closeDoor, delayMaintenanceDoor);
				},
				onenterState_door_organizer: function (event, from, to, msg) {
					clearTimeout(delayOrganizerTimer);
					delayOrganizerTimer = null;

					SignmeetingCommons.Tools.dispatchEvent("activeCustomButton");
					window.logger.debug("State : " + this.current);
				},
			}
		});

	}

	//=================================================================================
	// Manage current room state and Meeting ID.
	// Filter events from EVENTSMANAGER to get real change
	// for open/close DOOR don't require notion of pending state
	function eventFree() {
		window.logger.debug("Statemachine : eventFree : currentRoom " + currentRoom);
		if (currentMeetingId != "") {
			currentMeetingId = "";
			roomStateMachine.freeEvent();
		}
	}

	function eventBusy(e) {
		window.logger.debug("Statemachine : eventBusy : new : " + e.detail.toString() + " current : " + currentMeetingId);

		if (currentMeetingId != e.detail.toString()) {
			if (currentMeetingId == "") {
				currentMeetingId = e.detail.toString();
				roomStateMachine.busyEvent();
			} else if (currentMeetingId != e.detail.toString()) {
				currentMeetingId = e.detail.toString();
				roomStateMachine.changeBusyEvent();
			}
		}
	}
	function eventPendingBusy(e) {
		window.logger.debug("Statemachine : eventPendingBusy : new : " + e.detail.toString() + " current : " + currentMeetingId);
		if (currentMeetingId != e.detail.toString()) {
			if (currentMeetingId == "") {
				currentMeetingId = e.detail.toString();
				roomStateMachine.busyEvent();
			} else if (currentMeetingId != e.detail.toString()) {
				currentMeetingId = e.detail.toString();
				roomStateMachine.changeBusyEvent();
			}
		}
	}

	function roomNameUpdate(e) {
		window.logger.debug("Statemachine : roomNameUpdate : " + e.detail.toString());
		if (currentRoom !== e.detail.toString()) {
			currentRoom = e.detail.toString();
		}
	}

	//=================================================================================

	function userAuthenticate(event) {
		try {
			var doCheckDepartement = true;
			departement = "";

			SignmeetingCommons.Tools.removeEventListener("authOK", userAuthenticate);
			SignmeetingCommons.Tools.dispatchEvent("authRefused", "");

			if (event.detail) {
				badgeEmail = event.detail.info1;
			}
			window.logger.debug("Statemachine : userAuthenticate : eMail : " + badgeEmail + " departement : " + SignmeetingCommons.idControlModule.ldapParam.optBadgeAttr[0].data);

			if ((SignmeetingCommons.idControlModule.ldapParam !== null) &&
				SignmeetingCommons.idControlModule.ldapParam.optBadgeActive &&
				SignmeetingCommons.idControlModule.ldapParam.optBadgeAttr[0].isActive) {
				departement = SignmeetingCommons.idControlModule.ldapParam.optBadgeAttr[0].data;
			}

			lookupMeetingId = currentMeetingId;
			lookForMeetings();
			window.logger.debug("Statemachine : userAuthenticate : lookupMeetingId " + lookupMeetingId);

			checkOrganizer();
		}
		catch (ex) {
			window.logger.error("Statemachine : userAuthenticate EX : " + ex);
		}
	}

	function checkFinal() {
		if (isOraganizer) {
			SignmeetingCommons.Tools.dispatchEvent("authOK", "");
			if (isFutureMeeting) {
				if (delayOrganizerTimer) {
					clearTimeout(delayOrganizerTimer);
					delayOrganizerTimer = null;
				} else {
					isFutureOpenDoor = true;
				}
			}
			if (doorStateMachine.current !== 'State_door_organizer') {
				doorStateMachine.authOrganizerEvent();
			}
		} else {
			checkDepartement();
		}
		SignmeetingCommons.Tools.addEventListener("authOK", userAuthenticate);
	}

	function checkDepartement() {

		window.logger.debug("Statemachine : checkDepartement : isFutureMeeting " + isFutureMeeting + " : " + currentMeetingId);
		// If have current or "near" future meetings
		if ((isFutureMeeting) || (currentMeetingId != "")) {
			SignmeetingCommons.idControlModule.disconnect();
			// the banner waits 700ms before displaying Connect ICON
			setTimeout(function () { SignmeetingCommons.Tools.dispatchEvent("authDisconnect", ""); }, 705);
		} else {
			SignmeetingCommons.Tools.dispatchEvent("authOK", "");
		}


		if (departementsOpen.indexOf(departement) != -1) {
			doorStateMachine.authMaintenanceEvent();
		}
	}

	function checkOrganizer() {
		try {

			var currentMeeting = hostServices.parent.getCacheItem(lookupMeetingId);
			isOraganizer = false;
			window.logger.debug("Statemachine : checkOrganizer : currentMeeting : " + currentMeeting);
			if (currentMeeting) {
				window.logger.debug("Statemachine : checkOrganizer : " + currentMeeting.organizer.commonName + " " + currentMeeting.organizer.id);
				var user = currentMeeting.organizer.commonName;
				$.when(
					hostServices.getUserInfo(currentMeeting.organizer.id, true))
					.then(
						function (organizerEmail) {
							window.logger.debug("Statemachine : ############################ ===> checkOrganizer " + organizerEmail);
							if (badgeEmail == organizerEmail) {
								isOraganizer = true;
							}
							checkFinal();

						},
						function (oError) {
							window.logger.debug("Statemachine : ############################ ===> ERROR " + JSON.stringify(oError, null, "\t"));
							checkFinal();
						}
					);
			} else {
				checkFinal();
			}
		}
		catch (ex) {
			window.logger.error("Statemachine : checkOrganizer EX : " + ex);
		}

	}

	// Have to look if in the next "timeBeforeMeeting" ms is there is a future meeting
	function lookForMeetings() {
		try {
			isFutureMeeting = false;

			var startDate = new window.top.Date();
			startDate.setHours("0", "0", 0, 0);
			var endDate = new window.top.Date();
			endDate.setDate(startDate.getDate() + 1);
			endDate.setHours("23", "59", 0, 0);

			var meetings = hostServices.parent.getItemsFromMemoryCache(startDate, endDate, [currentRoom]);
			var idx;

			meetings = meetings.cache;

			window.logger.debug("Statemachine : lookForMeetings : LGT : " + meetings.length);

			var now = new window.top.Date().getTime();
			var diff;

			for (idx in meetings) {
				diff = meetings[idx].startDate.getTime() - now;
				if ((diff > 0) && (diff <= timeBeforeMeeting)) {
					window.logger.debug("Statemachine : meetings : FOUND FUTURE MEETING : ID " + meetings[idx].id + " " + delayOrganizerTimer);
					window.logger.debug("Statemachine : meetings : FOUND FUTURE MEETING : in " + (diff / (60 * 1000)) + " mins");
					lookupMeetingId = meetings[idx].id;
					isFutureMeeting = true;
					break;
				}
			}
		}
		catch (ex) {
			window.logger.error("Statemachine : lookForMeetings EX : " + ex);
		}

	}

	//=================================================================================
	// GPIO
	function customEvent() {
		window.logger.debug("customEvent : " + currentRoom);

		if (doorStateMachine.current == 'State_door_organizer') {
			window.logger.debug("customEvent : State_door_organizer");
			openDoor();
		} else if (doorStateMachine.current == 'State_door_maintenance') {
			window.logger.debug("customEvent : State_door_maintenance");
			openDoor();
		}
		openDoor(); // FRD			   
	}

	function openDoor() {
		clearTimeout(GPIOPulseTimer);
		writeGPIO(writeGPIOIndex, true);
		GPIOPulseTimer = setTimeout(function () { writeGPIO(writeGPIOIndex, false); }, durationGPIOPulse);
	}

	function closeDoor() {
		doorStateMachine.timeoutMaintenanceEvent();
	}

	function closeDoorOrg() {
		doorStateMachine.finishAfterEndEvent();
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


	window.initStateMachine = initStateMachine;

})();
