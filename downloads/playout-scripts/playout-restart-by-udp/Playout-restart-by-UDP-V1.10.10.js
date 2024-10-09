(function(){
	"use strict";
	
	//==================================================================================================
    // VERSION 1.10.10
	//==================================================================================================
	// Parameters
	//===========================================================================================
    var UDPport = 49152;
		
	//===========================================================================================
	var manifestRestart = "LAUNCHER-RELOAD";
	
	//===========================================================================================
	var DEBUG = true;
	var logger;
	//===========================================================================================
	var syncIds = []; 
	var entry;
	//===========================================================================================

	function LOG(msg)
	{
	 if (DEBUG)
	  {
		 if (logger == undefined )
		 {
		   logger = log4Service.getLogger("widget");
		   console.debug("logger" + logger);
		   if (logger) logger.debug("UDP MEDIA : " + msg, null);
		   else console.debug(msg);
		 }
		 else logger.debug("UDP MEDIA : " + msg, null);
		 
		 console.debug(msg);
	   }
	}
  

	//===========================================================================================
	var UDPListener = {
		
	  socket : null,

	  // just listening so just require PORT
	  received :false,    
		
	  //If not set the user agent binds the socket to the IPv4/6 address of the default local interface    
	  //localAddress:"192.168.19.21",

	  listen : function listen(localPort,callBack)
		{
		try{
				// On the remote host, you can send UPD message with command :
				// echo -n "hello" | nc  -u  -w 5 192.168.1.29 1810
				LOG("Start listening  (local port : " + localPort + ")... ");
				if (typeof UDPSocket === 'function')
				{
					UDPListener.socket = new UDPSocket({"localPort":localPort}); 
					LOG("using UDP Socket");
				}
				else
				{ 
					UDPListener.socket = new GktUDPSocket({"localPort":localPort}); 
					LOG("using GKT UDP Socket");
				}
				
			
				UDPListener.socket.onerror = function (UDPErrorEvent) {
					LOG ("onerror - name = " + UDPErrorEvent.name +
						 " message = " + UDPErrorEvent.message);
				};
				var received = false;
				UDPListener.socket.onmessage = function (UDPMessageEvent) {
					
					LOG("UDPListener.socket.onmessage ");
					
					var data = "";

					if ("dataString" in UDPMessageEvent) {
                        data = UDPMessageEvent.dataString;
                    } else {
                        var dataArray = UDPMessageEvent.data;
                        LOG("UDPListener.socket.onmessage dataArray: " + dataArray);
                        data = UDPListener.ArrayBufferToString(dataArray);
                    }

					
					LOG("onmessage  - "); 
					received = true;
					
					if (data === "CLOSE") UDPListener.close();
					else callBack(data);
				};
			   // No timeout 
			   //window.setTimeout(function () {UDPListener.end();} , 120000);

			}
			catch (ex)
			{
				LOG("ERROR : exception = " + ex);
			}
		},
		  
	   close : function close()
				{
					LOG ("Close socket");
					
					UDPListener.socket.close();
				},
		
		
	   ArrayBufferToString:  function ArrayBufferToString(arr)
		{
			var str = '';
			for (var i = 0; i < arr.length; i++) {
				str += String.fromCharCode(arr[i]);
			}
			return str;
		}
	}


	//===========================================================================================
    function gotMessage(hostStream)
	{
	   try{
		 LOG("gotMessage : " + hostStream);
		 
		 if (hostStream == manifestRestart) 
		 {  
		   //document.location.reload();
		   Playzilla.timingManager.addEntry(entry,true);
		   setTimeout(removeEntry,500);
		   }
	   }
	   catch(ex)
	   {
	     LOG("gotMessage : EX : " +  ex);
	   }
	}
  
    function removeEntry()
	{
		try{
		 LOG("removeEntry : ");
		 Playzilla.timingManager.removeEntry(entry,true);
		 }
	   catch(ex)
	   {
	     LOG("removeEntry : EX : " +  ex);
	   }
	}  
  
	//===========================================================================================
	function initProc()
	{
	   try{
		   LOG("initProc : " + document.location.href);
		   UDPListener.listen(UDPport,gotMessage);
		   
		   // LOG("initProc : timingManager : " + Playzilla.timingManager);
		   var regions = document.getElementsByTagName('smil-div');
		   LOG("initProc : regions.length : " + regions.length);
		   
		   for(var i=0;i<regions.length;i++)
		   {
			   var regionId = regions[i].getAttribute("region");
			   LOG("initProc : region : " + i + " " + regionId);
			   syncIds.push(regionId);			
		   }
		   
	   entry = {
			syncIds,
			timingIndex: Number.MAX_SAFE_INTEGER,
			beginEntry: function(){},
			endEntry: function(){},
		   };
	   }
	   catch(ex)
	   {
	     LOG("initProc : EX : " +  ex);
	   }
	}
	//===========================================================================================
   if (window.addEventListener)
       window.addEventListener("load", initProc, false);
   else if (window.attachEvent)
       window.attachEvent("onload", initProc);
   else window.onload = initProc;
	
}).call(this);
