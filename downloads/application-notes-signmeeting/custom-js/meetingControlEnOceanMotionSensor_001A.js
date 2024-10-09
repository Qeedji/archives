/**
 * Meeting Control for SignMeeting via the EnOcean Motion Sensor.
 *
 * Configuration:
 *  - pendingFreeDelay: Define the delay prior actually triggering the checkout of the room. It is in milliseconds and default to 15 minutes.
 *
 * Target:
 *  - SMH for now as it uses WpanHubSrv
 *
 * This file is composed of Three classes:
 *  - MeetingControl:
 *    Used for the setup and to drive the meeting checkin/checkout via a state machine for each room and an observer for the sensor events.
 *  - MotionSensorStateMachine:
 *    Used to control the current state of each room
 *    - START: The room has been configured.
 *    - BUSY: The room has been confirmed.
 *    - PENDING: The room has a pending meeting started.
 *    - FREE: The room is available.
 *    Based on the events dispatched by SignMeeting it will update the room state.
 *    In addition, it exposes two methods:
 *    - sensorCheckin: If the room has a pending meeting started, it will check it in immediately.
 *    - sensorCheckout: If the room has a pending or a confirmed meeting, it will check it out after a delay if the room state hasn't change in between.
 *  - WpanSensorObserver:
 *    Used to catch the sensor events and call back the specified method with the occupancy status (available, occupied, unknown) and the room ID.
 */
(function () {
  "use strict";
  var pendingFreeDelay = 15 * 60 * 1000; // Default to 15 minutes.

  function initStateMachine(l_hostServices) {
    var meetingControl = new window.MeetingControl(window.logger, l_hostServices, pendingFreeDelay);
    meetingControl.init();
  }
  window.initStateMachine = initStateMachine;
})();

(function () {
  function MeetingControl(logger, hostServices, pendingFreeDelay) {
    try {
      this._logger = logger;
      this._logger.debug("MeetingControl");
      this._hostServices = hostServices;
      this._buttonStateMachine = new window.MotionSensorStateMachine(hostServices, logger, pendingFreeDelay);
      this._wpanSensorObserver = new window.WpanSensorObserver(logger, this._processSignMeetingAction.bind(this));
    } catch (error) {
      this._logger.errorEx(error);
    }
  }
  MeetingControl.prototype = {
    init() {
      try {
        this._logger.debug("*************** _init ***************");
        if (window.configuration.configuredPlayer.ressources != undefined) {
          this._linkedRessources = window.configuration.configuredPlayer.ressources;
          this._buttonStateMachine.init(this._linkedRessources);
        } else {
          this._logger.error("_linkedRessources undefined");
        }
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _processSignMeetingAction(slateId, occupancyValue) {
      try {
        switch (occupancyValue) {
          case window.EOccupancyStatus.occupied:
            {
              this._buttonStateMachine.sensorCheckin(slateId);
              break;
            }
          case window.EOccupancyStatus.available:
            {
              this._buttonStateMachine.sensorCheckout(slateId);
              break;
            }
          default:
            {
              this._logger.debug("MeetingControl occupancy status Invalid: " + occupancyValue);
              break;
            }
        }
      } catch (error) {
        this._logger.errorEx(error);
      }
    }
  };
  window.MeetingControl = MeetingControl;
})();

(function () {
  const STATE = {
    START: "State_start",
    BUSY: "State_busy",
    PENDING: "State_pending",
    FREE: "State_free"
  };

  function MotionSensorStateMachine(hostServices, logger, pendingFreeDelay) {
    this._hostServices = hostServices;
    this._logger = logger;
    this._pendingFreeDelay = pendingFreeDelay;
    this._roomStateMachine = {};
    this._currentRoom = "";
    this._currentMeetingId = "";
  }
  MotionSensorStateMachine.prototype = {
    init(linkedRessources) {
      // Events from eventsManager
      SignmeetingCommons.Tools.addEventListener("roomFree", this._onStateFree.bind(this));
      SignmeetingCommons.Tools.addEventListener("roomPendingBusy", this._onStatePendingBusy.bind(this));
      SignmeetingCommons.Tools.addEventListener("roomBusy", this._onStateBusy.bind(this));
      SignmeetingCommons.Tools.addEventListener("roomUpdate", this._onRoomNameUpdate.bind(this));

      if (linkedRessources.length == 1) {
        this._currentRoom = linkedRessources[0].identifiant;
      }

      var logger = this._logger;
      for (var i = 0; i < linkedRessources.length; i++) {
        logger.debug("initStateMachine : " + linkedRessources[i].identifiant);
        this._roomStateMachine[linkedRessources[i].identifiant] = window.StateMachine.create({
          initial: STATE.START,
          error(eventName, from, to, args, errorCode, errorMessage) {
            logger.error("event: " + eventName + " raised: " + errorMessage);
          },
          events: [
            { name: 'busyEvent', from: STATE.START, to: STATE.BUSY },
            { name: 'pendingEvent', from: STATE.START, to: STATE.PENDING },
            { name: 'freeEvent', from: STATE.START, to: STATE.FREE },

            { name: 'pendingEvent', from: STATE.FREE, to: STATE.PENDING },
            { name: 'busyEvent', from: STATE.FREE, to: STATE.BUSY },

            { name: 'pendingEvent', from: STATE.BUSY, to: STATE.PENDING },
            { name: 'freeEvent', from: STATE.BUSY, to: STATE.FREE },

            { name: 'busyEvent', from: STATE.PENDING, to: STATE.BUSY },
            { name: 'freeEvent', from: STATE.PENDING, to: STATE.FREE },
          ],
          callbacks: {
            onenterState_start() {
              logger.debug("State: " + this.current);
            },
            onenterState_busy() {
              logger.debug("State: " + this.current);
              if (this._pendingFreeEventTimer) {
                clearTimeout(this._pendingFreeEventTimer);
                this._pendingFreeEventTimer = undefined;
              }
            },
            onenterState_pending() {
              logger.debug("State: " + this.current);
              if (this._pendingFreeEventTimer) {
                clearTimeout(this._pendingFreeEventTimer);
                this._pendingFreeEventTimer = undefined;
              }
            },
            onenterState_free() {
              logger.debug("State: " + this.current);
              this.clearPendingTimer();
            },
            clearPendingTimer() {
              if (this._pendingFreeEventTimer) {
                clearTimeout(this._pendingFreeEventTimer);
                this._pendingFreeEventTimer = undefined;
              }
            }
          }
        });
      }
    },
    sensorCheckin(slateId) {
      this._logger.debug("sensorCheckin slateId: " + slateId);
      var roomId = this._convertSlateIdToRoomId(slateId);
      var currentRoomStateMachine = this._roomStateMachine[roomId];
      this._logger.debug("sensorCheckin roomId: " + roomId + " currentRoomStateMachine: " + currentRoomStateMachine);
      if (currentRoomStateMachine) {
        this._logger.debug("currentRoomStateMachine current: " + currentRoomStateMachine.current + " currentMeetingId: " + currentRoomStateMachine._currentMeetingId);
        if (currentRoomStateMachine._currentMeetingId) {
          var meeting = this._hostServices.parent.getCacheItem(currentRoomStateMachine._currentMeetingId);
          if (meeting) {
            this._logger.debug("sensorCheckin has meeting presenceConfirmDate: " + meeting.presenceConfirmedDate);
          } else {
            this._logger.debug("sensorCheckin no meeting found");
          }
        }
        currentRoomStateMachine.clearPendingTimer();
        if (currentRoomStateMachine.current === STATE.PENDING) {
          this._checkin(roomId, currentRoomStateMachine._currentMeetingId);
        }
      }
    },
    sensorCheckout(slateId) {
      this._logger.debug("sensorCheckout slateId: " + slateId);
      var roomId = this._convertSlateIdToRoomId(slateId);
      var currentRoomStateMachine = this._roomStateMachine[roomId];
      this._logger.debug("sensorCheckout roomId: " + roomId + " currentRoomStateMachine: " + currentRoomStateMachine);
      if (currentRoomStateMachine) {
        this._logger.debug("currentRoomStateMachine current: " + currentRoomStateMachine.current + " currentMeetingId: " + currentRoomStateMachine._currentMeetingId);
      }
      if (
        currentRoomStateMachine &&
        !currentRoomStateMachine._pendingFreeEventTimer &&
        (currentRoomStateMachine.current === STATE.BUSY || currentRoomStateMachine.current === STATE.PENDING)
      ) {
        this._logger.debug("sensorCheckout timer triggered for roomId: " + roomId);
        var handler = this._checkout.bind(this, roomId, currentRoomStateMachine._currentMeetingId);
        currentRoomStateMachine._pendingFreeEventTimer = setTimeout(handler, this._pendingFreeDelay);
      }
    },
    _convertSlateIdToRoomId(slateId) {
      var roomId = window.labelAddons.findTicketRoomId(slateId);
      if (roomId.length === 0) {
        this._logger.error("MotionSensorStateMachine::_convertSlateIdToRoomId - Invalid slateId: " + slateId);
      }
      return roomId;
    },
    _checkin(roomId, currentMeetingId) {
      var hostServices = this._hostServices;
      var logger = this._logger;
      logger.debug("_checkin for room: " + roomId + " currentMeetingId: " + currentMeetingId);
      if (currentMeetingId) {
        try {
          var oldItem = hostServices.parent.getCacheItem(currentMeetingId);
          var newItem = $.extend(true, {}, oldItem);
          var end = new window.top.Date();
          // HOST SYSTEM required this functionality
          newItem.presenceConfirmedDate = end;
          logger.debug("Event to confirm : " + newItem.id + " " + newItem.title);

          $.when(
            hostServices.modifyItem(newItem, oldItem))
            .then(
              function (item) {
                logger.debug("hostServices.modifyItem done: " + item);
                hostServices.restart();
              },
              function (oError) {
                logger.errorEx(oError);
                hostServices.restart();
              }
            );
        } catch (error) {
          logger.errorEx(error);
        }
      } else {
        logger.debug("_checkin: no current meeting to confirm");
      }
    },
    _checkout(roomId, currentMeetingId) {
      var hostServices = this._hostServices;
      var logger = this._logger;
      logger.debug("checkout for room: " + roomId + " currentMeetingId: " + currentMeetingId);
      if (currentMeetingId) {
        try {
          var itemToEnd = hostServices.parent.getCacheItem(currentMeetingId);
          $.when(
            hostServices.endItem(itemToEnd))
            .then(
              function () {
                hostServices.restart();
              },
              function (oError) {
                logger.errorEx(oError);
                hostServices.restart();
              }
            );
        } catch (error) {
          logger.errorEx(error);
        }
      } else {
        logger.debug("checkout: no current meeting to end");
      }
    },
    _onStateFree(event) {
      this._logger.debug(
        "Statemachine - stateFree" +
        " currentRoom: " + this._currentRoom +
        " currentMeetingId: " + event.detail.toString()
      );
      var currentRoomState = this._roomStateMachine[this._currentRoom];
      if (currentRoomState) {
        if (currentRoomState.current !== STATE.FREE) {
          currentRoomState.freeEvent();
        }
        currentRoomState._currentMeetingId = "";
      }
    },
    _onStatePendingBusy(event) {
      this._logger.debug(
        "Statemachine - statePendingBusy" +
        " currentRoom: " + this._currentRoom +
        " currentMeetingId: " + event.detail.toString()
      );
      var currentRoomState = this._roomStateMachine[this._currentRoom];
      if (currentRoomState) {
        if (currentRoomState.current !== STATE.PENDING) {
          currentRoomState.pendingEvent();
        }
        currentRoomState._currentMeetingId = event.detail.toString();
      }
    },
    _onStateBusy(event) {
      var currentMeetingId = event.detail.toString();
      this._logger.debug(
        "Statemachine - stateBusy" +
        " currentRoom: " + this._currentRoom +
        " currentMeetingId: " + currentMeetingId
      );
      var currentRoomState = this._roomStateMachine[this._currentRoom];
      if (currentRoomState) {
        var isAlreadyConfirmedState = window.calendarServices.isAlreadyConfirmedState(currentMeetingId);
        this._logger.debug(
          "Statemachine - stateBusy" +
          " isAlreadyConfirmedState: " + isAlreadyConfirmedState
        );
        if (currentRoomState.current !== STATE.BUSY && isAlreadyConfirmedState == 2) {
          currentRoomState.busyEvent();
        }
        currentRoomState._currentMeetingId = currentMeetingId;
      }
    },
    _onRoomNameUpdate(event) {
      this._logger.debug(
        "Statemachine - roomNameUpdate" +
        " currentRoom: " + this._currentRoom +
        " newRoom: " + event.detail.toString()
      );
      this._currentRoom = event.detail.toString();
    }
  };
  window.MotionSensorStateMachine = MotionSensorStateMachine;
})();

(function () {
  const ID_MASK = 0XFFF; // Mask to retrieve Slate ID from event

  // Enum to represent the occupancy status sent by the sensor.
  const EOccupancyStatus = {
    available: 1,
    occupied: 2,
    invalid: 3,
  };

  function WpanSensorObserver(logger, occupancyCallback) {
    this._logger = logger;
    this._callback = occupancyCallback;
    this._avoidRepetition = false;
    this._initSensorListener();
  }
  WpanSensorObserver.prototype = {
    _initSensorListener() {
      try {
        this._logger.debug("WpanSensorObserver::_initSensorListener");
        window.top.focus();
        if (window.wpanHubSrv) {
          var self = this;
          wpanHubSrv.addListener(function (event) {
            try {
              self._onEvent(event);
            } catch (error) {
              self._logger.errorEx(error);
            }
          });
        } else {
          this._logger.debug("WpanHubSrv doesn't exist");
        }
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _onEvent(event) {
      try {
        if (!this._avoidRepetition) {
          var id = -1;
          var domLocationWpanSensor = event.DOM_LOCATION_SENSOR || 0x8000000;
          if (event.location & domLocationWpanSensor) {
            id = event.location & ID_MASK;
            if (event.dataPayload == undefined) {
              this._logger.debug("Event device id: " + id);
            } else {
              this._logger.debug("Event device id: " + id + " and payload: " + event.dataPayload);
              this._parsePayload(id, event.dataPayload);
            }
            this._avoidRepetition = true;
            var self = this;
            setTimeout(function () { self._avoidRepetition = false; }, 200);
          }
        }
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _parsePayload(slateId, payloadString) {
      try {
        var payloadPointer = 0;
        while (payloadPointer < payloadString.length) {
          var sensorEndPos = this._parseSensor(slateId, payloadString.substring(payloadPointer, payloadString.length));
          if (sensorEndPos == 0) {
            this._logger.debug("sensorEndPos == 0");
            break;
          }
          payloadPointer += sensorEndPos;
        }
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _parseSensor(slateId, leftCuttedPayloadStringtring) {
      try {
        var data_descriptor_str = leftCuttedPayloadStringtring.substring(0, 2);
        var data_descriptor_int = parseInt(data_descriptor_str, 16);
        var data_size_int = (data_descriptor_int & 0xC0) >> 6;
        var data_type_int = data_descriptor_int & 0x3F;

        var sensor_string;
        if (data_size_int == 0) {
          sensor_string = leftCuttedPayloadStringtring.substring(2, 4);
          endPos = 4;
        } else if (data_size_int == 1) {
          sensor_string = leftCuttedPayloadStringtring.substring(2, 6);
          endPos = 6;
        } else if (data_size_int == 2) {
          sensor_string = leftCuttedPayloadStringtring.substring(2, 10);
          endPos = 10;
        } else if (data_size_int == 3) {
          //Extended size
          let sensor_length = leftCuttedPayloadStringtring.substring(2, 4);
          this._logger.debug("Extended size " + sensor_length + " not managed yet");
          return 0;
        } else {
          this._logger.error("impossible data_size value");
          return 0;
        }

        sensor_string = this._changeEndianness(sensor_string);
        if (data_type_int == 0x20) {
          var occupancy_status = parseInt(sensor_string, 16);
          var occupancyValue = EOccupancyStatus.invalid;
          if (occupancy_status == 0x01) {
            occupancyValue = EOccupancyStatus.available;
          } else if (occupancy_status == 0x02) {
            occupancyValue = EOccupancyStatus.occupied;
          }
          this._callback(slateId, occupancy_status);
        }
        return endPos;
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _changeEndianness(string) {
      try {
        const result = [];
        let len = string.length - 2;
        while (len >= 0) {
          result.push(string.substr(len, 2));
          len -= 2;
        }
        return result.join('');
      } catch (error) {
        this._logger.errorEx(error);
      }
    },
    _signedHexStrToInt(hexStr) {
      try {
        var tmp = parseInt(hexStr, 16);
        if ((tmp & 0x8000) > 0) {
          tmp = tmp - 0x10000;
        }
        return tmp;
      } catch (error) {
        this._logger.errorEx(error);
      }
    }
  };
  window.WpanSensorObserver = WpanSensorObserver;
  window.EOccupancyStatus = EOccupancyStatus;
})();