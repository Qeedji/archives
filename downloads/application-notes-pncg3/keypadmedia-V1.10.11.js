(function(){
	"use strict";
	
	//==================================================================================================
    // VERSION 1.10.10
	//==================================================================================================
	var DEBUG = false;
	var logger;
	var media;
	var seq;
	var par;
	var regionId;
	
	var mediaActive = false;
	var mediaListener = false; 
	var mediaEvent = "";

	var mediaTable = [];
	
	var timeouttimer;
	
	var listenToKeyboard = true;

	
	function LOG(msg)
	{
	 if (DEBUG)
	  {
		 if (logger == undefined )
		 {
		   logger = log4Service.getLogger("widget");
		   
		   console.debug("logger" + logger);
		   if (logger) 
			  logger.debug("KEYPAD MEDIA : " + msg, null);
		   else 
			  console.debug(msg);
		 
		 }
		 else logger.debug("KEYPAD MEDIA : " + msg, null);
		 
		 console.debug(msg);
	   }
	}
	
	
	function getAbsolutePath()
	{	
		//LOG("getAbsolutePath");
        var href = "";
		var scripts;
		var currentScript;
		var idx;
		
		scripts = document.querySelectorAll( 'script[src]' );
        
		LOG("getAbsolutePath " + scripts.length);
		
		if (scripts.length > 0)
		{
		  currentScript = scripts[ scripts.length - 1 ].src;
		  
		  LOG("script " + currentScript);
		  
		  idx =  currentScript.indexOf("keypadmedia.js");
		  
		  if (idx !== -1)
		  {
		    href = currentScript.substring(0,idx-1);
		  
		  }

        }
		return href;
	}
	
	
	//===========================================================================================
   function initSeq()
	{
	  try{
		  for(var rId in XpfStyleManager.regions) {
			if ((XpfStyleManager.regions[rId].type == "main") 
			|| (XpfStyleManager.regions[rId].type == "MainRegion")) {
				regionId = rId;
				break;
			}
		  }
		  
		par = document.querySelector("par");
		  
		if(regionId == null || !par) {
			var event = document.createEvent("CustomEvent");
			event.initCustomEvent("maskError", true, false, 0);
			document.body.dispatchEvent(event);    
			return;
		}

	  }
	  catch(ex)
	  {
		LOG("initSeq : EX " + ex);
	  
	  }
    }
	
   function addSeqtoMain()
	{
	  try{
		LOG("***  addSeqtoMain ");
		
		seq = document.createElement("seq");
		seq.setAttribute("repeatCount", "indefinite");
		seq.setAttribute("begin", "indefinite");
		seq.setAttribute("region", regionId);
		
		par.appendChild(seq);

		XpfTimingManager.addOverrideElement(seq, false, false);
	  }
	  catch(ex)
	  {
		LOG("addSeqtoMain : EX " + ex);
	  
	  }
	  LOG("***  addSeqtoMain : finish" + par + " " + seq);
	}

	function getElementFromExt(fileName)
	{
	  var ext = "";
	  
	  var idx = fileName.lastIndexOf("."); 
	  if (idx != -1)
	  {
	    ext = fileName.substring(idx + 1);
	  }
	  
	  ext = ext.toLowerCase();
	  var element = "div";
	  
	  switch(ext)
	  {
	    case "apng" :
	    case "gif"  :
		case "jpeg" :
	    case "jpg"  :
		case "png"  :
		case "svg"  :
		case "svgz" :
						element="img"; break;
		
		case "asf"  :
		case "avi"  :
		case "divx" :
		case "divx-pcm" :
		case "f4v" :
		case "m1s" :
		case "m2p" :
		case "m2v" :
	    case "mov" : 
	    case "mp4" : 
	    case "mpeg" : 
	    case "ogg" : 
	    case "ogm" : 
	    case "vob" : 
	    case "wmv" : 
		             element = "video"; break; 
		case "ppt"  :
		case "pptx" :
		case "pdf"  : element = "book"; break;

		case "maff" :
		case "wgt"  : element = "animation"; break;
	}
	  
	  return element;
	}
	
	
	function addMediaToSeq(mediaData)
	{
      try{
		  var mediaPath = ".domain-repository" + mediaData.path;
		  LOG("***  addMediaToSeq [" + mediaPath + "] in a " + mediaData.elementType);
		  
		  if (mediaPath !== "")
		  {
		  media = document.createElement(mediaData.elementType);
		  media.setAttribute("duration", "media");
		  media.setAttribute("region", regionId);
		  
		  
		  mediaListener = false;
		  
		  if (mediaData.behaviour == 1)
		  {
	         media.setAttribute("repeatCount", "0");
			 
			 mediaListener = true;
			 if (mediaData.elementType=="video") mediaEvent = "ended";
			 else mediaEvent = "endEvent";
			 
			 media.addEventListener(mediaEvent, function(){
		                LOG("MEDIA endEvent");
						removeMediaFromSeq();
						}, true);
			}
		 else media.setAttribute("repeatCount", "indefinite");	
					
	     media.setAttribute("src", mediaPath);
	     seq.appendChild(media);
		 mediaActive = true;
		 }
	  }
	  catch(ex)
	  {
	    LOG("addMediaToSeq ex : " + ex );
	  }
    }
	
	function removeMediaFromSeq()
	{
	 if (mediaActive)
	 {
		 LOG("removeMediaFromSeq = " +  mediaListener +  " " +  mediaEvent);
		 
		 if (mediaListener)
		 {
			 media.removeEventListener(mediaEvent, function(){
		                LOG("MEDIA endEvent");
						removeMediaFromSeq();
						}, true);
		 }
		 
		 seq.removeChild(media);
		 XpfTimingManager.removeOverrideElement(seq);
		 media = null;
		 mediaActive = false;
	 }
	}
	
	function keyPress(event) {
		LOG("keyCode = " +  event.keyCode +  " charCode = " +  event.charCode + " " + listenToKeyboard);
		
		try {
               if (listenToKeyboard)
			   {
			   
				   if ((event.charCode > 47) && (event.charCode < 57))
				   {
                         
						 if (event.charCode == 48) 
						   {
							listenToKeyboard = false;
						    removeMediaFromSeq();
							setTimeout(listenAgain,500);
							}
						 else if (mediaTable[event.charCode])
						 {
							listenToKeyboard = false;
							
							removeMediaFromSeq();
							
							addSeqtoMain(mediaTable[event.charCode]); 
							
							addMediaToSeq(mediaTable[event.charCode]);
							
							setTimeout(listenAgain,500);
						}
					}
				}				
			} catch(e){
				LOG("ERROR EX : " + ex);
				xpfLogger.errorEx(e);
			}
	}

	function listenAgain() {
	    LOG("listenAgain");
		listenToKeyboard = true;
	}
	
	function focusLost() {
		LOG("ask focus");
		window.focus();
	}
	
	function xhrManualTimeOut()
    {
        LOG("**** xmlhttprequest xhrTimeOut ****"); 
        clearTimeout(timeouttimer);
    }
	
	function parseMediaTable(data)
	{
	  try
	  {
	  
	  var lines = data.split("\n");
	  
	  LOG("parseMediaTable : " + lines.length); 
	  
	  var mediaAction = {};
	  var idx;
	  
	  for(var i=0;i<lines.length;i++)
	  {
		var matches = lines[i].split(",");
		if (matches !== null)
		  {
		   if (matches.length == 3)
		     {
		      LOG("Line  : " + matches[0] +  " " + matches[1] + " " + matches[2] ); 
		      var keyPadNumber  = parseInt(matches[0]);
			  if ((keyPadNumber > 0)  && (keyPadNumber < 10))
				{
				  keyPadNumber += 48;
				  
				  mediaAction = {};

				  if (matches[2].charCodeAt(matches[2].length-1) == 13) mediaAction.path = matches[2].substring(0,matches[2].length -1);
				  else mediaAction.path = matches[2];
				  
				  mediaAction.path = mediaAction.path.trim();
				  
				  mediaAction.elementType = getElementFromExt(mediaAction.path);
				  
				  if ((mediaAction.elementType == "video") ||  (mediaAction.elementType == "book") || (mediaAction.elementType == "animation"))
				  {
				    if (matches[1] == "media") mediaAction.behaviour = 1;
				    else mediaAction.behaviour = 0;
				  }
				  else mediaAction.behaviour = 0;
				  
				  LOG("mediaAction  : " + keyPadNumber +  " " + JSON.stringify(mediaAction)); 
				  
				  mediaTable[keyPadNumber] = mediaAction;
				}
		      
             }		   
			}
		}	
	  }
	  catch(ex)
	  {
	    LOG("parseMediaTable EX " + ex); 
	  }
	  
	  
	
	}
	
	function readFile(url)
	{
	   try{	

        // 1 min timeout (this is a disk access)
    	var xhrTimeout = 60000;
        
    	var xhr = new XMLHttpRequest();
         xhr.addEventListener("error", function(evt) { 
              LOG("XHR : ERROR readyState : " + this.readyState + "  status : " + this.status + "  "  + this.statusText);
              }, false);
         xhr.addEventListener("load", function(evt) {
              clearTimeout(timeouttimer);
              LOG("XHR : loadend ANSWER : readyState : " + this.readyState + "  status : " + this.status);
              if (DEBUG) LOG("RESPONCE " + String(this.responseText));         
              // check status and ready state
              var n = Math.floor(this.status/100);
              if ((this.readyState !== 4)||(n > 3))  
                   {
                    LOG("RESPONCE error in status or state");         
                  }
			  else {
				  parseMediaTable(this.responseText);		
            }
        }, false);


     LOG("URL " + url + " calling for keypadMedia");


    xhr.open("GET", url, true);
    timeouttimer = setTimeout(xhrManualTimeOut,xhrTimeout);
        
    xhr.setRequestHeader("Connection", "Keep-Alive");
    xhr.send();
        
    LOG("msg sent for getCurrentNews \n");    
}
catch(err) {
    	LOG("XHR : Exception : "+ err);    
       }
}
	

function initMediaTable()
{
	  var mediaAction = {};
	  
	  var path = getAbsolutePath();
	  
	  path += "/keypadmedia.txt";

	  LOG("initMediaTable : " + path);
	  
	  // Read this information from config.file.
 	  readFile(path);
	  
	  /*
	  mediaAction.path = "/keypadmedia/city-lights-at-night-world-hd-wallpaper-1920x1080-21919.jpg";
	  mediaAction.behaviour = 0;
	  mediaAction.elementType = getElementFromExt(mediaAction.path);
	  mediaTable[49] = mediaAction;
	
	  mediaAction = {};
	  mediaAction.path = "/MR/Pictos/arrowDown.png";
	  mediaAction.behaviour = 0;
	  mediaAction.elementType = getElementFromExt(mediaAction.path);
	  mediaTable[50] = mediaAction;

	  mediaAction = {};
	  mediaAction.path = "/keypadmedia/totem_vers_hY_1.mp4";
	  mediaAction.behaviour = 1;
	  mediaAction.elementType = getElementFromExt(mediaAction.path);
	  mediaTable[51] = mediaAction;

  	  mediaAction = {};
	  mediaAction.path = "/keypadmedia/totem_vers_hY_1.mp4";
	  mediaAction.behaviour = 0;
	  mediaAction.elementType = getElementFromExt(mediaAction.path);
	  mediaTable[52] = mediaAction;
	  */
  }	
	//===========================================================================================
	function initProc()
	{
	   
	   try{
	   
		   LOG("initProc : " + document.location.href);
		   
		   window.focus();
		   
		   window.addEventListener("keypress", keyPress, false);
		   window.addEventListener("blur", focusLost, false);
		   window.addEventListener("load", focusLost, false);
		   
		   initMediaTable();
		   
		   initSeq();
		   
		   LOG("initProc : region ID : " + regionId);
	   }
	   catch(ex)
	   {
	     LOG("ERROR : " +  ex);
	   }
	}
	//===========================================================================================
	
	
   if (window.addEventListener)
       window.addEventListener("load", initProc, false);
   else if (window.attachEvent)
       window.attachEvent("onload", initProc);
   else window.onload = initProc;
	
}).call(this);
