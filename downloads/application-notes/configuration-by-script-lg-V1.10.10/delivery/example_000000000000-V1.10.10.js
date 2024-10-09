(function () {
	function setMetadata(name, value) {
		var value = value || (new Date()).toString();
		window.setMetadata("configuration-script-" + name, value);
	}
	
	function start() {
		setMetadata("start");
		return new Promise(function(resolve, reject) {
			webOS.service.request("luna://com.webos.service.commercial.signage.storageservice/", {
				method: "createToast",
				parameters: {
					"text": "Configuration Script OK"
				},
				onSuccess: function (inResponse) {
					setMetadata("complete")
					resolve();
				},
				onFailure: function (inError) {
					setMetadata("error");
					reject(inError);
					return;
				}
			});
		});
	}
	
	function stop() {
		setMetadata("stop");
	}

window.start = start;
window.stop = stop;
})();