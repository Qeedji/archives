# Important information on patch

A patch is a delivery software which permits to add/change a little functionnality on an Innes platform.
It is considered as a standard delivery software, so it can be updated by standard means (Screen composer/Studio/USB dongle).
Some patches are forced to be used with an USB dongle. Please refer to the separated document which describes how to update a delivery software with an USB dongle.

The label of a delivery software patch is the following :

```
<delivery-software-label>-<platform>-<delivery-software-type>-<delivery-software-version>.<delivery-software-file-extension>

<delivery-software-label> : Name of the delivery software
<platform> : Innes platform on which the delivery software applies
	Examples : dmc200, dmb300, dme204, sma200, smt210, rmp200, nt_ia32
<delivery-software-type> : 	'setup' = Standard delivery software
							'patch' = Patch delivery software
							'uninstall' = Unpatch delivery software (permits to remove the patch, or make the reverse feature of the patch)
<delivery-software-version> : version (3 numbers separated with a dot)
<delivery-software-file-extension> : 	'.frm' for elinux os platforms
										'.exe' for windows os platforms
```

####List of patch (`<delivery-software-label>`) :

- `set default ip address` : force the static default ip address of the platform
- `set testcard` : force to activate the testcard for the platform. It permits to tune the display and show information about the platform, like MAC address and ip address
- `remove testcard` : force to deactivate the testcard for the platform.
- `set default admin login` : force to put the default login and password for web ui
- `activate video hwacceleration` : force to use the hardware video acceleration
- `deactivate video hwacceleration` : force to not use the hardware video acceleration (software decoding)
- `remove upnp` : force to deactivate the upnp daemon for the platform; this patch works only on G2 versions. If you have a G3 version, please use the preference 'innes.webserver.providers.upnp.enabled' instead

Please refer to the release note of each patch for further details.
