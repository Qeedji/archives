(function () {
  var logger = Playzilla.mainLogger = Playzilla.Logger ? new Playzilla.Logger("app.playlog") : null;
  var screenOn = true;
  var playing = null;
  var errorMsg = null;
  var errorSrc = null;
  var a;
  var absBase;
  var debug = logger == null || !logger.isDebugEnabled ? function () { } : logger.debug.bind(logger);
  var warnEx = logger == null || !logger.isWarnEnabled ? function () { } : logger.warnEx.bind(logger);

  function warnFn(fn) {
    return function () {
      try {
        fn.apply(undefined, arguments);
      } catch (e) {
        warnEx(e);
      }
    };
  }

  function findMainRegionSelector() {
    if (Playzilla.grids == null) {
      return;
    }
    var gr;
    gr = Playzilla.grids["UID_defaultVisualGrid"];
    if (gr == null) {
      gr = Playzilla.grids["UID_defaultAudioVisualGrid"];
      if (gr == null) {
        return;
      }
    }
    var region;
    for (var selector in gr) {
      region = gr[selector];
      if (
        region.top === "0px" &&
        region.left === "0px" &&
        region.width === "100%" &&
        region.height === "100%"
      ) {
        return selector;
      }
    }
  }

  function resolveSrc(src) {
    if (a == null) {
      a = document.createElement("a");
    }
    a.href = src;
    return a.href;
  }

  function relativizeSrc(src) {
    if (a == null) {
      a = document.createElement("a");
    }
    if (absBase == null) {
      a.href = "./";
      absBase = a.href;
    }
    if (src.indexOf(absBase) === 0) {
      return src.substr(absBase.length);
    }
    return src;
  }

  function addEvent() {
    if (logger != null && logger.isDebugEnabled) {
      logger.debug.apply(logger, arguments);
    }
    var args = new Array(arguments.length + 1);
    args[0] = new Date().toISOString();
    for (var i = 0; i < arguments.length; ++i) {
      args[i + 1] = arguments[i];
    }
    playLogService.addEvent(args, args.length);
  }

  function addSrcEvent(name, src) {
    /*
    if (typeof Playzilla.VariablesResolver.getId === "function") {
      var id = Playzilla.VariablesResolver.getId(src);
      if (id != null) {
        addEvent(name, relativizeSrc(src), id);
        return;
      }
    }
    */
    addEvent(name, relativizeSrc(src));
  }

  function addErrorEvent() {
    addSrcEvent("Play-Error", errorSrc, errorMsg);
    errorMsg = null;
    errorSrc = null;
  }

  function stopSrc(src) {
    if (playing === src) {
      playing = null;
      if (screenOn) {
        addSrcEvent("Play-End", src);
      }
    }
  }

  function startSrc(src) {
    if (playing !== src) {
      if (playing != null) {
        stopSrc(playing);
      }
      playing = src;
      if (screenOn) {
        addSrcEvent("Play-Begin", src);
        if (errorSrc === src) {
          addErrorEvent();
        }
      }
    }
  }

  function setScreenOff() {
    screenOn = false
    if (playing != null) {
      addSrcEvent("Standby-on", playing);
    }
  }

  function setScreenOn() {
    screenOn = true;
    if (playing != null) {
      addSrcEvent("Standby-off", playing);
    }
  }

  function reboot() {
    addEvent("Reboot");
  }

  function getSrcFromEvent(event) {
    var target = event.target;
    var src = target.getAttr("src") ||
      target.getAttribute("src") ||
      target.playlogSrc;
    if (src != null) {
      return resolveSrc(src);
    }
    return src;
  }

  function eventStart(event) {
    var src = getSrcFromEvent(event);
    if (src != null) {
      startSrc(src);
    }
  }

  function eventStop(event) {
    var src = getSrcFromEvent(event);
    delete event.target.playlogSrc;
    if (src != null) {
      stopSrc(src);
    }
  }

  function eventError(event) {
    if (event.defaultPrevented) {
      return;
    }
    var src = getSrcFromEvent(event);
    if (src != null) {
      errorSrc = src;
      if (
        src.indexOf("urn:") >= 0 ||
        src.indexOf("udp:") >= 0 ||
        src.indexOf("rtp:") >= 0 ||
        src.indexOf("rtsp:") >= 0 ||
        src.indexOf("http:") >= 0 ||
        src.indexOf("https:") >= 0
      ) {
        errorMsg = "Loss of connection";
      // } else if (event.detail != null) {
      //   errorMsg = "Content temporarily unavailable (code " + event.detail + ")";
      } else {
        errorMsg = "Content temporarily unavailable";
      }
      if (screenOn && errorSrc === playing) {
        addErrorEvent();
      }
    }
  }

  function start() {
    var mainRegionSelector;
    var mainRegion;
    try {
      addEvent("App-Begin");
      window.addEventListener("unload", function () {
        addEvent("App-End");
      });

      mainRegionSelector = findMainRegionSelector();
      if (mainRegionSelector == null) {
        debug("no main region selector found")
      } else {
        mainRegion = document.body.querySelector(mainRegionSelector);
        if (mainRegion == null) {
          debug("no main region found");
        } else {
          mainRegion.addEventListener("smilWillUnbind", warnFn(eventStop), true);
          mainRegion.addEventListener("smilDidActivate", warnFn(eventStart), true);
          mainRegion.addEventListener("internalError", warnFn(eventError), true);

          if (Playzilla.standbyTasks != null) {
            Playzilla.standbyTasks.addEventListener("beginNothing", warnFn(setScreenOn));
            Playzilla.standbyTasks.addEventListener("beginSomething", warnFn(setScreenOff));
          }
        }
      }

      if (Playzilla.rebootTasks != null) {
        Playzilla.rebootTasks.addEventListener("beginEvent", reboot);
        if (PlugncastTasks != null && PlugncastTasks.reboot != null) {
          var oldReboot = PlugncastTasks.reboot;
          PlugncastTasks.reboot = function () {
            setTimeout(oldReboot, 0);
          };
        }
      }

    } catch (e) {
      warnEx(e);
    }
  }

  if (window.playLogService != null && playLogService.isEnabled) {
    debug("service enabled");
    switch (document.readyState) {
      case "complete":
      case "intractive":
        start();
        break;
      default: {
        window.addEventListener("DOMContentLoaded", start, false);
        break;
      }
    }
  } else {
    debug("service not enabled");
  }
})();