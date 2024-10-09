(function () {

  function callgc() {
	setTimeout(systemMaintenance.callGC.bind(systemMaintenance), 1);  
  }
 
  window.addEventListener("smilDidUnbind", callgc, true);

})();