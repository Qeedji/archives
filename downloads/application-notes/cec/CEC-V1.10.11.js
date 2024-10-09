(function () {
  "use strict";

  /**
   ****************************************BEGIN EDIT*********************************************************
   */

    /* Standby mode (hours:minutes) */
  	var standbyTime = "18:00";

  	/* Wake up the screen (hours:minutes) */
  	var onTime = "9:00";

  	/* Set active HDMI source (hours:minutes)*/
  	var activeSrcTime = "9:01";

  /**
   ****************************************END EDIT***********************************************************
   */




  var DEBUG = false;
  var system;
  var cecList;
  const Ci = Components.interfaces;
  var cecNb;
  var cec;
  var phyAddress;
  var logger;
  var primary = {};

  function LOG(msg) {
    if (DEBUG) {
      if (logger === undefined) {
        if (window.log4Service) {
          logger = log4Service.getLogger("widget");
        } else {
          logger = console;
        }
      }
      logger.debug("Allianz : " + msg, null);
    }
  }

  function init() {
    LOG("init");
    try {
      LOG("Starting...");
      getCecFunctions();
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }


  function load() {
    LOG("Chargement ...");
    setTimeout(init, 500);
    setTimeout(AddObserver, 1000);
    setTimeout(GetPlugStatus, 1100);
    setTimeout(GetLogicalAddresses, 1500);

    var standbyTimeTarget = CreateDate(standbyTime);
    var onTimeTarget = CreateDate(onTime);
    var activeSrcTimeTarget = CreateDate(activeSrcTime);

    var diffStandby = standbyTimeTarget - Date.now();
    var diffOn = onTimeTarget - Date.now();
    var diffSrc = activeSrcTimeTarget - Date.now();

    if (diffStandby >= 0) {
      setTimeout(SetStandbyTV, diffStandby);
    }

    if (diffOn >= 0) {
      setTimeout(SetPowerOnTV, diffOn);
      setTimeout(SetPowerOnTV, diffOn + 10000);
      setTimeout(SetPowerOnTV, diffOn + 20000);
    }

    if (diffSrc >= 0) {
      setTimeout(SetActiveSource, diffSrc);
    }

    LOG("Standby in: " + diffStandby / 1000 + "s");
    LOG("Screen On in: " + diffOn / 1000 + "s");
    LOG("Change src in: " + diffSrc / 1000 + "s");

  }

  function CreateDate(stringHours) {
    var result = new Date();
    var timeTarget = parseTime(stringHours);
    result.setHours(timeTarget.hours);
    result.setMinutes(timeTarget.minutes);
    return result;
  }

  function parseTime(inTime) {
    var outTime = null;
    var regExpOutput = inTime.match(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])$/);
    if (regExpOutput && regExpOutput.length === 3) {
      outTime = {
        hours: regExpOutput[1],
        minutes: regExpOutput[2]
      };
    }
    return outTime;
  }


  function getCecFunctions() {
    try {
      system = window.systemManager;
      cecList = system.getAdaptersByIId(Ci.nsISystemAdapterCec);
      LOG("cecList.length = " + cecList.length);
      cecNb = cecList.length;
      for (var i = 0; i < cecNb; i++) {
        cec = cecList.queryElementAt(i, Ci.nsISystemAdapterCec);
        var connectorsList = cec.connectors;
        var connector = connectorsList.queryElementAt(0, Ci.nsISystemConnector);
        LOG("cec.sysPath = " + cec.sysPath);
        LOG("cec.connectorId = " + connector.id);
        LOG("cec.connectorLabel = " + connector.label);
      }
      cec = cecList.queryElementAt(0, Ci.nsISystemAdapterCec);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function GetPlugStatus() {
    try {
      LOG("Get plug status...");
      let sinkStatus = cec.isSinkConnected;
      let sourceStatus = cec.isSourceConnected;

      if (sinkStatus == true) {
        GetPhysicalAddress()
      } else {
        ClearPhysicalAddress()
      }
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function GetPhysicalAddress() {
    try {
      phyAddress = cec.getPhysicalAddress();
      let printableAddress = phyAddress.toString(16);
      let printableAddressWithPoints = [printableAddress.slice(0, 1), ".", printableAddress.slice(1, 2), ".", printableAddress.slice(2, 3), ".", printableAddress.slice(3, 4)].join('');
      LOG("Physical address : " + printableAddressWithPoints);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function ClearPhysicalAddress() {
    try {
      phyAddress = [15, 15, 15, 15];
      LOG("Physical address : " + "None");
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function GetLogicalAddresses() {
    try {
      let logicalAddressList = cec.getLogicalAddresses(primary);
      LOG("Primary device : " + primary.value);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function messageEventHandler(event) {
    try {
      let aEventType = event.type;
      let aEventSource = event.source;
      let aEventDestination = event.dest;
      let aError;

      if (aEventType == "sendMsgResult") {
        if (event.exchangeStatus == Ci.nsIGktEventMsg.CEC_NO_ERROR) {
          aError = "CEC_NO_ERROR";
        } else if (event.exchangeStatus == Ci.nsIGktEventMsg.CEC_TX_ERROR) {
          aError = "CEC_TX_ERROR";
        } else if (event.exchangeStatus == Ci.nsIGktEventMsg.CEC_RX_TIMEOUT) {
          aError = "CEC_RX_TIMEOUT";
        } else if (event.exchangeStatus == Ci.nsIGktEventMsg.CEC_RX_ERROR) {
          aError = "CEC_RX_ERROR";
        }
        LOG(aEventType + " (" + aError + ") " + aEventSource + "=>" + aEventDestination);
      } else if (aEventType == "receiveMsg") {
        if (event.exchangeStatus == Ci.nsIGktEventMsg.CEC_NO_ERROR) {
          aError = "CEC_NO_ERROR";
          var stringMessage = event.byteRxMessage

          var printableArray = [];
          for (let i = 0; i < stringMessage.length; i++) {
            printableArray.push(stringMessage.charCodeAt(i));
          }

          var printableHexString = "";
          for (let i = 0; i < printableArray.length; i++) {
            var printableHex = printableArray[i].toString(16).toUpperCase();
            if (printableHex.length == 1) {
              printableHex = "0" + printableHex;
            }
            printableHexString = printableHexString + printableHex + " ";
          }
          LOG(aEventType + " (" + aError + ") " + aEventSource + "=>" + aEventDestination + " message : " + printableHexString);
        } else {
          LOG("receiveMsg error");
        }
      }
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function SetActiveSource() {
    try {
      LOG("Set active source");
      let printableAddress = phyAddress.toString(16);
      let MsbPhy = parseInt(printableAddress.slice(0, 2), 16);
      let LsbPhy = parseInt(printableAddress.slice(2, 4), 16);
      var bytesMessage = [0x82, MsbPhy, LsbPhy].map(function (a) {
        return String.fromCharCode(a);
      }).join("");
      cec.sendMsg(primary.value, cec.CECDEVICE_BROADCAST, bytesMessage, false, 0, messageEventHandler);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function SetStandbyTV() {
    try {
      LOG("Put TV in standby mode...");
      var bytesMessage = [0x36].map(function (a) {
        return String.fromCharCode(a);
      }).join("");
      cec.sendMsg(primary.value, cec.CECDEVICE_TV, bytesMessage, false, 0, messageEventHandler);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function SetPowerOnTV() {
    try {
      LOG("Power on the TV");
      var bytesMessage = [0x04].map(function (a) {
        return String.fromCharCode(a);
      }).join("");
      cec.sendMsg(primary.value, cec.CECDEVICE_TV, bytesMessage, false, 0, messageEventHandler);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function connectionEventHandler(event) {
    try {
      let aEventType = event.type;
      if (aEventType == "sinkPlug") {
        if (event.isConnected == true) {
          GetPhysicalAddress();
        } else {
          ClearPhysicalAddress();
        }
      }
      GetLogicalAddresses();
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  function AddObserver() {
    try {
      cec.addObserver(connectionEventHandler);
    } catch (ex) {
      LOG("Exception : " + ex);
    }
  }

  if (window.addEventListener)
    window.addEventListener("load", load, false);
  else if (window.attachEvent)
    window.attachEvent("onload", load);
  else window.onload = load;

}).call(this);
