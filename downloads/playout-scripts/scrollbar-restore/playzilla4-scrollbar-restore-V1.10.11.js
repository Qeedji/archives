// Description : Playout script that is restoring the scrollbars
// Compatibility : Playzilla4
// v1.10.11


function start() {


	var logger = new Playzilla.Logger("app.scrollbar");
		logger.debug("INIT");
		switch (document.readyState) {
			case "complete":
				{
					logger.debug("complete");
					break;
				}
			default:
				{
					logger.debug("addEventListener");
					window.addEventListener("load", start, false);
					return;
				}
		}
		
		try {
	
			var elems = document.getElementsByTagName("smil-iframe");
			for (let i = 0; i < elems.length; i++) {
				 logger.debug("patch smil-iframe");
				elems[i].setAttribute("scrolling", "auto");
			}
			elems = document.getElementsByTagName("smil-animation");
			for (let i = 0; i < elems.length; i++) {
							 logger.debug("patch smil-animation");
	
				elems[i].setAttribute("scrolling", "auto");
			}
			
			window.setTimeout(function () {
				var elems = document.querySelectorAll(".play-iterables-generated>smil-ref");
				logger.debug("timeout elems.length = " + elems.length);
				for (let i = 0; i < elems.length; i++) {
					logger.debug("patch play-iterables-generated elems[i] = " + elems[i]);
					elems[i].setAttribute("scrolling", "auto");
				}
			}, 100);
			
	
				
		} catch (ex) {
			logger.errorEx(ex);
		}
	
	}
	start();