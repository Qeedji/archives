(function () {
  //===========================================================================
  // Detect start/end of content, when there is no content place the player on standby 
  // when a new content begins, wake the player up.
  // Tested Playzilla version 4.11.11+ on DMB400/SMA300/DMB300 with PnC 3.10.51
  // Version 1.10.10
  //===========================================================================

  var logger = Playzilla.Logger != null ? new Playzilla.Logger("app.script.channelStandby") : null;
  var debug = logger != null ? logger.debug.bind(logger) : function () { };

  function start() {
    switch (document.readyState) {
      case "complete": {
        break;
      }
      default: {
        window.addEventListener("load", start, false);
        return;
      }
    }

    debug("Looking for a channel");
    var targetChannel;
    if (Playzilla.channelVisual != null) {
      debug("use visual channel");
      targetChannel = Playzilla.channelVisual;
    } else if (Playzilla.channelAudioVisual != null) {
      debug("use audio visual channel");
      targetChannel = Playzilla.channelAudioVisual;
    } else {
      debug("no channel");
      return;
    }

    try {
      if (typeof PlugncastTasks.hasStandby === "function") {
        PlugncastTasks.hasStandby();
      }
    } catch (e) {
      if (logger != null) {
        logger.errorEx(e);
      }
    }

    var standby = PlugncastTasks.standby;
    var taskIsStandby = false;
    var scriptIsStandby = false;
    PlugncastTasks.standby = function (val) {
      taskIsStandby = val;
      standby(taskIsStandby || scriptIsStandby);
    };
    var scriptStandby = function (val) {
      debug("script standby", val);
      try {
        scriptIsStandby = val;
        standby(taskIsStandby || scriptIsStandby);
      } catch (e) {
        if (logger != null) {
          logger.errorEx(e);
        }
      }
    };

    try {
      debug("Start listening");
      targetChannel.addEventListener("beginNothing", scriptStandby.bind(undefined, true));
      targetChannel.addEventListener("beginSomething", scriptStandby.bind(undefined, false));
    } catch (e) {
      if (logger != null) {
        logger.errorEx(e);
      }
    }
  }

  start();
})();
