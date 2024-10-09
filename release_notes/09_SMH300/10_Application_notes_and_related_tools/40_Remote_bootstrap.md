# Remote bootstrap

#### **SUMMARY**
The goal of this document is to explain how to launch a remote bootstrap:
| App
|:--
| ```manifest.xml```
| ```http://<WebDAV_server_url>/remoteAppTest.html```

instead the default local bootstrap:
| App
|:--
| ```manifest.xml```
| ```player.html```

##`2019-08-13` (last update)
- App `app-blue-screen-example.tar.gz` with local bootstrap example [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/remote_bootstrap/app-blue-screen-example.tar.gz)
- App `app-logo-remote-bootstrap.tar.gz` with remote bootstrap example [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/remote_bootstrap/app-logo-remote-bootstrap.tar.gz)
- Remote App example `remoteAppTest.html` hosted on a WebDAV server [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/remote_bootstrap/remoteAppTest.html)

>##### **COMPATIBILITIES**
- Gekkota 4.12.10 (or above)
- Device
	- DMB400
	- SMA300
	- DME204
	- SMT210

#INFORMATION
***********************************************************************
- Prerequisite: have a external bootstrap available on a remote WebDAV server
	- In the example, download the bootstrap ```remoteAppTest.html``` and your company logo ```logo.jpg``` on a remote WebDAV server ```http://<WebDAV_server_URL>/```
- Get an App having a local bootstrap
	- Download the ```app-blue-screen-example.tar.gz``` archive, example of App with a local bootstrap which is just displaying for example a blue content
- Modify the App to use a remote bootstrap
	- Uncompress the ```app-blue-screen-example.tar.gz``` archive with `7-Zip` (or `7-Zip File Manager`)
	- Edit the ```manifest.xml``` file [manifest example](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/remote_bootstrap/manifest.xml)
	- And replace
		- ```<pzpm:bootstrap src="player.html"/>``` by
		- ```<pzpm:bootstrap src="http://<WebDAV_server_URL>/remoteAppTest.html" password="<password>" username="<username>"/>```
	- Save the ```manifest.xml``` and close the file editor. When `7-zip File Manager` is asking to remake automatically the archive with the new manifest.xml, click yes. Rename the archive into ```app-logo-remote-bootstrap.tar.gz```
- Set the App wizard mode to ```Local deposit``` and load the new App
	- Connect to the device WebUI ```http://<device_ip_addr>/.admin/#/configuration/app``` (identifiant/password),
	- Select the ```Local deposit``` radio button, click on ```Drop file here or clic to add one```, select the new App ```app-logo-remote-bootstrap.tar.gz``` you've just generated, then click on the button ```Load the App```
- The App should restart and your company logo should be displayed

In case the network is not available anymore, after a reboot, the system message *Error : enable to launch the bootstrap URI (error http 0)* should be displayed. To work around, restore the network connection and then reload the App (or reboot the device).









