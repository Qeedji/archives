
//===========================================================================================
// This script is aimed at being used as a Playout script to launch a sequence after receiveing a UDP message.
//
// Script description :
// --------------------
//
// 1. The script listens to a UDP message on a specific port.
// 2. When a message is received, it changes the value of a Playzilla variable named "play" to set it to "true". (the variable name can be changed through EXPECTED_UDP_MESSAGE)
// 3 It then listens to the "play" variable value change, waiting or it to switch to "false" (Screen Composer has to be configured so that Playzilla does this action, for example when the media is finished)
// 4 It then sends a UDP multicast message (if the script constant ENABLE_SEND_MESSAGE_AFTER_SEQUENCE has been configured to true)
//
// Screen Composer configuration
// -----------------------------
// - in "my repository", import the medias you want to play.
// - in "my variables", create a boolean variable named "play".
// - set default value to false
// - drag drop variable in Scenario --> Playzilla --> Variables. Choose true when prompted for condition.
// - drag drop medias you want to play on "Begin" (below condition)
// - drag drop the "play" variable after the medias sequence, to reset the variable to "false".
// - drag drop script variable-by-udp.js in "Scripts to execute" tab.
//===========================================================================================
// VERSION 1.10.10
//===========================================================================================
// Variables
//===========================================================================================

// local player constants
const UDP_LOCAL_PORT = 49152;
const LOCAL_MULTICAST_GROUP = "224.1.5.5";
const EXPECTED_UDP_MESSAGE = "play";

// remote player constants
const ENABLE_SEND_MESSAGE_AFTER_SEQUENCE = false;
const UDP_MESSAGE_TO_SEND = "play";
const UDP_REMOTE_MULTICAST_ADDRESS = "224.1.5.80";
const UDP_REMOTE_PORT = 49152;

// general constants
const DEBUG = false;
const VARIABLE_NAME = "play";
var logger = undefined;

var UDPListener = {

    socket: null,
    listen: function listen(localPort, callBack) {
        try {
            LOG("Start listening  (local port : " + localPort + ")... ");
            if (typeof UDPSocket === 'function') {
                UDPListener.socket = new UDPSocket({ "localPort": localPort });
                LOG("using UDP Socket");
            }
            else {
                UDPListener.socket = new GktUDPSocket({ "localPort": localPort });
                LOG("using GKT UDP Socket");
            }

            try {
                UDPListener.socket.joinMulticast(LOCAL_MULTICAST_GROUP);
            }
            catch (ex) {
                LOG("\n    Join not autorized with local address");
            }

            UDPListener.socket.onerror = function (UDPErrorEvent) {
                LOG("onerror - name = " + UDPErrorEvent.name +
                    " message = " + UDPErrorEvent.message);
            };
            UDPListener.socket.onmessage = function (UDPMessageEvent) {
                LOG("UDPListener.socket.onmessage ");
                var data = "";
                if ("dataString" in UDPMessageEvent) {
                    data = UDPMessageEvent.dataString;
                    LOG("UDPMessageEvent.dataString  " + data);
                } else {
                    var dataArray = UDPMessageEvent.data;
                    LOG("UDPMessageEvent.data: " + dataArray);
                    data = UDPListener.ArrayBufferToString(dataArray);
                }
                LOG("onmessage  - " + data);
                if (data === "CLOSE") UDPListener.close();
                else callBack(data);
            };
        }
        catch (ex) {
            LOG("ERROR : exception = " + ex);
        }
    },

    close: function close() {
        LOG("Close socket");
        UDPListener.socket.close();
    },

    ArrayBufferToString: function ArrayBufferToString(arr) {
        var str = '';
        for (var i = 0; i < arr.length; i++) {
            str += String.fromCharCode(arr[i]);
        }
        return str;
    }
}

var UDPSender = {
    socket: null,
    send: function send(data, adress, port) {
        try {
            LOG("Start sending");
            if (typeof UDPSocket === 'function') {
                UDPSender.socket = new UDPSocket({ "remoteAddress": adress, "remotePort": port });
                LOG("using UDP Socket");
            }
            else {
                UDPSender.socket = new GktUDPSocket({ "remoteAddress": adress, "remotePort": port });
                LOG("using GKT UDP Socket");
            }
            UDPSender.socket.onerror = function (UDPErrorEvent) {
                LOG("onerror - name = " + UDPErrorEvent.name +
                    " message = " + UDPErrorEvent.message);
            };
            LOG("sending message + " + data);
            UDPSender.socket.send(data);
        }
        catch (ex) {
            LOG("ERROR : exception = " + ex);
        }
    },

    close: function close() {
        LOG("Close socket");
        UDPSender.socket.close();
    },
}


//===========================================================================================
// Functions
//===========================================================================================
function LOG(msg) {

    console.debug(msg);
    if (DEBUG) {
        if (logger == undefined) {
            logger = log4Service.getLogger("JSscript");
            if (logger) {
                logger.debug(msg, null);
            }
        }
        else logger.debug(msg, null);
    }
}

//===========================================================================================
function gotMessage(hostStream) {
    try {
        if (hostStream === EXPECTED_UDP_MESSAGE) {
            Playzilla.variables.setValue(VARIABLE_NAME, "true");
            if (ENABLE_SEND_MESSAGE_AFTER_SEQUENCE === true) {
                Playzilla.variables.addListener({
                    valueChanged: function (varname, oldval, newval) {
                        if (varname === VARIABLE_NAME) {
                            if (newval.value === false) {
                                LOG("sending message. Old var value: " + oldval.value + "  new var value: " + newval.value);
                                UDPSender.send(UDP_MESSAGE_TO_SEND, UDP_REMOTE_MULTICAST_ADDRESS, UDP_REMOTE_PORT);
                                UDPSender.close();
                            }
                        }
                    }
                });
            }
        }
    }
    catch (ex) {
        LOG("gotMessage : EX : " + ex);
    }
}

//===========================================================================================

LOG("start");
UDPListener.listen(UDP_LOCAL_PORT, gotMessage);





