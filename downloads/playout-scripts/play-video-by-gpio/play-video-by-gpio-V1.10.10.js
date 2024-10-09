(function () {
    "use strict";

    //==================================================================================================
    // VERSION 1.10.10
	//==================================================================================================    	
    /*
	- In PlugnCast, create a type `text` variable name (ex: `videoSource`), whose name has to be also defined in `VAR_NAME` of the playout script `play-video-by-gpio-V1.10.10.js`, and create values for this variable  
	- Variable value examples 
		- VideoA/video.mp4
		- VideoB/video.m2v
	- Associate an appropriate value of the variable `videoSource` to the device 
	- Create a playout with a nominal content
	- Add the required video media to the playout manifest 
	- Insert the `play-video-by-gpio-V1.10.10.js` script in the `script to execute` screen in the `Property` tab of the playout 
	- Edit the script `play-video-by-gpio-V1.10.10.js` and adjust the 2 parameters value of `triggerOnEdge` and `mediaOnState` depending on your needs:
		- Typical use case when using a luminosity sensor or a switch:
			- ```triggerOnEdge``` = *false* :
				- ```mediaOnState``` = *false*:
					- on GPIO level 0, the video is played infinitely 
					- on GPIO level 1, the nominal playout content is played
					- in case GPIO level bouncing, the played content is following the GPIO level     
				- ```mediaOnState``` = *true*:
					- on GPIO level 0, the nominal playout content is played 
					- on GPIO level 1, the video is played infinitely
					- in case GPIO level bouncing, the played content is following the GPIO level
		- Typical use case when using a movement sensor or a push-button:
			- ```triggerOnEdge``` = *true* :
				- ```mediaOnState``` = *false*: 
					- when there is noone in the room, the nominal playout content is always played 
					- on a presence detection [rising edge], the video is played once 
				- ```mediaOnState``` = *true*: 
					- when there is noone in the room, the nominal playout content is always played 
					- on a presence detection [falling edge], the video is played once 
	- Publish on the playout on the device

	Note:
	- Read and apply the configuration-by-script application note to configure as input the GPIO Jack 35 of the media player
		- For example: setJackGPIO(false, "in",  100000000);   		// Jack GPIO : Input, Debouncing 100ms  
	- The video can be played only in the main region of the playout 
    */
    //==================================================================================================
    // Change as required
    //==================================================================================================
    var VAR_NAME = "videoSource";
    var inputName = "jack35";
    var mediaOnState = false;   // true / false
    var triggerOnEdge = false;  // true / false
    //==================================================================================================

    var entry;
    var parentElement;
    var smilSeqVideo;
    var smilVideo;
    var mediaToBePlayed;
    var videoPlaying = false;

    var logger = Playzilla.Logger != null ? new Playzilla.Logger("app.script.gpioDetection") : null;

    const Ci = Components.interfaces;

    //==================================================================================================
    var observer = {
        onChange: function onChange(aAPBGpioInput, aOldValue, aNewValue) {
            logger.debug("** GPIO changed " + aNewValue + " playing " + videoPlaying);

            if (triggerOnEdge) {
                if ((!videoPlaying) && (aNewValue == mediaOnState)) {
                    videoOn();
                }
            } else {
                if (aNewValue == mediaOnState) {
                    if (!videoPlaying) videoOn();
                } else {
                    if (videoPlaying) scheduleOn();
                }
            }
        }
    };

    function registerProfile(profile) {
        logger.debug("register profile");
        profile.addObserver(observer);
        logger.debug("Current value = ", profile.readValue);

        if ((!videoPlaying) && (profile.readValue == mediaOnState)) {
            videoOn();
        }
        return true;
    }

    function getFirstConnector(profile) {
        var connectors = profile.adapter.connectors;
        logger.debug("getFirstConnector : " + connectors.length);
        for (var j = 0; j < connectors.length; ++j) {
            var connector = connectors.queryElementAt(j, Ci.nsISystemConnector);
            return connector;
        }
    }

    function initGpio() {


        try {

            logger.debug("initGpio");

            var ifaceName = "gpio-input";
            var iface = Ci.nsISystemAPBGpioInput;
            var profile;
            var connector;
            var profiles = systemManager.getApplicationProfileBindingsByProfileUri(ifaceName);

            if (profiles != null) {
                profile = profiles.queryElementAt(0, iface);
                connector = getFirstConnector(profile);
                if (connector.id.indexOf(inputName) == 0) {
                    logger.debug("initGpio : connector.ID : " + connector.id);
                    registerProfile(profile);
                }
            }
        } catch (ex) {
            logger.debug("EX : " + ex);
        }
    }

    //========================================================================================================
    function lookForVars() {
        try {
            if (typeof Playzilla != 'undefined') {
                mediaToBePlayed = Playzilla.customVariablesManager.getValue(VAR_NAME);
                logger.debug("Playzilla : lookForVars : got value : " + mediaToBePlayed);
            } else {
                var variables = Xpf.doc.getElementsByTagNameNS(Xpf.ns.uri, "variable");
                for (var i = 0; i < variables.length; i++) {
                    var name = variables[i].getAttribute("name");
                    var variableValue = variables[i].textContent;

                    logger.debug("XPF : current value : " + name + " " + variableValue);

                    if (name === VAR_NAME) {
                        mediaToBePlayed = variableValue;
                        break;
                    }
                }
            }
        } catch (e) {
            logger.error(e);
        }

        if (document.location.href.lastIndexOf('/') > 0) {
            mediaToBePlayed = document.location.href.substr(0, document.location.href.lastIndexOf('/')) + "/.domain-repository/" + mediaToBePlayed;
        }
        logger.debug("media à jouer : " + mediaToBePlayed);
    }

    //========================================================================================================
    function videoOn() {
        logger.debug("videoOn");
        // add dynamic video
        videoPlaying = true;
        Playzilla.timingManager.addEntries(entry, false);
    }

    function scheduleOn() {
        logger.debug("scheduleOn");
        videoPlaying = false;
        // Remove dynamic video
        Playzilla.timingManager.removeEntries(entry, false);
    }

    function onEndSeq() {
        logger.debug("onEndSeq");
        if (videoPlaying) {
            scheduleOn();
        }
    }

    //========================================================================================================
    function guid() {
        function s4() {
            return Math.floor((1 + Math.random()) * 0x10000).toString(16)
                .substring(1);
        }
        return s4() + s4() + '_' + s4() + '_' + s4() + '_' + s4() + '_' + s4() + s4() + s4();
    }

    function getRegions() {
        try {
            logger.debug("initProc : " + document.location.href);

            var syncIds = [];
            var regions = document.getElementsByTagName('smil-div');

            if (regions.length > 0) {

                for (var i = 0; i < regions.length; i++) {
                    var regionId = regions[i].getAttribute("region");
                    logger.debug("initProc : region : " + i + " ID " + regionId);
                    syncIds.push(regionId);
                }

                smilSeqVideo = document.createElement("smil-seq");
                var smilSeqVideoId = 'UID' + guid();
                smilSeqVideo.setAttribute("id", smilSeqVideoId);
                if (triggerOnEdge) {
                    smilSeqVideo.setAttribute("repeatcount", "1");
                    smilSeqVideo.setAttribute("begin", "1");
                    smilSeqVideo.addEventListener("endEvent", onEndSeq, false);
                } else {
                    smilSeqVideo.setAttribute("repeatcount", "indefinite");
                    smilSeqVideo.setAttribute("begin", "indefinite");
                }

                smilVideo = document.createElement("smil-video");
                smilVideo.setAttribute("dur", "media");
                smilVideo.setAttribute("src", mediaToBePlayed);
                smilVideo.setAttribute("class", "visual");

                logger.debug("initProc : adding : " + mediaToBePlayed + " to " + smilSeqVideo.id);

                regions[0].appendChild(smilSeqVideo);
                smilSeqVideo.appendChild(smilVideo);

                entry = [new Playzilla.TimingManagerSmilEntry(smilSeqVideoId, syncIds, 6)];

            } else {
                throw "no regions detected";
            }

        } catch (ex) {
            logger.debug("initProc : EX : " + ex);
        }
    }

    function listen() {
        logger.debug("Document loaded : listen");

        document.body.addEventListener("beginEvent", init, true);
    }

    function init() {
        logger.debug("Script LOADING : VAR_NAME : " + VAR_NAME + " triggerOnEdge : " +  triggerOnEdge + " mediaOnState : " +  mediaOnState);
        document.body.removeEventListener("beginEvent", init, true);
        lookForVars();
        getRegions();
        initGpio();
  }


    function unload() {
        logger.debug("UNLOADING");
        if (triggerOnEdge) {
            smilSeqVideo.removeEventListener("endEvent", onEndSeq, false);
        }
        if (typeof Playzilla != 'undefined') {
            Playzilla.timingManager.removeEntry(entry, true);
        }
        if (typeof parentElement != 'undefined') {
            parentElement.removeChild(smilVideo);
        }
    }

    if (window.addEventListener)
        window.addEventListener("load", listen, false);
    else if (window.attachEvent)
        window.attachEvent("onload", listen);
    else window.onload = listen;

    if (window.addEventListener)
        window.addEventListener("unload", unload, false);
    else if (window.attachEvent)
        window.attachEvent("onunload", unload);
    else window.onunload = unload;


}).call(this);