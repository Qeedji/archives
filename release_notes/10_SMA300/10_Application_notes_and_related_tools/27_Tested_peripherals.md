Olivier,

Voici pour revue le markdown Tested peripherals

# Tested peripherals

#### **SUMMARY** `2020-04-27` (last update)

#### **PERIPHERALS**
|Constructor |Model |Peripheral type |Device Connector| Information  |Compatibility
|:--|:--|:--|:--|:--|:--
|**CHROMECAST** | `chromecast ultra`    | Web media player                  | HDMI-input | Tested resolution: 1920x1080 | Gekkota OS 4.10.18 (or above) for device DMB400 (with a valid HDCP key)
|**PANASONIC**  |`DMP-BDT260`           | Blu-ray disc player                | HDMI-input | Tested resolution: 1920x1080 | Gekkota OS 4.10.18 (or above) for device DMB400 (with a valid HDCP key)
|**DVICO**      |`TVIX5100SH`           | Media player                       | HDMI-input | Tested resolution: 1920x1080                                           | Gekkota OS 4.10.11 (or above) for device DMB400
|**CGV**        |`ETIMO STL-2`          | DVB-T receiver                     | HDMI-input | Tested resolution: 1920x1080                                           | Gekkota OS 4.10.11 (or above) for device DMB400
|**CGV**        |`ETIMO 1T-2`           | DVB-T receiver                     | HDMI-input | Tested resolution: 1920x1080                                           | Gekkota OS 4.10.11 (or above) for device DMB400
|**AXIS**       |`M3045-WV`             | Security camera                    | HDMI-input | Tested resolution: 1920x1080                                           | Gekkota OS 4.10.11 (or above) for device DMB400
|**HD HomeRun** |`HDHR4-2DT`            | DVB-T to HTTP gateway              | Ethernet   | Tested configuration: http streaming                                   | Gekkota OS 4.10.11 (or above) for devices DMB400, SMA300
|**TERACUE**    |`ENC-300-DVI-PORTABLE` | Encoder/Streamer                   | Ethernet   | Tested configuration: HDMI AV stream 1920x1080 50Hz to UDP Streaming   | Gekkota OS 4.10.11 (or above) for device DMB400
|**TERADEK**    |`CUBE-105`             | Encoder/Streamer                   | Ethernet   | Tested configuration: SDI AV stream 1280x720 60Hz to RTSP streaming    | Gekkota 4.10.15 (or above) for device DMB400
|**MATROX**     |`MONARCH HD` | Encoder/Streamer                              | Ethernet   | Tested configuration: HDMI AV stream 1920x1080 50Hz to RTSP Streaming   | Gekkota OS 4.13.12 (or above) for device DMB400/SMA300
|**DAHUA**      |`IPC-HFW2300R-Z`       | Security camera                    | Ethernet | Tested resolution: 1920x1080 60Hz  | tested with the NVR4208-8P-4KS2 / Gekkota OS 4.12.10 (or above) for devices DMB400, SMA300
|**DAHUA**      |`IPC-HFW2300R-Z`       | Security camera                    | Ethernet | Tested resolution: 1280x720 25Hz  | tested with the NVR4208-8P-4KS2 / Gekkota OS 4.12.10 (or above) for device DME204
|**DAHUA**      |`NVR4208-8P-4KS2`      | Network video recorder, 8 channels | Ethernet | Tested configuration: RTSP Live streaming with authentication |  Gekkota OS 4.12.10 (or above) for devices DMB400, SMA300, DME204
|**Raspberry**  |`Pi 3 Model B+ & DVB TV µHAT` | DVB-T to UDP gateway        | Ethernet | Tested configuration: UDP streaming, multicast, 1 stream | Gekkota OS 4.12.10 (or above) for device DMB400
|**Raspberry**  |`Pi 4 Model B  & DVB TV µHAT` | DVB-T to UDP gateway        | Ethernet | Tested configuration: UDP streaming, multicast, 2 streams on the same multiplex | Gekkota OS 4.12.10 (or above) for device DMB400
|**Mediastar**  | `783 DVB-T/T2 LAN-Caster` | DVB-T to UDP gateway           | Ethernet | Tested configuration: UDP streaming, multicast, 1 stream | Gekkota OS 4.12.12 (or above) for device DMB400
|**TP-LINK**  | `TL-T1500G` | 802.1X switch | Ethernet | Tested configuration: WPA-Enterprise, WPA2-Enterprise, multicast, FreeRadius server | Gekkota OS 4.13.10 (or above) for devices DMB400, SMA300, DME204
|**TP-LINK**  | `TL-EAP225` | 802.1X switch | Ethernet | Tested configuration: WPA-Enterprise, WPA2-Enterprise, multicast, FreeRadius server | Gekkota OS 4.13.10 (or above) for devices DMB400, SMA300, SMT210, SMH300
|**EURECAM**  | `COMPTIPIX 3D` | Presence sensor | Ethernet | Tested configuration: Occupancy | Gekkota OS 4.13.10 (or above) for device SMT210
|**QEEDJI**  | `USB to WPAN adapter` | USB to WPAN adapter | USB | Tested configuration: key code reception through WPAN | Gekkota OS 4.13.11 (or above) for device SMT210, Gekkota OS 4.13.10 (or above) for devices DMB400, SMA300
#### **INFORMATION**
- About HDMI-Input
    - To know the HDMI-input usage conditions, refer to DMB400 release note
    - The peripherals HDMI-input with HDCP activated are not yet supported
        - note that, by example, HDCP is often activated on DVD player
- About the `HDHR4-2DT DVB-T to HTTP streamer`
    - Connect to the streamer Web interface and launch ```Channel Lineup``` / ```Detect channels``` then get the ```<channel number>``` of the channel to view
    - Play the url:
        - ```http://<IP_adress>```:5004/auto/v```<channel number>```
    - In case the signal is too low, a message *video can't be played because the file is corrupted* is displayed. After the signal comes back, the video is not displayed again. You need to publish again or play again the url
- About the `TERADEK CUBE-105 Encoder/streamer`
    - TERADEK CUBE-105 Encoder/streamer user guide 001A/EN [Download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/Teradec-Cube105-configuration_001A_en.pdf)
- About the `TERACUE ENC-300-DVI-PORTABLE`
    - TERACUE Encoder/streamer user guide 001A/EN [Download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/teracue_encoder_configuration-001A_en.pdf)
- About the `DAHUA IPC-HFW2300R-Z`, launch the RTSP URL containing the login/password for the RTSP authentication
    - ```rtsp://<user>:<password>@<nvr4208_ip_addr>:554/cam/realmonitor?channel=<m>&subtype=<n>```
        - with ```<m>```: for ethernet input <m> of the 8 possible video channels
        - with ```<n>```: ```0``` to play the main stream (default), ```1``` to play the secondary stream
    - `DAHUA IPC-HFW2300R-Z versus DME204`
        - Warning: in case several clients are playing the same RTSP channel, it is recommended to not install the DME204 behind cascaded switchs, because some of them may prevent to receive the RTSP properly. To work around, install the DME204 close to the network head.
- About the `Pi 4 Model B  & DVB TV µHAT`
    - Waiting that TVheadend is supporting officially the DVB-T to UDP gateway feature, Innes is proposing a temporary software solution [TVheadend_4.3-InnesPatched1](https://www.innes.pro/en/support/index.php?Third_part_documentation_and_tools/TVHeadend_4.3-Innespatched1) which is supporting it.
- About the `Mediastar 783 DVB-T/T2 LAN-Caster`
    - Mediastar 783 DVB-T/T2 LAN-Caster 001A/EN [Download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/783-DVB-T-T2-LAN-Caster-configuration.pdf)
- About the `TP-LINK TL-EAP225`
    - TP-LINK TL-EAP225 WPA-Enterprise configuration 001A/EN) [Download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/tl_eap225-802_1X-configuration-001A_en.pdf)
- About the `TP-LINK TL-T1500G`
    - TP-LINK TL-T1500G 802.1X configuration 001A/EN [Download](https://github.com/Qeedji/archives/blob/master/downloads/third-part-tools/tl_t1500g-802_1X-configuration-001A_en.pdf)
- About the `USB to WPAN adapter`
    - set the appropriate value for the `innes.adapters.serial.uart_1.syspath` user preference in the Qeedji Gekkota OS device:
| Qeedji device | default value | value to support USB to WPAN peripheral
|:--|:--|:--
| Gekkkota OS 4.13.11 for device SMT210  | /dev/ttyUSB0  | /dev/ttyACM0
| Gekkkota OS 4.13.10 for device SMA300  | /dev/ttyUSB0  | /dev/ttyACM0
| Gekkkota OS 4.13.10 for device DMB400  | /dev/ttyAS1   | /dev/ttyACM0
    - For further information about this Qeedji USB to WPAN peripheral, contact support@qeedji.tech
