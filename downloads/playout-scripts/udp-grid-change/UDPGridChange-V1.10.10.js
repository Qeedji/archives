(function(){
	"use strict";
	
	//==================================================================================================
    // UDP Grid change
	// VERSION 1.10.10
	//==================================================================================================
	// Parameters
	//===========================================================================================
    var UDPport = 49152;
	var grids =[{ udpMsg:"GRID1",gridUID:"08ad0998-91bd-4411-bed5-74d02b05e21c"}
				,{udpMsg:"GRID2",gridUID:"28957f33-bb44-499f-866a-c8e0aefb7467"}];
	
	//===========================================================================================
	var DEBUG = false;
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
		   if (logger) logger.debug("UDP GRID : " + msg, null);
		   else console.debug(msg);
		 }
		 else logger.debug("UDP GRID : " + msg, null);
		 
		 console.debug(msg);
	   }
	}
  

	//===========================================================================================
	var UDPListener = {
		
	  socket : null,

	  // just listening so just require PORT
	  received :false,    
		
	  listen : function listen(localPort,callBack)
		{
		try{
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

					
					LOG("onmessage  - " + data); 
					received = true;
					
					if (data === "CLOSE") UDPListener.close();
					else callBack(data);
				};
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
		 var gridToShow = "";

		 for (var i=0;i<grids.length;i++) {
		     if (hostStream == grids[i].udpMsg) {
				gridToShow = grids[i].gridUID;
				break;
			 }
		 }

		 LOG("gotMessage : gridToShow : " + gridToShow);

		 if (gridToShow != "") {
			gridToShow =  "UID" + gridToShow.replace(/-/g, '_');
		    LOG("gotMessage : gridToShow SMIL : " + gridToShow);
			Playzilla.LayoutManager.startGrid(Playzilla.grids[gridToShow]);
		 }	
	   }
	   catch(ex)
	   {
	     LOG("gotMessage : EX : " +  ex);
	   }
	}
  
	//===========================================================================================
	function initProc()
	{
	   try{
		   LOG("initProc : " + document.location.href);
		   UDPListener.listen(UDPport,gotMessage);
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
