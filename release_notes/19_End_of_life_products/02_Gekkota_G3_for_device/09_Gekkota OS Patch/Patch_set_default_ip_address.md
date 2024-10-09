# Patch set default ip address
*RELEASE NOTE*

##`2015-09-14` V3.11.10 (last update)
|              Platform                             |    Patch Install    |
| :------------------------------------------------ | :------------------ |
| SMA300 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-sma300-patch-3.11.10.frm) |
| DMB300 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-dmb300-patch-3.11.10.frm) |
| DMC200 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-dmc200-patch-3.11.10.frm) |
| SMA200 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-sma200-patch-3.11.10.frm) |
| SMT210 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-smt210-patch-3.11.10.frm) |
| SMP200 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-smp200-patch-3.11.10.frm) |
| RMP200 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-rmp200-patch-3.11.10.frm) |
| DME204 | [download](https://github.com/Qeedji/archives/blob/master/downloads/patch-set-default-ip-address/set%20default%20ip%20address-dme204-patch-3.11.10.frm) |


>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Fix an internal feature which could do a bad installation
>##### **FEATURE**
- The patch sets the following parameters :
```
	ip addr = Static
	ip addr = 192.168.0.2
	netmask = 255.255.255.0
	gateway = 192.168.0.6
	gateway = No upnp gateway
```
- There is no uninstall version of the patch
- The patch has to be installed through an usb dongle

>##### **COMPATIBILITIES**
- Gekkota G2 (V2.50.75 or above)
- Gekkota G3
